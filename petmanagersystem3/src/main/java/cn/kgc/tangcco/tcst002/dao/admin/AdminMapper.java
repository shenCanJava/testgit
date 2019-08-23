package cn.kgc.tangcco.tcst002.dao.admin;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.Admin;

public interface AdminMapper {
	// 新增管理员信息
	int insertInfo(Admin admin);

	// 分页查询管理员信息
	List<Admin> queryAllInfo(@Param("name") String administrators_Name,
			@Param("password") String administrators_Password);

	// 根据id查询管理员信息
	Admin queryInfoById(@Param("id") Integer administrators_Num);

	// 修改管理员信息
	int updateInfo(Admin admin);

	// 删除管理员信息
	int removeInfo(@Param("id") Integer administrators_Num);

	// 登录
	String isLogin(@Param("administrators_Name") String administrators_Name,
			@Param("administrators_Password") String administrators_Password);

}
