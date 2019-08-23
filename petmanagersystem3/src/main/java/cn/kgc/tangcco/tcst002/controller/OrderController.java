package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Order;
import cn.kgc.tangcco.tcst002.service.order.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Resource
	private OrderService orderService = null;

	@RequestMapping("/query.html")
	public String query(String petName, String employee_Name, Integer currentPageNo, Integer pageSize, Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=6;
		}
		PageInfo<Order> pageInfo = orderService.query(petName, employee_Name, currentPageNo, pageSize);
		model.addAttribute("petName", petName);
		model.addAttribute("employee_Name", employee_Name);
		model.addAttribute("pageInfo", pageInfo);
		return "order";
	}
	@ResponseBody
	@RequestMapping("/jieSuan")
	public Object jieSuan(Integer id,Integer customerId,Double money) {
		int i = orderService.updateBalance(money, customerId);
		if(i>0) {
			int j =orderService.jieSuanStatus(id);
			return JSON.toJSONString(j);
		}else {
			return JSON.toJSONString(0);
		}
	}

}
