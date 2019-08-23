package cn.kgc.tangcco.tcst002.service.pet;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Pet;

public interface PetService {
	// 宠物信息录入
	int insertInfo(Pet pet);

	// 分页查询宠物信息
	PageInfo<Pet> query(String petName, String customerName, Integer currentPageNo, Integer pageSize);

	// 删除宠物信息
	int removeInfo(@Param("id") Integer id);
}
