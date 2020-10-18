package com.mypage.board.service;

import java.sql.SQLException;
import java.util.List;

public interface BoardService {

	public List<?> getBoardListByUrl (String url) throws SQLException;
	
}
