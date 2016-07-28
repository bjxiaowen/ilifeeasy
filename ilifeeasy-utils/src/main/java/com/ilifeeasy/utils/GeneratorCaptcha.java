package com.ilifeeasy.utils;

public class GeneratorCaptcha {
	public static int getCaptcha(){
		int random=(int)(Math.random()*900000)+100000;
		return random;
	}
}
