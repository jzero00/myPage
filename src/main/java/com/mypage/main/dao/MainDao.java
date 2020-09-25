package com.mypage.main.dao;

import java.sql.SQLException;
import java.util.List;

public interface MainDao {

	public List<?> selectMainMenu() throws SQLException;
}
