package com.mypage.board.dao;

import java.sql.SQLException;
import java.util.List;

public interface BoardDao {

	public List<?> selectBoardListByUrl(String url) throws SQLException;
	
}
