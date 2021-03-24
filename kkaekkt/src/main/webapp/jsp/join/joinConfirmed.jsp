<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/all.css">
    <link rel="stylesheet" href="css/join.css">
    <link rel="stylesheet" href="css/joinConfirm.css">
    <script src="https://kit.fontawesome.com/2fc57dd2db.js" crossorigin="anonymous"></script>
</head>
<style>
    .confirmBox {
        text-align: center;
    }
</style>

<body>
    <div class="body_container">
        <div>
            <h2>회원가입</h2>
            <div class="join_seq">
                <div class="join_numBox">
                    <ul>
                        <li class="num">01</li>
                        <li>회원유형선택</li>
                    </ul>
                </div>
                <div>
                    <i class="fas fa-chevron-right fa-3x"></i>
                </div>
                <div class="join_numBox">
                    <ul>
                        <li class="num">02</li>
                        <li>정보입력</li>
                    </ul>
                </div>
                <div>
                    <i class="fas fa-chevron-right fa-3x"></i>
                </div>
                <div class="join_numBox">
                    <ul style="color: var(--black-color); font-weight: bolder;">
                        <li class="num">03</li>
                        <li>가입완료</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wrapper_select">
            <hr>
            <div class="join_text confirmBox">
                <div class="imgBox">
                    <img src="img/kling.png">
                    <i class="far fa-handshake fa-10x"></i>
                </div>

                <h1>환영합니다!</h1>
                <p>
                    <img src="img/logo-nowater.png" alt="" style="width: 100px;">
                    과 함께 깨끗하고 간편하게 삶을 변화시킬 준비가 된 <br>
                    <!-- controller setAttribute -->
                    <span>ajax 값</span>고객님, 회원가입이 완료되었습니다. <br>
                    가입하신 아이디 <span>(id)</span>로 로그인 후 이용해 주세요.
                </p>
            </div>
            <div>
                <button type="submit">홈으로</button>
                <button type="submit" class="login_btn">로그인</button>
            </div>
        </div>
    </div>
    <!-- footer -->
</body>

</html>