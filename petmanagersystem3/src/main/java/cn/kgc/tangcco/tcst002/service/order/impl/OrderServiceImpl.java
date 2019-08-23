package cn.kgc.tangcco.tcst002.service.order.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.dao.customer.CustomerMapper;
import cn.kgc.tangcco.tcst002.dao.order.OrderMapper;
import cn.kgc.tangcco.tcst002.pojo.Order;
import cn.kgc.tangcco.tcst002.service.order.OrderService;

@Transactional(propagation = Propagation.REQUIRED)
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Resource
	private OrderMapper orderMapper = null;
	@Resource
	private CustomerMapper customerMapper = null;

	@Override
	public PageInfo<Order> query(String petName, String employee_Name, Integer currentPageNo, Integer pageSize) {
		PageHelper.startPage(currentPageNo, pageSize);
		PageInfo<Order> pageInfo = new PageInfo<Order>(orderMapper.queryAllInfo(petName, employee_Name));
		return pageInfo;
	}

	@Override
	public int jieSuanStatus(Integer id) {
		return orderMapper.jieSuanStatus(id);
	}

	@Override
	public int updateBalance(Double money, Integer id) {
		double money1=money;
		double balance = customerMapper.queryBalance(id);
		int isCustomerMember = customerMapper.queryCustomerMember(id);
		if(isCustomerMember==1) {
			money=money*0.9;
		}else if(isCustomerMember==2) {
			money=money*0.8;
		}else if(isCustomerMember==3) {
			money=money*0.75;
		}
		if (balance - money >= 0) {
			int i = orderMapper.updateBalance(money, id);
			int integral=(int)(money1*0.1);
			customerMapper.updateJiFen(id, integral);
			return i;
		} else {
			return 0;
		}
	}

}
