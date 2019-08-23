package cn.kgc.tangcco.tcst002.service.customer;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Customer;

public interface CustomerService {
	// 客户信息录入
	int inserInfo(Customer customer);

	// 客户信息分页查询
	PageInfo<Customer> query(Integer currentPageNo, Integer pageSize, String customerName);

	// 查询单个客户信息
	Customer queryEntityInfo(@Param("id") Integer id);

	// 修改客户信息
	int updateInfo(Customer customer);

	// 删除单个客户信息
	int removeInfo(@Param("id") Integer id);

	// 批量删除客户信息
	int removeInfoByIds(Integer ids[]);
	
	//查询全部宠物主人编号和姓名
		List<Customer> queryInfo();
}
