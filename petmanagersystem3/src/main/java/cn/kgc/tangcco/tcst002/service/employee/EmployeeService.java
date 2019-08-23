package cn.kgc.tangcco.tcst002.service.employee;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Employee;

public interface EmployeeService {
	// 录入员工信息
	int insertInfo(Employee employee);

	// 分页查询员工信息
	PageInfo<Employee> query(String employee_Name, String employee_Id_Number, Integer currentPageNo, Integer pageSize);

	// 根据id查询员工信息
	Employee queryInfoById(@Param("id") Integer id);

	// 修改员工信息
	int updateInfo(Employee employee);

	// 删除员工信息
	int removeInfo(@Param("id") Integer id);
}
