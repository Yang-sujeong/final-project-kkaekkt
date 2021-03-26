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
				<a href="/jsp/indexPerson.jsp"> <img src="/img/logo.svg" alt="">
				</a>
			</div>
			<div class="menu">
				<a href="">일반세탁소</a> <a href="">코인세탁소</a>
			</div>
		</div>

		<div class="head_right">
			<input name="name" id="name" value="${person.name } 님" readonly /> 
			<a href=""><i class="fas fa-bell"></i></a> 
			<a href=""><i class="fas fa-comments"></i></a> 
			<a href="/jsp/mypageUser/mypagePs.jsp">마이페이지</a> 
			<a href="/logout.do">로그아웃</a> 
			<a href="/jsp/faq.jsp">FAQ</a>
		</div>
	</nav>
</header>
