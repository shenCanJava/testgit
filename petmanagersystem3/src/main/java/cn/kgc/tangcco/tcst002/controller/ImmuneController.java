package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Immune;
import cn.kgc.tangcco.tcst002.service.immune.ImmuneService;

@Controller
@RequestMapping("/immune")
public class ImmuneController {
	@Resource
	private ImmuneService immuneService=null;

	@RequestMapping("/query.html")
	public String query(String petName, String customerName, Integer currentPageNo, Integer pageSize,Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=6;
		}
		PageInfo<Immune> pageInfo = immuneService.query(petName, customerName, currentPageNo, pageSize);
		model.addAttribute("petName", petName);
		model.addAttribute("customerName", customerName);
		model.addAttribute("pageInfo", pageInfo);
		System.err.println(pageInfo.toString());
		return "immune";
	}
	@ResponseBody
	@RequestMapping("/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(immuneService.removeInfo(id));
	}

}
