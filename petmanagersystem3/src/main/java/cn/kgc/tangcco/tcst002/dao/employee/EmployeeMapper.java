package cn.kgc.tangcco.tcst002.dao.employee;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.Employee;

public interface EmployeeMapper {
	//录入员工信息
	int insertInfo(Employee employee);
	
	//分页查询员工信息
	List<Employee> queryAllInfo(@Param("employee_Name")String employee_Name,@Param("employee_Id_Number")String employee_Id_Number);
	//根据id查询员工信息
	Employee queryInfoById(@Param("id")Integer id);
	
	//修改员工信息
	int updateInfo(Employee employee);
	
	//删除员工信息
	int removeInfo(@Param("id")Integer id);
	
}
