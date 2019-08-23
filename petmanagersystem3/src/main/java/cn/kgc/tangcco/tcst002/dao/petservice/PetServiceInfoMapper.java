package cn.kgc.tangcco.tcst002.dao.petservice;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.PetServiceInfo;

public interface PetServiceInfoMapper {
	//新增宠物服务
	int insertInfo(PetServiceInfo psi);
	//分页查询宠物服务信息
	List<PetServiceInfo> queryAllInfo();
	
	//删除宠物服务信息
	int removeInfo(@Param("id")Integer id);
}
