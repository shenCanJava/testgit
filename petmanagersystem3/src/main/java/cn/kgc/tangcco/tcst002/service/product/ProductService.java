package cn.kgc.tangcco.tcst002.service.product;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Product;

public interface ProductService {
	// 查询商品信息
	List<Product> queryAllInfo(@Param("productName") String productName);

	// 上架
	int updateInfoShang(@Param("id") Integer id);

	// 下架
	int updateInfoXia(@Param("id") Integer id);

	// 产品入库
	int insertInfo(Product product);

	// 查看库存情况
	PageInfo<Product> countSearch(String productName, Integer currentPageNo, Integer pageSize);

	// 删除库存信息
	int removeInfo(@Param("id") Integer id);
}
