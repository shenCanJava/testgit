package cn.kgc.tangcco.tcst002.service.employee.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.employee.EmployeeMapper;
import cn.kgc.tangcco.tcst002.pojo.Employee;
import cn.kgc.tangcco.tcst002.service.employee.EmployeeService;

@Transactional(propagation = Propagation.REQUIRED)
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {
	@Resource
	private EmployeeMapper employeeMapper = null;

	@Override
	public int insertInfo(Employee employee) {
		return employeeMapper.insertInfo(employee);
	}

	@Override
	public PageInfo<Employee> query(String employee_Name, String employee_Id_Number, Integer currentPageNo,
			Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<Employee> pageInfo = new PageInfo<Employee>(
				employeeMapper.queryAllInfo(employee_Name, employee_Id_Number));
		return pageInfo;
	}

	@Override
	public Employee queryInfoById(Integer id) {
		return employeeMapper.queryInfoById(id);
	}

	@Override
	public int updateInfo(Employee employee) {
		return employeeMapper.updateInfo(employee);
	}

	@Override
	public int removeInfo(Integer id) {
		return employeeMapper.removeInfo(id);
	}

}
