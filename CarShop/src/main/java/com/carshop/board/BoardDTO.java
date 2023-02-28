package com.carshop.board;

public class BoardDTO {

	private String btitle,bcontent,bautor,bdate;

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

	public String getBautor() {
		return bautor;
	}

	public void setBautor(String bautor) {
		this.bautor = bautor;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public BoardDTO(String btitle, String bcontent, String bautor, String bdate) {
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bautor = bautor;
		this.bdate = bdate;
	}
	
	public BoardDTO() {
		
	}
}
