<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/all.css">
<link rel="stylesheet" href="/header0.html">
<style>
        .body_container {
            color: rgba(125, 125, 125, 1);
        }

        input {
            width: 200px;
            height: 30px;
            margin-top: 10px
        }

        select {
            width: 150px;
            padding: .8em .5em;
            border: 1px solid #999;
            font-family: inherit;
            background: url('arrow.jpg') no-repeat 95% 50%;
            border-radius: 0px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }

        select::-ms-expand {
            display: none;
        }


        #mybio_title {
            display: inline-block;
        }

        #btn_mybio {
            background: rgba(143, 188, 255, 0.48);
            border-radius: 23px;
            border-color: rgba(143, 188, 255, 0.48);
            float: right;
            width: 99px;
            height: 42px;
            display: block;
            /* 수정하기 버튼 클릭시 none으로*/


        }

        *:focus {
            outline: none;
        }

        #btn_mybioClick {
            float: right;
            display: none;
            /* 수정하기 버튼 클릭시 inline-block으로*/
        }

        #btn_mybiofin,
        #btn_back {
            background: rgba(143, 188, 255, 0.48);
            border-radius: 23px;
            width: 99px;
            height: 42px;

        }

        #mybio_line {
            border: 1px solid #E5E5E5;
            width: 1000px;
        }

        #mybioPhone input {
            width: 80px;
            padding-left: 10px;
        }

        #mybioBirth #two,
        #three {
            width: 80px;
            margin-left: 15px;
        }

        .body_container div {
            padding-top: 20px;
        }

        .body_container #mybio_info {
            font-weight: bold;
        }

        .body_container #mybio_info button {
            height: 35px;
            width: 100px;
            background: rgba(97, 97, 97, 1);
            color: #ffffff;
            padding: 5px;
        }

        .body_container table th {
            padding-top: 10px;
            text-align: left;
        }

        .body_container table td {
            padding-left: 50px;
        }

        #matchfail {
            color: rgba(254, 54, 54, 0.55);
        }

        #mybio_inputEmail {
            display: none;
        }
    </style>
   <script>
        window.onload = function () {

            var inputli = document.getElementsByTagName('input');
            for (var i = 0; i < inputli.length; i++) {
                inputli[i].disabled = true;
            }
            var selectli = document.getElementsByTagName('select');
            for (var i = 0; i < selectli.length; i++) {
                selectli[i].disabled = true;
            }
            var buttonli = document.getElementsByTagName('button');
            for (var i = 3; i < buttonli.length; i++) {
                buttonli[i].disabled = true;
            }


            //수정하기 버튼 클릭시 수정완료 돌아가기 버튼 활성화, 인풋창 활성화
            document.getElementById("btn_mybio").onclick = function btnChange() {
                //수정완료 돌아가기 버튼 활성화, 인풋창 활성화
                document.getElementById("btn_mybio").style.display = "none";
                document.getElementById("btn_mybioClick").style.display = "block";
                //인풋창 활성화
                for (var i = 0; i < inputli.length; i++) {
                    if (i != 1 && i != 2) {
                        inputli[i].disabled = false;
                    }
                }
                //셀렉박스 활성화
                for (var i = 0; i < selectli.length; i++) {
                    selectli[i].disabled = false;
                }
                //본인인증, 우편번호 찾기 버튼 활성화
                
                for (var i = 3; i < buttonli.length; i++) {
                    if(i!=4){
                        buttonli[i].disabled = false;
                    }
                }
                
            }

            //돌아가기버튼 클릭시 수정하기 버튼 활성화, 인풋창 비활성화
            document.getElementById("btn_back").onclick = function btnChange() {
                document.getElementById("btn_mybio").style.display = "block";
                document.getElementById("btn_mybioClick").style.display = "none";
                document.getElementsByTagName('input').disabled = true;
                //인풋창 비활성화, 입력값 초기화(기존에 받아온 값으로 바껴야하느데..)
                for (var i = 0; i < inputli.length; i++) {
                    inputli[i].disabled = true;
                    inputli[i].value = null;
                }
                //셀렉박스 비활성화, 입력값 초기화(기존에 받아온 값으로 바껴야하느데..)
                for (var i = 0; i < selectli.length; i++) {
                    selectli[i].disabled = true;
                    selectli[i].value = null;
                }
                //본인인증, 우편번호 찾기 버튼 비활성화
                for (var i = 5; i < buttonli.length; i++) {
                    buttonli[i].disabled = true;
                }
            }

            // 비밀번호 입력 후 수정버튼(비밀번호 변경시) 새 비밀번호, 확인버튼 활성화
            document.getElementById("btn_checkpwd").onclick = function checkPwd() {
                // 로그인된 회원의 비밀번호와 일치하는지 확인
                var pwd = inputli[0].value
                // 일치
                if (pwd == 1) {
                    // 기존 비밀번호창 비활성화
                    inputli[0].disabled = true;
                    inputli[0].value = null;

                    // 새비밀번호 인풋창 활성화
                    inputli[1].disabled = false;
                    inputli[2].disabled = false;

                    // 변경하기 버튼 활성화
                    buttonli[4].disabled = false;

                } else {
                    checkpwd
                    document.getElementById("checkpwd").innerText
                        = " 입력하신 비밀번호가 일치하지 않습니다.";
                }
            }
            // 새 비밀번호 유효성 검사
            inputli[1].addEventListener('keyup', () => {
                //특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내의 암호 정규식
                var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
                if (regex.test(inputli[1].value)) {
                    document.getElementById("checkval").innerText
                        = "";
                } else {
                    document.getElementById("checkval").innerText
                        = " 비밀번호 양식과 맞지 않습니다.";
                }
            })
        

            // 새 비밀번호, 새 비밀번호 확인 인풋 값 같은지 비교 => 비밀법호 업데이트 
            document.getElementById("btn_updatepwd").onclick = function undatePwd() {
                if (inputli[1].value == inputli[2].value) {
                    for (var i = 0; i < inputli.length; i++) {
                        if(i==0){
                            inputli[i].disabled = false;
                        } 
                        if(i==1 || i==2){
                            inputli[i].value = null;
                            inputli[i].disabled = true;
                        }
                    }
                    document.getElementById("match").innerText
                        = " 변경이 완료되었습니다, 이후 프로필 수정시, 변경된 비밀번호로 입력해주세요.";
                        document.getElementById("match").style.color = "rgba(45, 209, 244, 1)";
                    
                } else {
                    document.getElementById("match").innerText
                        = " 새 비밀번호와 일치하지 않습니다.";
                        inputli[2].value = null;
                }
            }
            //mybio_inputEmail 이메일 셀렉박스 직접입력 선택시 인풋창 보여주기

            // 생년월일 입력형식 확인


        }
    </script>
