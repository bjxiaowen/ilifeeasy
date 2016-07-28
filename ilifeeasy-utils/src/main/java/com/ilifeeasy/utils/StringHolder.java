package com.ilifeeasy.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

public class StringHolder {

	/**
	 * md5加密
	 * @param inStr
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String GetMD5Code(String inStr) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(inStr.getBytes());
		byte[] r = md.digest();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < r.length; i++) {
			byte b = r[i];
			sb.append(Character.forDigit((b >> 4 & 0x0F), 16));
			sb.append(Character.forDigit((b & 0x0F), 16));
		}
		return sb.toString();
	}
	
	/**
	 * 获取当前UUID，用做数据关联
	 * 新增表结构请使用此ID替换seq
	 */
	public static String getUUID() {
		UUID uuid = UUID.randomUUID();
		String uuidStr = (uuid.toString()).replaceAll("-", "");
		return uuidStr;
	}
	
	
	/**
	 * 首字母大写
	 * @param name
	 * @return
	 */
    public static String captureName(String name) {
        char[] cs=name.toCharArray();
        cs[0]-=32;
        return String.valueOf(cs);
    }
}
