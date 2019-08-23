package cn.kgc.tangcco.tcst002.service.admin;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Admin;

public interface AdminService {
	// 新增管理员信息
	int insertInfo(Admin admin);

	// 分页查询管理员信息
	PageInfo<Admin> query(String administrators_Name, String administrators_Password, Integer currentPageNo,
			Integer pageSize);

	// 根据id查询管理员信息
	Admin queryInfoById(Integer administrators_Num);

	// 修改管理员信息
	int updateInfo(Admin admin);

	// 删除管理员信息
	int removeInfo(@Param("id") Integer administrators_Num);

	// 登录
	String isLogin(@Param("administrators_Name") String administrators_Name,
			@Param("administrators_Password") String administrators_Password);
}