</head>

<body>
<!--<jsp:include page="header0.jsp"></jsp:include>-->

<body>
    <div class="body_container">
        <h3 id="mybio_title">내 정보</h3>
        <button id="btn_mybio">수정하기</button>

        <div id="btn_mybioClick">
            <button id="btn_mybiofin">수정완료</button>
            <button id="btn_back">돌아가기</button>
        </div>
        <hr id="mybio_line">
        <div id="mybio_info">
            <table>
                <tr>
                    <th>아이디</th>
                    <td>ABCD1234</td>
                </tr>
                <tr>
                    <th>이름</th>
                    <td>홍길동</td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password"> <button id="btn_checkpwd">수 정</button><label id="checkpwd"></label></td>
                </tr>
                <div id="btn_mybiopwd">
                    <tr>
                        <th> 새 비밀번호</th>
                        <td><input type="password"><label id="checkval"></label></td>
                    </tr>
                    <tr>
                        <th>새 비밀번호 확인</th>
                        <td><input type="password"> <button id="btn_updatepwd">변경하기</button> <label id="match"></label></td>
                    </tr>
                </div>
            </table>
            <div id="mybioPhone">
                연락처<br>
                <input type="text" placeholder="ex) 010" id="test"> - <input type="text" placeholder="1111"> - <input type="text" placeholder="1111">
                <button id="btn_pheon">본인인증</button>
            </div>
            <div id="mybioBirth">
                생년월일<br>
                <input type="password"><label id="checkbirth"></label>
            </div>

            <!-- 이메일도 api로 하기로 했던 거 같아ㅓ 일단 인풋박스만 만들었습니다 -->
            이메일<br>
            <input type="email"> @
            <select>
                <option value="default"></option>
                <option value="naver">naver.com</option>
                <option value="google">gmail.com</option>
                <option value="daum">daum.net</option>
                <option value="yahoo">yahoo.com</option>
                <option value="userinput">직접입력</option>
                <!-- 추후 추가예정-->
            </select>
            <input type="email" id="mybio_inputEmail">
        </div>
        <div id="mybioAddress">
            <!-- 주소는 api로 하기로 했었던 거 같아서 일단 인풋박스만 만들었습니다 -->
            주소<br>
            <input type="text" placeholder="우편번호">
            <button id="btn_address">우편번호 찾기</button>
            <br>
            <input type="text" placeholder="도로명주소">
            <input type="text" id="" placeholder="지번주소">
            <br>
            <input type="text" placeholder="상세주소">
            <input type="text" placeholder="참고사항">

        </div>


    </div>
        
        
        
    

</body>
</html>