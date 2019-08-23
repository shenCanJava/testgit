package cn.kgc.tangcco.tcst002.service.immune.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.immune.ImmuneMapper;
import cn.kgc.tangcco.tcst002.pojo.Immune;
import cn.kgc.tangcco.tcst002.service.immune.ImmuneService;
@Transactional(propagation=Propagation.REQUIRED)
@Service("immnueService")
public class ImmuneServiceImpl implements ImmuneService {
	@Resource
	private ImmuneMapper immuneMapper=null;

	@Override
	public PageInfo<Immune> query(String petName, String customerName, Integer currentPageNo, Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<Immune> pageInfo=new PageInfo<Immune>(immuneMapper.queryAllInfo(petName, customerName));
		return pageInfo;
	}

	@Override
	public int removeInfo(Integer id) {
		return immuneMapper.removeInfo(id);
	}

}
