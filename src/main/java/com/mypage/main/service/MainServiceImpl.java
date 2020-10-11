package com.mypage.main.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mypage.main.dao.MainDaoImpl;
import com.mypage.vo.MenuVO;

@Service("MainService")
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDaoImpl mainDao;
	
	@Override
	public List<?> getTopMenu() throws SQLException {
		return mainDao.selectMainMenu();
	}

	@Override
	public List<?> getSubMenu() throws SQLException {
		return mainDao.selectSubMenu();
	}

	@Override
	public List<?> getCategory() throws SQLException {
		return mainDao.selectCategory();
	}
	
	

}
