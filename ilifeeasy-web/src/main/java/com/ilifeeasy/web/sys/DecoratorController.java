package com.ilifeeasy.web.sys;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "sys")
public class DecoratorController {
	@RequestMapping(value = "/demo")
	public String list(HttpServletRequest request) {
		return "/sys/demo";
	}
}
