package com.ilifeeasy.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class GeneratorKey {
	 private static final long ONE_STEP = 10;
	    private static final Lock LOCK = new ReentrantLock();
	    private static final SimpleDateFormat format=new SimpleDateFormat("yyyyMMddHHmmssSSS");
	    private static long lastTime = Long.parseLong(format.format(new Date()));//System.currentTimeMillis();
	    private static short lastCount = 0;
	    private static int count = 0;

	    @SuppressWarnings("finally")
	    public static String nextId() {
	        LOCK.lock();
	        try {
	            if (lastCount == ONE_STEP) {
	                boolean done = false;
	                while (!done) {
	                    long now = Long.parseLong(format.format(new Date()));//System.currentTimeMillis();
	                    if (now == lastTime) {
	                        try {
	                            Thread.currentThread();
	                            Thread.sleep(1);
	                        } catch (java.lang.InterruptedException e) {
	                        }
	                        continue;
	                    } else {
	                        lastTime = now;
	                        lastCount = 0;
	                        done = true;
	                    }
	                }
	            }
	            count = lastCount++;
	        }
	        finally 
	        {
	            LOCK.unlock();
	            return lastTime+""+String.format("%03d",count); 
	        }
	    }
}
