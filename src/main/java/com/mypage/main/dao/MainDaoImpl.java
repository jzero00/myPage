package com.mypage.main.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MainDao")
public class MainDaoImpl implements MainDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<?> selectMainMenu() throws SQLException {
		List<?> menuList = null;
		menuList = sqlSession.selectList("Menu-Mapper.select_top_menu");
		return menuList;
	}

	@Override
	public List<?> selectSubMenu() throws SQLException {
		List<?> menuList = null;
		menuList = sqlSession.selectList("Menu-Mapper.select_sub_menu");
		return menuList;
	}

}
