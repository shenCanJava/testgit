package cn.kgc.tangcco.tcst002.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Employee;
import cn.kgc.tangcco.tcst002.service.employee.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Resource
	private EmployeeService employeeService = null;

	@ResponseBody
	@RequestMapping("/insertInfo")
	public Object insertInfo(Employee employee) {
		return JSON.toJSONString(employeeService.insertInfo(employee));
	}

	@RequestMapping("/query.html")
	public String query(String employee_Name, String employee_Id_Number, Integer currentPageNo, Integer pageSize,
			Model model) {
		if (currentPageNo == null) {
			currentPageNo = 1;
		}
		if (pageSize == null) {
			pageSize = 6;
		}
		PageInfo<Employee> pageInfo = employeeService.query(employee_Name, employee_Id_Number, currentPageNo, pageSize);
		model.addAttribute("employee_Name", employee_Name);
		model.addAttribute("employee_Id_Number", employee_Id_Number);
		model.addAttribute("pageInfo", pageInfo);
		return "staffsearch";
	}

	@RequestMapping(value = "/queryInfoById", produces = { "application/json;charset=UTF-8" })
	public String queryInfoById(Integer id,Model model) {
		Employee e = employeeService.queryInfoById(id);
		model.addAttribute("e", e);
		return "update";
	}
	@ResponseBody
	@RequestMapping("/updateInfo")
	public Object updateInfo(Employee employee) {
		return JSON.toJSONString(employeeService.updateInfo(employee));
	}
	
	@RequestMapping("/queryXiangQing.html")
	public String queryXiangQing(Integer id,Model model) {
		Employee e = employeeService.queryInfoById(id);
		model.addAttribute("ee", e);
		return "search";
	}
	@ResponseBody
	@RequestMapping("/removeInfo")
	public Object removeInfo(Integer id) {
		return JSON.toJSONString(employeeService.removeInfo(id));
	}

}
