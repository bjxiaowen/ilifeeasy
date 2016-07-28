package com.ilifeeasy.utils;

public enum MyUserValidation {
	
	LOGIN(0,"登录信息为空！！！"),
	NAMEPASS(1,"用户名或密码为空！！！"),
	NAME(2,"用户名不存在！！！"),
	PASS(3,"用户名或密码错误！！！"),
	EMAILNOTEXIST(4,"注册邮箱不存在"),
	emailisEmpty(5,"邮箱为空！！！");
	
	private String messages;
	
	private int error;
	
	private MyUserValidation(int error,String messages){
		this.error=error;
		this.messages=messages;
	}
	
	// 普通方法
    public static String getMessages(int index) {
        for (MyUserValidation c : MyUserValidation.values()) {
            if (c.getError() == index) {
                return c.messages;
            }
        }
        return null;
    }

	public String getMessages() {
		return messages;
	}

	public void setMessages(String messages) {
		this.messages = messages;
	}

	public int getError() {
		return error;
	}

	public void setError(int error) {
		this.error = error;
	}
}
