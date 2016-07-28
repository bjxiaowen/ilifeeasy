package com.ilifeeasy.utils;

public enum KeyType {
	
	USER(01,"US"),DOMAIN(02,"DM"),MAJOR(03,"MJ"),COURSE(04,"CU"),ETITLE(05,"ET"),EDETAIL(06,"ED"),EERROR(07,"EE");
    
    private String name;// 成员变量
    
    private int index;
    
    private KeyType(int index,String name) {// 构造方法
        this.name = name;
        this.index = index;
    }

    
    public static String getName(int index) {// 普通方法
        for (KeyType c : KeyType.values()) {
            if (c.getIndex() == index) {
                return c.name;
            }
        }
        return null;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }
}
