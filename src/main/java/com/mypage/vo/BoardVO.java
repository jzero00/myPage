package com.mypage.vo;

import java.util.Date;

public class BoardVO {

	private String mcode;
	private int seq;
	private String writer;
	private String title;
	private String content;
	private Date regdate;
	private String visible;
	private int view_cnt;

	public String getMcode() {
		return mcode;
	}

	public void setMcode(String mcode) {
		this.mcode = mcode;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getVisible() {
		return visible;
	}

	public void setVisible(String visible) {
		this.visible = visible;
	}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

}
