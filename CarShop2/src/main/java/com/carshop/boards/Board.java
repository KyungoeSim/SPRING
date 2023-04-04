package com.carshop.boards;

public class Board {
	
	private int bid, bview, blike, bhate;
	
	private String bpid, btitle, bcontent, bwriter, bdate;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getBview() {
		return bview;
	}

	public void setBview(int bview) {
		this.bview = bview;
	}

	public int getBlike() {
		return blike;
	}

	public void setBlike(int blike) {
		this.blike = blike;
	}

	public int getBhate() {
		return bhate;
	}

	public void setBhate(int bhate) {
		this.bhate = bhate;
	}

	public String getBpid() {
		return bpid;
	}

	public void setBpid(String bpid) {
		this.bpid = bpid;
	}

	public String getBtitle() {
		return btitle;
	}

	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBwriter() {
		return bwriter;
	}

	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}



	public Board() {

	}

	public Board(int bid, int bview, int blike, int bhate, String bpid, String btitle, String bcontent, String bwriter,
			String bdate) {

		this.bid = bid;
		this.bview = bview;
		this.blike = blike;
		this.bhate = bhate;
		this.bpid = bpid;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bwriter = bwriter;
		this.bdate = bdate;
	}

	
	

}
