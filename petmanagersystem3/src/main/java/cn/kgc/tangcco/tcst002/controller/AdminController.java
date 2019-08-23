package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Admin;
import cn.kgc.tangcco.tcst002.service.admin.AdminService;
import cn.kgc.tangcco.tcst002.util.MD5Util;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Resource
	private AdminService adminService = null;

	@ResponseBody
	@RequestMapping("insertInfo")
	public Object insertInfo(Admin admin) {
		admin.setAdministrators_Password(MD5Util.md5Hex(admin.getAdministrators_Password()));
		return JSON.toJSONString(adminService.insertInfo(admin));
	}

	@RequestMapping("/query.html")
	public String query(String administrators_Name, String administrators_Password, Integer currentPageNo,
			Integer pageSize,Model model) {
		if(currentPageNo==null) {
			currentPageNo=1;
		}
		if(pageSize==null) {
			pageSize=5;
		}
		PageInfo<Admin> pageInfo = adminService.query(administrators_Name, administrators_Password, currentPageNo, pageSize);
		model.addAttribute("administrators_Name", administrators_Name);
		model.addAttribute("administrators_Password", administrators_Password);
		model.addAttribute("pageInfo", pageInfo);
		return "administrators_management";
	}
	@ResponseBody
	@RequestMapping(value="/queryInfoById",produces= {"application/json;charset=UTF-8"})
	public Object queryInfoById(Integer administrators_Num) {
		return JSON.toJSONString(adminService.queryInfoById(administrators_Num));
	}
	
	@ResponseBody
	@RequestMapping("/updateInfo")
	public Object updateInf(Admin admin) {
		return JSON.toJSONString(adminService.updateInfo(admin));
	}
	@ResponseBody
	@RequestMapping("/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(adminService.removeInfo(id));
	}
	@ResponseBody
	@RequestMapping("/login")
	public Object login(String administrators_Name,String administrators_Password,HttpSession session) {
		administrators_Password=MD5Util.md5Hex(administrators_Password);
		String adminName = adminService.isLogin(administrators_Name, administrators_Password);
		if(adminName!=null && adminName!="") {
			session.setAttribute("adminName", adminName);
			return JSON.toJSONString(true);
		}else {
			return JSON.toJSONString(false);
		}
	}

}
