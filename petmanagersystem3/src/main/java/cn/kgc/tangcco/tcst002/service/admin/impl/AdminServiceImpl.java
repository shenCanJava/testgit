package cn.kgc.tangcco.tcst002.service.admin.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.admin.AdminMapper;
import cn.kgc.tangcco.tcst002.pojo.Admin;
import cn.kgc.tangcco.tcst002.service.admin.AdminService;
@Transactional(propagation=Propagation.REQUIRED)
@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Resource
	private AdminMapper adminMapper=null;
	@Override
	public int insertInfo(Admin admin) {
		return adminMapper.insertInfo(admin);
	}
	@Override
	public PageInfo<Admin> query(String administrators_Name, String administrators_Password, Integer currentPageNo,
			Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<Admin> pageInfo = new PageInfo<Admin>(adminMapper.queryAllInfo(administrators_Name, administrators_Password));
		return pageInfo;
	}
	@Override
	public Admin queryInfoById(Integer administrators_Num) {
		return adminMapper.queryInfoById(administrators_Num);
	}
	@Override
	public int updateInfo(Admin admin) {
		return adminMapper.updateInfo(admin);
	}
	@Override
	public int removeInfo(Integer administrators_Num) {
		return adminMapper.removeInfo(administrators_Num);
	}
	@Override
	public String isLogin(String administrators_Name, String administrators_Password) {
		return adminMapper.isLogin(administrators_Name, administrators_Password);
	}

}
