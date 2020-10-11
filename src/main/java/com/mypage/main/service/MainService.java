package com.mypage.main.service;

import java.sql.SQLException;
import java.util.List;

public interface MainService {

	/**
	 * Code Level이 0인 메뉴를 가져온다. 
	 */
	public List<?> getTopMenu() throws SQLException;
	
	/**
	 * Code Level이 1인 메뉴를 가져온다. 
	 */
	public List<?> getSubMenu() throws SQLException;

	/**
	 * 카테고리 항목을 가져온다.
	 * @return
	 * @throws SQLException
	 */
	public List<?> getCategory() throws SQLException;
}
