package com.mypage.board.web;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mypage.board.service.BoardService;
import com.mypage.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/*/*")
	public ModelAndView getBoardList(ModelAndView mnv, HttpServletRequest req) {
		String url = "jsp/board/board_list";
		List<BoardVO> boardList = null;
		
		String req_url = req.getRequestURI().substring(7);
		System.out.println(req_url);
		
		
		try {
			boardList = (List<BoardVO>) boardService.getBoardListByUrl(req_url);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(boardList.get(0).getWriter());
		mnv.setViewName(url);
		mnv.addObject("boardList", boardList);
		mnv.addObject("req_url", req_url);
		
		return mnv;
	}
	
}
