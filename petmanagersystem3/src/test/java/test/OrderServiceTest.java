package test;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Order;
import cn.kgc.tangcco.tcst002.service.order.OrderService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class OrderServiceTest {
	@Resource
	private OrderService orderService=null;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		PageInfo<Order> pageInfo= orderService.query("", "", 1, 10);
		for (Order o : pageInfo.getList()) {
			System.out.println(o.toString());
		}
	}

}
