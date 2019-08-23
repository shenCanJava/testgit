package cn.kgc.tangcco.tcst002.service.petservice.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.petservice.PetServiceInfoMapper;
import cn.kgc.tangcco.tcst002.pojo.PetServiceInfo;
import cn.kgc.tangcco.tcst002.service.petservice.PetServiceInfoService;

@Transactional(propagation = Propagation.REQUIRED)
@Service("petServiceInfo")
public class PetServiceInfoServiceImpl implements PetServiceInfoService {
	@Resource
	private PetServiceInfoMapper ptServiceInfoMapper = null;

	@Override
	public int insertInfo(PetServiceInfo psi) {
		return ptServiceInfoMapper.insertInfo(psi);
	}

	@Override
	public PageInfo<PetServiceInfo> query(Integer currentPageNo, Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<PetServiceInfo> pageInfo = new PageInfo<PetServiceInfo>(ptServiceInfoMapper.queryAllInfo());
		return pageInfo;
	}

	@Override
	public int removeInfo(Integer id) {
		return ptServiceInfoMapper.removeInfo(id);
	}

}
