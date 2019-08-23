package cn.kgc.tangcco.tcst002.service.petservice;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.PetServiceInfo;

public interface PetServiceInfoService {
	// 新增宠物服务
	int insertInfo(PetServiceInfo psi);

	// 分页查询宠物服务信息
	PageInfo<PetServiceInfo> query(Integer currentPageNo, Integer pageSize);

	// 删除宠物服务信息
	int removeInfo(@Param("id") Integer id);
}
