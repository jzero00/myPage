package com.mypage.main.web;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mypage.main.service.MainServiceImpl;
import com.mypage.vo.MenuVO;

@Controller
@RequestMapping("/*")
public class MainController {
	
	@Autowired
	private MainServiceImpl mainService;
	
	@RequestMapping("")
	public ModelAndView init(ModelAndView mnv) {
		String url = "jsp/home";
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("main")
	public ModelAndView main(ModelAndView mnv) {
		String url = "jsp/main/main";
		List<MenuVO> menu = null;
		List<MenuVO> sub_menu = null;
		
		try {
			menu = (List<MenuVO>) mainService.getTopMenu();
			sub_menu = (List<MenuVO>) mainService.getSubMenu();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		mnv.addObject("menu", menu);
		mnv.addObject("sub_menu", sub_menu);
//		System.out.println(menu.get(0).getCode_level());
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("setting")
	public ModelAndView menuSetting(ModelAndView mnv) {
		String url = "jsp/setting/main";
		
		mnv.setViewName(url);
		
		return mnv;
	}
}
