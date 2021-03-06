package com.ilifeeasy.dao.test;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class MediocreExecJavac {

	public static void main(String[] args) {
		 try {
	            Runtime rt = Runtime.getRuntime();
	            Process proc = rt.exec("javac -version");
	            InputStream stderr = proc.getErrorStream();
	            InputStreamReader isr = new InputStreamReader(stderr,"GB2312");
	            BufferedReader br = new BufferedReader(isr);
	            String line = null;
	            while ((line = br.readLine()) != null)
	                System.out.println(line);
	            System.out.println("");
	            int exitVal = proc.waitFor();
	            System.out.println("Process exitValue: " + exitVal);
	        } catch (Throwable t) {
	            t.printStackTrace();
	        }
	}

}
