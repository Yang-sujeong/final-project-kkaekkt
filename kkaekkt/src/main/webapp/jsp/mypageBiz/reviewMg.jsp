<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.kkaekkt.biz.comm.CommListVO"%>
<%@ page import="com.kkaekkt.biz.comm.CommVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/all.css">
    <link rel="stylesheet" href="/css/head0.css">
    <link rel="stylesheet" href="/css/sidebar.css">
    <link rel="stylesheet" href="/css/reviewMg.css">
    <script src="https://kit.fontawesome.com/2fc57dd2db.js"
        crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
    <header class="head_container">
        <nav class="head">
            <div class="head_left">
                <div class="logo">
                    <a href=""> <img src="/img/logo.svg" alt="">
                    </a>
                </div>
                <div class="menu">
                    <a href="">일반세탁소</a> <a href="">코인세탁소</a> <a href="">매장관리</a>
                </div>
            </div>
            <div class="head_right">
                <a href="">(업체이름)</a> 
                <a href=""><i class="fas fa-bell"></i></a> 
                <a href=""><i class="fas fa-comments"></i></a> 
                <a href="logout.do">로그아웃</a> 
                <a href="/jsp/faq.jsp">FAQ</a>
            </div>
        </nav>
    </header>
    <div class="body_container">
        <div class="my_container">
            <div class="side">
                <button onclick="location.href='/jsp/mypageBiz/mpbProg_Item.jsp'">처리중</button>
                <button onclick="location.href='/jsp/mypageBiz/mpbCom.jsp'">완 료</button>
                <button onclick="location.href='/jsp/mypageBiz/salesManage_com.jsp'">매출관리</button>
                <button onclick="location.href='/jsp/mypageBiz/comspec.jsp'">사양관리</button>
                <button onclick="location.href='/jsp/mypageBiz/reviewMg.jsp'">리뷰관리</button>
                <button onclick="location.href='/jsp/mypageBiz/combio.jsp'">프로필편집</button>
            </div>
            <div class="side_sub">
            </div>
            <div class="content">
				<div class="content_header">
					<p>전체 개수 : <span>4</span> 개</p>
					<div class="searchBox">
						<select>
							<option value="1">이름</option>
                            <option value="3">평점</option>
							<option value="2">주문번호</option>
						</select>
						<i class="fas fa-search"></i>
						<input type="text" class="search" value="" onkeypress="enter()">
					</div>
				</div>
				<hr>
                <div class="process">
					<div class="order">
						<p>전체 리뷰</p>
                        <span class="pick">오름차순 </span><span>내림차순</span>
						<div class="selectbox">
							<label class="select">등록 순</label>
							<select>
								<option value=1>등록 순</option>
								<option value=2>평점 순</option>
							</select>
						</div>
					</div>
					<table class="reviewHeader">
						<tr>
                            <!-- 번호 내용 별점 이름 등록일 주문번호  -->
							<th class="cell1">번호</th>
							<th class="cell2">내용</th>
							<th class="cell3">평점</th>
							<th class="cell4">이름</th>
							<th class="cell5">주문번호</th>
							<th class="cell6">등록일</th>
							<th class="cell7">상태 및 변경</th>							
						</tr>
					</table>
                    <table class="reviewList" id="review0">
						<tr>
							<td class="cell1">1</td>
							<td class="cell2 close">asdasdsaasdasdasdasddsdddddddddddddddddddasdasdasdasdasdasdasdadsadasdsaasdsadasdsadsasadsadsadasds</td>
							<td class="cell3">4/5</td>
							<td class="cell4" id="customer0">황태연</td>
							<td class="cell5">132523</td>
							<td class="cell6">3월 13, 2021</td>
							<td class="cell7"><button class="replyBtn" value=0 disabled>답글완료</button></td>
						</tr>
					</table>
                    <table class="replyList" id="reply0">
						<tr>
							<td class="cell1">┗</td>
							<td class="replyCell close">[답글:]허허asdsdddddddddddddasdsaasdasdasdasddsdddddddddddddddddddasdasdasdasdasdasdasdadsadasdsaasdsadasdsadsasadsadsadasds</td>
							<td class="cell6">3월 13, 2021</td>
							<td class="cell7"><button class="editBtn" value=0>수정</button><button class="delBtn" value=0>삭제</button></td>
						</tr>
					</table>
                    <table class="reviewList" id="review2">
						<tr>
							<td class="cell1">1</td>
							<td class="cell2 close">asdasdsaasdasdasdasddsdddddddddddddddddddasdasdasdasdasdasdasdadsadasdsaasdsadasdsadsasadsadsadasds</td>
							<td class="cell3">4/5</td>
							<td class="cell4" id="customer2">황태연</td>
							<td class="cell5">132523</td>
							<td class="cell6">3월 13, 2021</td>
							<td class="cell7"><button class="replyBtn" value=2>답글</button></td>
						</tr>
					</table>
                    <!-- <div class="comments">
                        <div class="comments_header">
                            <p><span>알 수 없음</span> 님 리뷰에 대한 답글</p>
                            <button class="cancel">취소</button>
							<button value=2>등록</button>
                        </div>
                        <div class="comments_body">
                            <span>┗</span>
                            <textarea class="commentBox" cols="30" rows="3"></textarea>
							<span>0 / 300</span>
                        </div>
                    </div> -->
                    <table class="reviewList" id="review3">
						<tr>
							<td class="cell1">1</td>
							<td class="cell2 close">asdasdsaasdasdasdasddsdddddddddddddddddddasdasdasdasdasdasdasdadsadasdsaasdsadasdsadsasadsadsadasds</td>
							<td class="cell3">4/5</td>
							<td class="cell4" id="customer3">황태연</td>
							<td class="cell5">132523</td>
							<td class="cell6">3월 13, 2021</td>
							<td class="cell7"><button class="replyBtn" value=3>답글</button></td>
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
	<script>
		var pageObj = {
			bno:1
		}
	</script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="/js/reviewMg.js"></script>
</body>
</html>