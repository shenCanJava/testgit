package cn.kgc.tangcco.tcst002.service.product.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.product.ProductMapper;
import cn.kgc.tangcco.tcst002.pojo.Product;
import cn.kgc.tangcco.tcst002.service.product.ProductService;

@Transactional(propagation = Propagation.REQUIRED)
@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Resource
	private ProductMapper productMapper = null;

	@Override
	public List<Product> queryAllInfo(String productName) {
		return productMapper.queryAllInfo(productName);
	}

	@Override
	public int updateInfoShang(Integer id) {
		return productMapper.updateInfoShang(id);
	}

	@Override
	public int updateInfoXia(Integer id) {
		return productMapper.updateInfoXia(id);
	}

	@Override
	public int insertInfo(Product product) {
		return productMapper.insertInfo(product);
	}

	@Override
	public PageInfo<Product> countSearch(String productName, Integer currentPageNo, Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<Product> pageInfo = new PageInfo<Product>(productMapper.queryAllInfo(productName));
		return pageInfo;
	}

	@Override
	public int removeInfo(Integer id) {
		return productMapper.removeInfo(id);
	}

}
