<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.kkaekkt.biz.user.BusinessVO"%>
<%@ page import="com.kkaekkt.biz.reservation.ReservationListVO"%>
<%@ page import="com.kkaekkt.biz.comm.LaundryVO"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/css/mpbProg_Item.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>

<body>
	<jsp:include page="/jsp/header2.jsp"></jsp:include>
	<div class="body_container">
		<div class="my_container">
			<jsp:include page="sidebar_bs.jsp"></jsp:include>
			<div class="content">
				<ul class="laundry_nav">
					<li value=0 class="selected">전체보기</li>
					<li value=1>일반의류</li>
					<li value=2>와이셔츠</li>
					<li value=3>이불</li>
					<li value=4>운동화</li>
					<li value=5>가죽모피</li>
					<li value=6>명품가방</li>
					<li value=7>아웃도어</li>
					<li value=8>기타</li>
				</ul>
				<div class="content_header">
					<p>전체 개수 : <span></span> 개</p>
					<div class="searchBox">
						<select>
							<option value="1">이름</option>
							<option value="2">주문번호</option>
						</select>
						<i class="fas fa-search"></i>
						<input type="text" class="search" value="" onkeypress="enter()">
					</div>
				</div>
				<hr>
				<div class="process">
					<div class="order">
						<p>오늘 주문</p>
						<div class="selectbox">
							<label class="select">주문번호 순</label>
							<select>
								<option value=1>주문번호 순</option>
								<option value=2>남은일자 순</option>
							</select>
						</div>
					</div>
					<table class="processHeader">
						<tr>
							<th>주문일</th>
							<th>주문번호</th>
							<th>주문자</th>
							<th>상품명</th>
							<th>개수</th>
							<th>남은일자</th>
							<th>상태변경</th>
						</tr>
					</table>
				</div>
				<div class="page_btn_container">
					<ul class="page_btn">
						<!-- 맨처음으로 버튼 -->
						<li class="page_prevBlock"><i class="fas fa-angle-double-left"></i></li> 
						<!-- 이전 -->
						<li class="page_prev">
							<i class="fas fa-angle-left"></i>
						</li>
						<!-- 다음버튼 -->
						<li class="page_next">
							<i class="fas fa-angle-right"></i>
						</li>
						<!-- 맨마지막으로 버튼 -->
						<li class="page_nextBlock"><i class="fas fa-angle-double-right"></i></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script src="https://kit.fontawesome.com/2fc57dd2db.js"
		crossorigin="anonymous"></script>
	<script>
		var pageObj={//세션에서 정보를 받아오는건 독립된 js파일에서 불가능, jsp 내에서만 가능하기 때문에 여기서 값을 받아준다.
                bno:1,//더미번호 (추후 세션에서 받아올 예정)
				currentPageNum:1,//현재 페이지 1
				listType:2,//품목별 조회
				order:1 //주문번호 순
            };
		var rsvObj={};
	</script>
	<script src="/js/mpbProg_Item.js"></script>
</body>
</html>