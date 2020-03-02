package vo;

import org.springframework.stereotype.Repository;

@Repository
public class PageVO {
	
	//현재 클릭한 페이지 넘버(view단 파라미터)
	private int page;
	
	// 전체 리스트 수(DB 조회)
	private int totalListNum;
	
	// 보여지는 리스트 수 (3 - 테스트)
	private int showListNum;
	
	// 보여지는 페이지 링크 수 (2 - 테스트 )
	private int showPageNum;
	
	// 전체 페이지 수 = (totalListNum - 1) % showListNum
	private int totalPageNum;
	
	// 보여지는 오른쪽 화살표 = showPageNum > totalPageNum 를 넘는다면  rightChar + 1, rightChar>=1 이면 '>' 표시 출력
	private String rightChar;
	
	// 보여지는 왼쪽 화살표  = rightChar 이 클릭 되면  leftChar+1, rightChar+1 / leftChar 이 클릭되면 rightChar-1, leftChar-1
	// leftChar >= 1 이상이면 '<'표시 
	private String leftChar;
	
	private int rightNum;
	private int leftNum;
	
	private int pageStartNum;
	private int pageEndNum;
	
	//DB rownum 
	// startNum = (page-1)*showListNum+1
	// endNum = page * showListNum
	private int listStartNum;
	private int listEndNum;
	

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalListNum() {
		return totalListNum;
	}

	public void setTotalListNum(int totalListNum) {
		this.totalListNum = totalListNum;
	}

	public int getShowListNum() {
		return showListNum;
	}

	public void setShowListNum(int showListNum) {
		this.showListNum = showListNum;
	}

	public int getShowPageNum() {
		return showPageNum;
	}

	public void setShowPageNum(int showPageNum) {
		this.showPageNum = showPageNum;
	}

	public int getTotalPageNum() {
		return totalPageNum;
	}

	public void setTotalPageNum(int totalPageNum) {
		this.totalPageNum = totalPageNum;
	}

	public int getRightNum() {
		return rightNum;
	}

	public void setRightNum(int rightNum) {
		this.rightNum = rightNum;
	}

	public int getLeftNum() {
		return leftNum;
	}

	public void setLeftNum(int leftNum) {
		this.leftNum = leftNum;
	}

	public String getRightChar() {
		return rightChar;
	}

	public void setRightChar(String rightChar) {
		this.rightChar = rightChar;
	}

	public String getLeftChar() {
		return leftChar;
	}

	public void setLeftChar(String leftChar) {
		this.leftChar = leftChar;
	}

	public int getPageStartNum() {
		return pageStartNum;
	}

	public void setPageStartNum(int pageStartNum) {
		this.pageStartNum = pageStartNum;
	}

	public int getPageEndNum() {
		return pageEndNum;
	}

	public void setPageEndNum(int pageEndNum) {
		this.pageEndNum = pageEndNum;
	}

	public int getListStartNum() {
		return listStartNum;
	}

	public void setListStartNum(int listStartNum) {
		this.listStartNum = listStartNum;
	}

	public int getListEndNum() {
		return listEndNum;
	}

	public void setListEndNum(int listEndNum) {
		this.listEndNum = listEndNum;
	}


	
	
	
}
