package cn.kgc.tangcco.tcst002.dao.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.kgc.tangcco.tcst002.pojo.Order;

public interface OrderMapper {
	// 分页查询订单信息
	List<Order> queryAllInfo(@Param("petName") String petName, @Param("employee_Name") String employee_Name);
	//修改状态
	int jieSuanStatus( @Param("id") Integer id);
	// 结算金额
	int updateBalance(@Param("money") Double money, @Param("id") Integer id);
}
