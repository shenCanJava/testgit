package cn.kgc.tangcco.tcst002.service.order;

import org.apache.ibatis.annotations.Param;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Order;

public interface OrderService {
	// 分页查询订单信息
	PageInfo<Order> query(String petName, String employee_Name, Integer currentPageNo, Integer pageSize);

	// 修改状态
	int jieSuanStatus(@Param("id") Integer id);

	// 结算金额
	int updateBalance(@Param("money") Double money, @Param("id") Integer id);
}
