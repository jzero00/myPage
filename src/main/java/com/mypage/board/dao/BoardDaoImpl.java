package com.mypage.board.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("BoardDao")
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<?> selectBoardListByUrl(String url) throws SQLException {
		List<?> boardList = null;
		boardList = sqlSession.selectList("Board-Mapper.selectBoardList",url);
		return boardList;
	}

}
