package cn.kgc.tangcco.tcst002.service.pet.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.pet.PetMapper;
import cn.kgc.tangcco.tcst002.pojo.Pet;
import cn.kgc.tangcco.tcst002.service.pet.PetService;

@Transactional(propagation = Propagation.REQUIRED)
@Service("petService")
public class PetServiceImpl implements PetService {
	@Resource
	private PetMapper petMapper = null;

	@Override
	public int insertInfo(Pet pet) {
		return petMapper.insertInfo(pet);
	}

	@Override
	public PageInfo<Pet> query(String petName, String customerName, Integer currentPageNo, Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<Pet> petInfo = new PageInfo<>(petMapper.queryAllInfo(petName, customerName));
		return petInfo;
	}

	@Override
	public int removeInfo(Integer id) {
		return petMapper.removeInfo(id);
	}

}
