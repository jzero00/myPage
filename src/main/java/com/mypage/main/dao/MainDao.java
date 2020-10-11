package com.mypage.main.dao;

import java.sql.SQLException;
import java.util.List;

public interface MainDao {

	public List<?> selectMainMenu() throws SQLException;
	
	public List<?> selectSubMenu() throws SQLException;
	
	public List<?> selectCategory() throws SQLException;
}
