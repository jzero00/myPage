package com.mypage.main.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mypage.main.dao.MainDaoImpl;

@Service("MainService")
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDaoImpl mainDao;
	
	@Override
	public List<?> getTopMenu() throws SQLException {
		return mainDao.selectMainMenu();
	}

}
