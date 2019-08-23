package cn.kgc.tangcco.tcst002.util;


import org.apache.commons.codec.digest.DigestUtils;

public class MD5Util {
	//加密
	public static String md5Hex(String value) {
		return DigestUtils.md5Hex(value);
	}
}
