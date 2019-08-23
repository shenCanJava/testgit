package cn.kgc.tangcco.tcst002.dao.customer;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.Customer;

public interface CustomerMapper {
	// 客户信息录入
	int inserInfo(Customer customer);

	// 客户信息查询
	List<Customer> queryAllInfo(@Param("customerName")String customerName);
	
	//查询单个客户信息
	Customer queryEntityInfo(@Param("id")Integer id);
	
	//修改客户信息
	int updateInfo(Customer customer);
	
	//删除单个客户信息
	int removeInfo(@Param("id")Integer id);
	
	//批量删除客户信息
	int removeInfoByIds(Integer ids[]);
	//根据客户编号查询余额
	double queryBalance(@Param("id")Integer id);
	
	//查询全部宠物主人编号和姓名
	List<Customer> queryInfo();
	
	//查询客户是否会员
	int queryCustomerMember(@Param("id")Integer id);
	
	//增加积分
	int updateJiFen(@Param("id")Integer id,@Param("integral")Integer integral);
	
}
