package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Customer;
import cn.kgc.tangcco.tcst002.service.customer.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	@Resource
	private CustomerService customerService = null;

	@ResponseBody
	@RequestMapping("/insert")
	public Object insertInfo(Customer customer) {
		return JSON.toJSONString(customerService.inserInfo(customer));
	}
	@RequestMapping(value="/query.html")
	public String queryAllInfo(Integer currentPageNo,Integer pageSize,String customerName,Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=6;
		}
		PageInfo<Customer> pageInfo = customerService.query(currentPageNo, pageSize,customerName);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("customerName", customerName);
		return "customersearch";
	}
	@ResponseBody
	@RequestMapping(value="/queryEntityInfo",produces= {"application/json;charset=UTF-8"})
	public Object queryEntityInfo(Integer id) {
		return JSON.toJSONString(customerService.queryEntityInfo(id));
	}
	@ResponseBody
	@RequestMapping("/updateInfo")
	public Object updateInfo(Customer customer) {
		return JSON.toJSONString(customerService.updateInfo(customer));
	}
	@ResponseBody
	@RequestMapping(value="/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(customerService.removeInfo(id));
	}
	@ResponseBody
	@RequestMapping("/removeInfoByIds")
	public Object removeInfoByIds(Integer ids[]) {
		return JSON.toJSONString(customerService.removeInfoByIds(ids));
	}
	@RequestMapping("/queryInfo.html")
	public String queryInfo(Model model) {
		model.addAttribute("customerInfo", customerService.queryInfo());
		return "pertinput";
	}

}
