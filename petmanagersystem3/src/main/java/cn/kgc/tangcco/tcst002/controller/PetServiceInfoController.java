package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.PetServiceInfo;
import cn.kgc.tangcco.tcst002.service.petservice.PetServiceInfoService;

@Controller
@RequestMapping("/petServiceInfo")
public class PetServiceInfoController {
	@Resource
	private PetServiceInfoService psis = null;

	@ResponseBody
	@RequestMapping("/insertInfo")
	public Object insertInfo(PetServiceInfo psi) {
		return JSON.toJSONString(psis.insertInfo(psi));
	}
	@RequestMapping("/query.html")
	public String query(Integer currentPageNo,Integer pageSize,Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=5;
		}
		PageInfo<PetServiceInfo> pageInfo= psis.query(currentPageNo, pageSize);
		System.err.println("pageInfo："+pageInfo.getPages());
		model.addAttribute("pageInfo", pageInfo);
		return "petservice";
	}
	@ResponseBody
	@RequestMapping("/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(psis.removeInfo(id));
	}

}
