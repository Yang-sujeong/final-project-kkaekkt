package com.kkaekkt.biz.reservation;

import java.util.List;

import com.kkaekkt.biz.comm.LaundryVO;

public class ReservationListVO {
	private final int PAGES_PER_BLOCK=5;//한 블럭당 들어갈 페이지 개수
	private final int POSTS_PER_PAGE=5;//한 페이지당 보여줄 Post 개수
	private int totalPostCount; //총 Post 개수
	private int totalLastPageNum; // 마지막 페이지 번호
	private int currentPageNum;//현재 페이지 번호 (Default=1)
	private int blockLastPageNum;//한 블럭에서 마지막 페이지 번호  
	private int blockFirstPageNum;//한 블럭에서 첫번째 페이지 번호
	private int rowStartNum; //시작 행 번호 ex) 2페이지 -> 5
	private boolean isPrevExist=false;//이전 페이지가 존재하는가(Default=false)
	private boolean isNextExist;//다음 페이지가 존재하는가
	private boolean isPrevBlockExist=false;//이전 페이지블럭이 존재하는가(Default=false)
	private boolean isNextBlockExist;//다음 페이지블럭이 존재하는가
	
	private int mno;//회원번호
	private int bno;//업체번호
	private int state;//작업 상태 : 1.세탁 중 2.세탁 완료 3.전달 완료 4.취소
	private int laundryType; //품목별 1.일반의류 2.와이셔츠 3.이불 4.운동화 5.가죽모피 6.명품가방 7.아웃도어 8.기타
	private int order; // 정렬 : 1.주문번호 순  2.남은일자 순
	private String search; //검색어
	private int searchOption; // 1.이름   2.주문번호 조회
	private int listType; //1.일반 조회   2.품목별 조회   3.주문번호별-처리중 조회  4.주문번호별-완료목록 조회
	private List<ReservationVO> rsvListRno; // 주문번호별 리스트
	private List<LaundryVO> rsvListLno; // 품목별 리스트
	
	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getListType() {
		return listType;
	}

	public void setListType(int listType) {
		this.listType = listType;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getLaundryType() {
		return laundryType;
	}

	public void setLaundryType(int laundryType) {
		this.laundryType = laundryType;
	}

	public int getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(int searchOption) {
		this.searchOption = searchOption;
	}
	public List<ReservationVO> getRsvListRno() {
		return rsvListRno;
	}
	public void setRsvListRno(List<ReservationVO> rsvListRno) {
		this.rsvListRno = rsvListRno;
	}
	public List<LaundryVO> getRsvListLno() {
		return rsvListLno;
	}

	public void setRsvListLno(List<LaundryVO> rsvListLno) {
		this.rsvListLno = rsvListLno;
	}

	public int getTotalPostCount() {
		return totalPostCount;
	}

	public ReservationListVO setTotalPostCount(int totalPostCount) {
		this.totalPostCount = totalPostCount;
		if(totalPostCount==0) {
			totalLastPageNum=0;
		} else {
			totalLastPageNum=(int) Math.ceil((double) totalPostCount / POSTS_PER_PAGE);
		}
		return this;
	}

	public int getCurrentPageNum() {
		return currentPageNum;
	}

	public ReservationListVO setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
		rowStartNum=(currentPageNum-1)*POSTS_PER_PAGE;
		return this;
	}

	public int getBlockLastPageNum() {
		return blockLastPageNum;
	}

	public void setBlockLastPageNum(int blockLastPageNum) {
		this.blockLastPageNum = blockLastPageNum;
	}

	public int getBlockFirstPageNum() {
		return blockFirstPageNum;
	}

	public void setBlockFirstPageNum(int blockFirstPageNum) {
		this.blockFirstPageNum = blockFirstPageNum;
	}

	public boolean isPrevExist() {
		return isPrevExist;
	}

	public void setPrevExist(boolean isPrevExist) {
		this.isPrevExist = isPrevExist;
	}

	public boolean isNextExist() {
		return isNextExist;
	}

	public void setNextExist(boolean isNextExist) {
		this.isNextExist = isNextExist;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}
	
	public int getPAGES_PER_BLOCK() {
		return PAGES_PER_BLOCK;
	}

	public int getPOSTS_PER_PAGE() {
		return POSTS_PER_PAGE;
	}
	
	public ReservationListVO booleanSet() {
		if((totalLastPageNum - totalLastPageNum % PAGES_PER_BLOCK) >= currentPageNum) {
			blockLastPageNum=(int)(Math.ceil((float)currentPageNum / PAGES_PER_BLOCK)*PAGES_PER_BLOCK);
			blockFirstPageNum=blockLastPageNum-(PAGES_PER_BLOCK-1);
		} else {
			blockLastPageNum=totalLastPageNum;
			blockFirstPageNum = (int) (Math.ceil((float)currentPageNum / PAGES_PER_BLOCK) * PAGES_PER_BLOCK)-(PAGES_PER_BLOCK - 1);
		}
		if(currentPageNum==totalLastPageNum) {
			isNextExist=false;
			isNextBlockExist=false;
		} else if(blockLastPageNum<totalLastPageNum) {
			isNextExist=true;
			isNextBlockExist=true;
		} else {
			isNextExist=true;
			isNextBlockExist=false;
		}
		if(currentPageNum!=1) {
			isPrevExist=true;
			if(blockFirstPageNum!=1) {
				isPrevBlockExist=true;
			} else {
				isPrevBlockExist=false;
			}
		}else {
			isPrevExist=false;
			isPrevBlockExist=false;
		}
		return this;
	}

	@Override
	public String toString() {
		return "ReservationListVO [mno=" + mno + ", bno=" + bno + ", state=" + state
				+ ", laundryType=" + laundryType + ", search=" + search + ", searchOption=" + searchOption
				+ ", listType=" + listType +", order="+order+ "]";
	}	
	
}
