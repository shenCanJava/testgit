package test;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Customer;
import cn.kgc.tangcco.tcst002.service.customer.CustomerService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class CustomerServiceTest {
	@Resource
	private CustomerService customerService=null;
	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		PageInfo<Customer> pageInfo = customerService.query(1, 4, "张");
		for (Customer c : pageInfo.getList()) {
			System.out.println(c.toString());
		}
		System.out.println(pageInfo.getPageNum());
		System.out.println(pageInfo.getPages());
	}

}
