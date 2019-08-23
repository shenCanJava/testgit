package cn.kgc.tangcco.tcst002.dao.pet;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.Pet;

public interface PetMapper {
	// 宠物信息录入
	int insertInfo(Pet pet);

	// 分页查询宠物信息
	List<Pet> queryAllInfo(@Param("petName") String petName, @Param("customerName") String customerName);

	// 删除宠物信息
	int removeInfo(@Param("id") Integer id);
}
