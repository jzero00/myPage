package com.mypage.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/*")
public class MainController {

	@RequestMapping("")
	public ModelAndView init(ModelAndView mnv) {
		String url = "jsp/home";
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("main")
	public ModelAndView main(ModelAndView mnv) {
		String url = "jsp/main/main";
		mnv.setViewName(url);
		
/*		try {
			String property = "";
			
			Properties prop = new Properties();
			
			FileInputStream fis = new FileInputStream(property);
			
			prop.load(new java.io.BufferedInputStream(fis));
			
			String msg = prop.getProperty("menu_1");
			
			System.out.println(msg);			
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		
		return mnv;
	}
}
