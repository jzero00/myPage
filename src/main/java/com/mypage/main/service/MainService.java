package com.mypage.main.service;

import java.sql.SQLException;
import java.util.List;

public interface MainService {

	/**
	 * Code Level이 0인 메뉴를 가져온다. 
	 */
	public List<?> getCodeLevel() throws SQLException;
}
