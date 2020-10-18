package com.mypage.board.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mypage.board.dao.BoardDao;

@Service("BoardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
		
	@Override
	public List<?> getBoardListByUrl (String url) throws SQLException {
		return boardDao.selectBoardListByUrl(url);
	}

}
