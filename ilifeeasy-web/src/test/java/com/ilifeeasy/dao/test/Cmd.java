package com.ilifeeasy.dao.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class Cmd {

	public static void main(String[] args) {
		Runtime rt = Runtime.getRuntime();
		try {
			Process process = rt.exec("ping www.baidu.com");//ping www.baidu.com
			InputStream is = process.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(is,"GB2312"));
			String line;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
			}
			process.waitFor();
			is.close();
			reader.close();
			process.destroy();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
