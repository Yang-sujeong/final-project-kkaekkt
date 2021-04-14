<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<link rel="stylesheet" href="/css/all.css">
	<link rel="stylesheet" href="/css/header.css">
	<!-- <link rel="stylesheet" href="/css/headerBs.css"> -->
	<script src="https://kit.fontawesome.com/2fc57dd2db.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
		var alertObj = {
			sender: ${ sessionScope.user.mno },
			senderName: `${sessionScope.user.name}`,
			mtype: ${ sessionScope.user.mtype }
		};
	</script>
	<script src="/js/header.js"></script>
	<script src="/js/index.js"></script>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
		rel="stylesheet">
	<style>
		.head_container {
			background-color: rgb(44, 44, 44);
			color: white;
		}

		.head_container a {
			color: white;
		}
	</style>
	<header class="head_container">
		<nav class="head">
			<div class="menu">
				<a href="/jsp/mypageBiz/mpbProg_Num.jsp">매장관리</a>
			</div>
			<div class="head_logo">
				<div class="logo">
					<a href="/index.do"> <img src="/img/logo-white.png">for Business
					</a>
				</div>
			</div>
			<!-- <nav class="head">
			<div class="head_left">
				<div class="logo">
					<a href="/jsp/indexCompany.jsp"> <img src="/img/logo.svg" alt=""> for Business
					</a>
				</div>
				<div class="menu">
					<a href="/jsp/mypageBiz/mpbProg_Num.jsp">매장관리</a>
				</div>
			</div> -->

			<div class="head_right">
				<ul>
					<li>
						<span>${sessionScope.user.name}</span>님
					</li>
					<li>
						<div id="bellBox">
							<i class="fas fa-bell"></i>
							<span class="redDot">●</span>
							<div id="noticeBox">
								<ul>

								</ul>
								<button>내 알림 전체보기</button>
							</div>
						</div>
					</li>
					<li>
						<div id="chatBox">
							<i class="fas fa-comments"></i>
							<!-- <i class="far fa-comment-dots fa-lg"></i> -->
							<span class="redDot">●</span>
						</div>
					</li>
					<li><a href="/logout.do">로그아웃</a></li>
					<li><a href="/jsp/faq.jsp">FAQ</a></li>
				</ul>
			</div>
		</nav>
	</header>