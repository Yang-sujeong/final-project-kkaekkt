<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/all.css">
<link rel="stylesheet" href="/css/head0.css">
<script src="https://kit.fontawesome.com/2fc57dd2db.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<header class="head_container">
	<nav class="head">
		<div class="head_left">
			<div class="logo">
				<a href="/jsp/indexCompany.jsp"> <img src="/img/logo.svg" alt="">
				</a>
			</div>
			<div class="menu">
				<a href="">일반세탁소</a> <a href="">코인세탁소</a> <a href="/jsp/mypageBiz/mpbProg_Num.jsp">매장관리</a>
			</div>
		</div>

		<div class="head_right">
			<input name="name" id="name" value="${person.bname } 님" readonly /> 
			<div id="bellBox">
				<i class="fas fa-bell"></i>
				<span>●</span>
				<div id="noticeBox">
					<ul>
						<li>[완료]⠀⠀주문번호22의<br> 세탁이 완료되었습니다.<i class="fas fa-times"></i></li>
						<li>[완료] ⠀주문번호22의<br> 배송이 완료되었습니다.<i class="fas fa-times"></i></li>
						<li>[결제] ⠀주문번호22의<br> 결제가 완료되었습니다.<i class="fas fa-times"></i></li>
						<li>[취소] ⠀주문번호22가<br> 취소되었습니다.<i class="fas fa-times"></i></li>
						<li>[답글] ⠀주문번호22의<br> 리뷰에 답글이 등록되었습니다.<i class="fas fa-times"></i></li>
						<li>[답글] ⠀주문번호22의<br> 리뷰에 답글이 등록되었습니다.<i class="fas fa-times"></i></li>
					</ul>
					<button>내 알림 전체보기</button>
				</div>
			</div>
			<div id="chatBox">
				<i class="fas fa-comments"></i>
				<span>●</span>
			</div>
			<a href="/logout.do">로그아웃</a> 
			<a href="/jsp/faq.jsp">FAQ</a>
		</div>
	</nav>
</header>
