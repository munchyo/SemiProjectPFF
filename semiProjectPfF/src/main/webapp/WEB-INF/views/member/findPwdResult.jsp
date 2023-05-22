<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<style>
	* {font-family:'Noto Sans KR', sans-serif; box-sizing: border-box;}
 	
 	html, body {
  	height: 100%;
	}
 	
 	body {
 	margin: 0;
 	background-color: #EEEFF1;
 	}
 	
 	input {
    border: 0;
    border-radius: 0;
    font-family: inherit;
    color: #000;
    vertical-align: middle;
    outline: 0;
	}
 	
 	p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
	}
 	
 	strong {
    font-weight: bold;
	}
 	
	.findPwdResult-form {width: 500px; height: 100%; background-color: #fff; margin-right: auto; margin-left: auto;
    padding: 50px; padding-left: 100px; padding-right: 100px; padding-bottom: 100px; 
    text-align: center; border: none; }
	
	.pwdResetAll {
    position: relative;
    max-width: 375px;
    min-height: 655px!important;
    box-sizing: border-box;
    margin: 0 auto;
    padding: 20px 15px 100px;
	background: none;
	}
	
	.pwdNew {
    padding-bottom: 24px;
    font-weight: 400;
    font-size: 18px;
    line-height: 27px;
	}
	
	.pwdId {
    margin: -6px 0 24px;
	}
	
	.inputPwd  {
    display: flex;
    box-sizing: border-box;
    height: 50px;
    border: 1px solid #e5e5e5;
    border-radius: 4px;
    justify-content: space-between;
    align-items: center;
	}

	.inputNewPwd {
    height: 48px;
    border: none;
    flex: 0 1 auto;
	}

	.inputNewPwdErrMsg {
    margin-top: 8px;
    font-size: 11px;
    line-height: 16.5px;
    color: red;
	}
	
	.inputPwdReEnterAll {
    max-width: 355px;
    margin: 0 auto;
    text-align: center;
	}
	
	.inputPwdReEnterBtn	{
    display: block;
    box-sizing: border-box;
    width: 100%;
    height: 50px;
    padding: 14px 16px 15px;
    border: 1px solid #000;
    border-radius: 4px;
    font-weight: 700;
    color: #000;
	}
	
	
</style>

</head>
<body>
	<form action="${contextPath}/findPwdResult.me" method="post">
    <div class="findPwdResult-form">
        <div><h3>비밀번호 재설정</h3></div>
        <div class="pwdResetAll">
            <h3 class="pwdNew">새로운 비밀번호를 입력해주세요.</h3>
            <p class="pwdId">아이디 : <strong></strong>
            </p>
            
            <div class="inputPwdAll">
                <div class="inputPwdChild1">
                    <div class="inputPwd" id="inputPwd">
                        <input type="password" id="inputNewPwd" class="inputNewPwd" title="새 비밀번호 입력" placeholder="새 비밀번호" maxlength="30">
                    </div>
                    <span class="inputNewPwdErrMsg" id="inputNewPwdLength" style="display:none"><p>4자리 이상 입력해주세요.</p></span>
                    <span class="inputNewPwdErrMsg" id="inputNewPwd" style="display:none"><p>비밀번호를 입력해주세요.</p></span>
                    <span class="inputNewPwdErrMsg" id="inputNewPwdErrMsg" style="display:none"><p>4자리 이상 입력해주세요.</p></span>
                </div>
                
                <div class="inputPwdChild2">
                    <div class="inputPwd" id="inputPwd2">
                        <input type="password" id="inputNewPwdReEnter" class="inputNewPwd" title="새 비밀번호 재입력" placeholder="새 비밀번호 확인" maxlength="30">
                    </div>
                    <p class="inputNewPwdErrMsg" id="inputNewPwdReEnterErrMsg" style="display:none"></p>
                </div>
            </div>
            
            <div class="inputPwdReEnterAll">
                <button type="button" id="inputPwdReEnterBtn" class="inputPwdReEnterBtn" disabled>비밀번호 재설정하기
                </button>
            </div>
            
        </div>
        </form>

</body>

<script>

	var inputNewPwd = document.getElementById('inputNewPwd'); // 새 비밀번호 입력 칸
	var inputNewPwdErrMsg = document.getElementById('inputNewPwdErrMsg'); // 새 비밀번호 에러 창
	var inputNewPwdReEnter = document.getElementById('inputNewPwdReEnter'); // 새 비밀번호 확인 입력 칸
	var inputNewPwdLength = document.getElementById('inputNewPwdLength'); // 4자리 이상 입력해달라는 텍스트
	
	inputNewPwd.addEventListener('input', function(){
		var inputNewPwdValue = inputNewPwd.value; // 새 비밀번호 입력 칸의 값
		if(inputNewPwdValue === ''){
			inputNewPwdErrMsg.style.display = 'block';
			inputNewPwdErrMsg.value = '비밀번호를 입력해주세요.';
		} else if(inputNewPwdValue.length < 4){
			inputNewPwdErrMsg.style.display = 'block';
			inputNewPwdErrMsg.value = '4자리 이상 입력해주세요.';
		} else {
			inputNewPwdErrMsg.display = 'none';
		}
		
	})
	
	

</script>
</html>