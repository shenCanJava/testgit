package cn.kgc.tangcco.tcst002.dao.immune;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.Immune;

public interface ImmuneMapper {
	// 查询免疫单号
	List<Immune> queryAllInfo(@Param("petName") String petName, @Param("customerName") String customerName);

	// 删除免疫单号
	int removeInfo(@Param("id") Integer id);
}
