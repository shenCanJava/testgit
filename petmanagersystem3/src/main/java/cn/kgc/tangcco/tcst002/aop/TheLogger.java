package cn.kgc.tangcco.tcst002.aop;

import java.util.Arrays;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;

public class TheLogger {
	private Logger logger = Logger.getLogger(TheLogger.class);
	
	public void before(JoinPoint jp) {
		logger.info("调用" + jp.getTarget() + "的" + jp.getSignature() + "方法，方法参数：" + Arrays.toString(jp.getArgs()));
	}
	public void afterReturning(JoinPoint jp,Object result) {
		logger.info("调用" + jp.getTarget() + "的" + jp.getSignature() + "方法，方法返回值：" + result);
	}
}
