package com.ilifeeasy.web.sys;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class TestController {

	@RequestMapping(value ="test")
	public String list(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("测试");
		return "test";
	}
}
