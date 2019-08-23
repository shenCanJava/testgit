package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Pet;
import cn.kgc.tangcco.tcst002.service.pet.PetService;

@Controller
@RequestMapping("/pet")
public class PetController {
	@Resource
	private PetService petService=null;
	@ResponseBody
	@RequestMapping("/insertInfo")
	public Object insertInfo(Pet pet) {
		return JSON.toJSONString(petService.insertInfo(pet));
	}
	@RequestMapping("/query.html")
	public String query(String petName, String customerName, Integer currentPageNo, Integer pageSize,Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=6;
		}
		PageInfo<Pet> pageInfo = petService.query(petName, customerName, currentPageNo, pageSize);
		model.addAttribute("petName", petName);
		model.addAttribute("customerName", customerName);
		model.addAttribute("pageInfo", pageInfo);
		return "petsearch";
	}
	
	@ResponseBody
	@RequestMapping("/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(petService.removeInfo(id));
	}
}
