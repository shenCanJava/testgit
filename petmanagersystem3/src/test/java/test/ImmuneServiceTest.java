package test;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.github.pagehelper.PageInfo;

import cn.kgc.tangcco.tcst002.pojo.Immune;
import cn.kgc.tangcco.tcst002.service.immune.ImmuneService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class ImmuneServiceTest {
	@Resource
	private ImmuneService immuneService=null;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		PageInfo<Immune> pageInfo=immuneService.query("包子", "qq", 1, 3);
		System.out.println(pageInfo.getPageNum());
		System.out.println(pageInfo.getPages());
		for (Immune im : pageInfo.getList()) {
			System.out.println(im.toString());
		}
		}

}
