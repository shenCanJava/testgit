package cn.kgc.tangcco.tcst002.service.immune;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Immune;

public interface ImmuneService {
	// 免疫单号分页查询
	PageInfo<Immune> query(String petName, String customerName, Integer currentPageNo, Integer pageSize);

	// 删除免疫单号
	int removeInfo(@Param("id") Integer id);
}
