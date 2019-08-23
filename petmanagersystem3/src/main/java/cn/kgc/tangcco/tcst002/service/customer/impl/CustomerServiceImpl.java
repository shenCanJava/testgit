package cn.kgc.tangcco.tcst002.service.customer.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.customer.CustomerMapper;
import cn.kgc.tangcco.tcst002.pojo.Customer;
import cn.kgc.tangcco.tcst002.service.customer.CustomerService;
@Service("customerService")
@Transactional(propagation=Propagation.REQUIRED)
public class CustomerServiceImpl implements CustomerService{
	@Resource
	private CustomerMapper customerMapper;
	
	@Override
	public int inserInfo(Customer customer) {
		return customerMapper.inserInfo(customer);
	}

	@Override
	public PageInfo<Customer> query(Integer currentPageNo, Integer pageSize,String customerName) {
		PageHelper.startPage(currentPageNo, pageSize);
		List<Customer> list = customerMapper.queryAllInfo(customerName);
		PageInfo<Customer> pageInfo=new PageInfo<Customer>(list);
		return pageInfo;
	}

	@Override
	public Customer queryEntityInfo(Integer id) {
		return customerMapper.queryEntityInfo(id);
	}

	@Override
	public int updateInfo(Customer customer) {
		return customerMapper.updateInfo(customer);
	}

	@Override
	public int removeInfo(Integer id) {
		return customerMapper.removeInfo(id);
	}

	@Override
	public int removeInfoByIds(Integer[] ids) {
		return customerMapper.removeInfoByIds(ids);
	}

	@Override
	public List<Customer> queryInfo() {
		return customerMapper.queryInfo();
	}

}
