<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<style>

	*{font-family:'Noto Sans KR', sans-serif;
	  }
	
	.memInfoAll {
    width: calc(100% - 210px);
    padding: 0;
    float: right;
	}
	
	.memInfoSection {
    padding: 0;
	}
	
	.memInfoHeader{
    display: flex;
    align-items: center;
	}
	
	.memInfo {
    display: inline-block;
    font-size: 24px;
	}
	
	.memTable {
    width: 100%;
    line-height: 1.5;
    font-size: 14px;
    border-collapse: collapse;
    table-layout: fixed;
	}
	
	.context{
    text-align: left;
    font-weight: normal;
    vertical-align: top;
	}
	
	th, td {
    height: auto;
    padding: 15px 0;
    box-sizing: border-box;
    border-top: 1px solid #f1f1f1;
    border-bottom: none;
    font-size: 14px;
    text-align: left;
	}
	
	strong {
	vertical-align: middle;
	}
	
	.n-input {
	margin-bottom: 5px;
	}
	
	#change-password-btn {
    border: 1px solid #e5e5e5;
    background-color: #ffffff;
    color: #000000;
    height: 32px;
    line-height: 30px;
    padding-top: 0;
	}
	
	#change-nickName-btn {
    border: 1px solid #e5e5e5;
    background-color: #ffffff;
    color: #000000;
    height: 32px;
    line-height: 30px;
    padding-top: 0;
	}
	
	#change-email-btn {
    border: 1px solid #e5e5e5;
    background-color: #ffffff;
    color: #000000;
    height: 32px;
    line-height: 30px;
    padding-top: 0;
	}
	
	.leave {
    padding-top: 20px;
    border-top: 1px solid #f1f1f1;
    color: #aaaaaa;
    line-height: 32px;
    text-align: right;
    margin-top: 13px;
    margin-right: 40px;
	}
	
	h1{
	   margin-left: 20%;
	   margin-top: 4%
	}
	
	table{margin-left: auto; 
		  margin-right: auto;
		  margin-top: 2%;
		  border-collapse: separate;
  		  border-spacing: 0 20px;
  		  line-height: 1.5;
    	  font-size: 14px;
    	  width: 700px;
	}
	
  	td span {
    vertical-align: top;
	}
	
	#change-password-btn:active{
	transition-duration: 50s;
	}
	
	#leaveBtn {
    min-width: 70px;
    height: 32px;
    line-height: 30px;
    padding-top: 0;
    color: #777777;
    margin-left: 4px;
    border: 1px solid #e5e5e5;
    background-color: #ffffff;
	}
	
</style>

</head>
<!-- <body class="bg-light"> -->
<%-- 	<jsp:include page="../common/navbar.jsp"/> --%>
<!-- 	<div class="container"> -->
<!-- 		<main> -->
<!-- 			<div class="py-5 text-center"> -->
<%-- 				<a href="${ contextPath }/home.do"><img class="d-block mx-auto mb-4" src="${ contextPath }/resources/image/spring.png" alt="" width="130"></a> --%>
<!-- 				<h2>Edit My Information</h2> -->
<!-- 			</div> -->

<!-- 			<div style="margin-left: 350px; margin-right: 350px;"> -->
<%-- 				<form class="needs-validation" action="${ contextPath }/updateMember.me" method="POST"> --%>
<!-- 					<div class="row g-3"> -->
<!-- 						<div class="col-12"> -->
<!-- 							<label for="id" class="form-label">ID</label> -->
<%-- 							<input type="text" class="form-control" id="id" name="id" readonly value="${ loginUser.id }"> --%>
<!-- 						</div> -->
						
<!-- 						<div class="col-12"> -->
<!-- 							<label for="name" class="form-label">NAME</label> -->
<%-- 							<input type="text" class="form-control" id="name" name="name" required value="${ loginUser.name }"> --%>
<!-- 						</div> -->
						
<!-- 						<div class="col-12"> -->
<!-- 							<label for="nickName" class="form-label">NICKNAME</label> -->
<%-- 							<input type="text" class="form-control" id="nickName" name="nickName" required value="${ loginUser.nickName }"> --%>
<!-- 							<label id="nickNameCheckResult">Please check your NickName.</label> -->
<!-- 						</div> -->

<!-- 						<div class="col-12"> -->
<!-- 							<label for="emailId" class="form-label">EMAIL</label> -->
<%-- 							<c:set var="emailId" value="${ fn:split(loginUser.email, '@')[0] }"/> --%>
<%-- 							<c:set var="emailDomain" value="${ fn:split(loginUser.email, '@')[1] }"/> --%>
<!-- 							<div class="input-group"> -->
<%-- 								<input type="text" class="form-control" id="emailId" name="emailId" value="${ emailId }"> --%>
<!-- 								<span class="input-group-text">@</span> -->
<!-- 								<select name="emailDomain" style="width: 280px;"> -->
<%-- 									<option> <c:if test="${ emailDomain eq 'naver.com' }"></c:if>naver.com</option> --%>
<%-- 									<option> <c:if test="${ emailDomain eq 'gmail.com' }"></c:if>gmail.com</option> --%>
<%-- 									<option> <c:if test="${ emailDomain eq 'nate.com' }"></c:if>nate.com</option> --%>
<%-- 									<option> <c:if test="${ emailDomain eq 'hanmail.net' }"></c:if>hanmail.net</option> --%>
<!-- 								</select> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
<!-- 						<div class="col-12"> -->
<!-- 							<label class="form-label">GENDER</label><br> -->
<%-- 							<input type="radio" id="man" name="gender" value="M" <c:if test="${ loginUser.gender == 'M' }">checked</c:if>> MAN &nbsp;&nbsp;&nbsp;&nbsp; --%>
<%-- 							<input type="radio" id="woman" name="gender" value="F" <c:if test="${ loginUser.gender == 'F' }">checked</c:if>> WOMAN --%>
<!-- 						</div> -->
						
<!-- 						<div class="col-12"> -->
<!-- 							<label for="age" class="form-label">AGE</label> -->
<%-- 							<input type="number" class="form-control" id="age" name="age" min="0" max="100" value="${ loginUser.age }"> --%>
<!-- 						</div> -->

<!-- 						<div class="col-12"> -->
<!-- 							<label for="phone" class="form-label">PHONE</label> -->
<%-- 							<input type="text" class="form-control" id="phone" name="phone" value="${ loginUser.phone }"> --%>
<!-- 						</div> -->
						
<!-- 						<div class="col-12"> -->
<!-- 							<label for="address" class="form-label">ADDRESS</label> -->
<%-- 							<input type="text" class="form-control" id="address" name="address" value="${ loginUser.address }"> --%>
<!-- 						</div> -->
						
<!-- 						<br><br><br><br><br> -->
						
<!-- 						<button class="w-100 btn btn-primary btn-lg">UPDATE</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</main> -->

<!-- 		<footer class="my-5 pt-5 text-muted text-center text-small"></footer> -->
<!-- 	</div> -->
	
	<!-- 	<script> -->
<!--  		window.onload = () =>{ -->
<%--  			const loginUser = '${loginUser}'; --%>
<!--  			if(loginUser == ''){ -->
<!--  				alert('로그인 후 이용해주세요.'); -->
<%--  				location.href = '${contextPath}/loginView.me'; --%>
<!--  			} -->
<!--  		} -->
<!-- 	</script> -->
	
	
	
	
	
	<body>



          <!-- 기본 회원정보 -->
          <section class="memInfoAll">
            
            <section class="memInfoSection">

                <header class="memInfoHeader">
                    <h1 class="memInfo">기본 회원정보</h1>
                </header>

                <table class="memTable">
                    <colgroup>
                        <col style="width:190px">
                        <col style="width:*">
                        <col style="width:50%">
                    </colgroup>
                   
                    <tr>
                        <th scope="row" class="context">아이디</th>
                        <td colspan="2"><strong>${ loginUser.id }</strong></td>
                    </tr>
                    
                    <!-- 비밀번호 -->
                    <tr id="password-area">
                        <th scope="row" class="context">비밀번호</th>
                        <td><strong>********</strong></td>
                        <td>
                            <button type="button" class="btn btn-light btn btn-primary btn-sm" id="change-password-btn">비밀번호 변경</button>
                        </td>
                    </tr>

					 <!--비밀번호 변경-->
                    <tr id="change-password-area" style="display: none">
                        <th scope="row" class="context">비밀번호</th>
                        <td colspan="2">
                            <div class="my-info-modify">
                                <div class="my-info-modify">
                                    <input type="hidden" id="encryptPassword"/>
                                    <input type="hidden" id="encryptNewPassword"/>
                                    <input type="hidden" id="encryptConfirmPassword"/>
                                    <div class="input">
                                        <label for="password">현재 비밀번호</label>
                                        <div class="input-password__wrap " id="password_div">
                                            <input type="password" class="n-input" id="password">
                                        </div>
                                        <span id="password-invalid" class="validate danger"></span>
                                    </div>
                                    <div class="input">
                                        <label for="newPassword">신규 비밀번호</label>
                                        <div class="input-password__wrap " id="newPassword_div">
                                            <input type="password" class="n-input" id="newPassword" maxlength="30">
                                        </div>
                                        <span id="new-password-invalid" class="validate danger"></span>
                                        <span id="valid-newPassword" class="validate" style="display: none">사용 가능한 비밀번호입니다.</span>
                                    </div>
                                    <div class="input">
                                        <label for="confirmPassword">신규 비밀번호 재 입력</label>
                                        <div class="input-password__wrap " id="confirmPassword_div">
                                            <input type="password" class="n-input" id="confirmPassword" maxlength="30">
                                        </div>
                                        <span id="confirm-password-invalid" class="validate danger"></span>
                                        <span id="valid-confirmPassword" class="validate" style="display: none">사용 가능한 비밀번호입니다.</span>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="n-btn btn-sm btn-lighter" id="change-password-cancel-btn">취소</button>
                                        <button type="button" class="n-btn btn-sm btn-accent disabled" id="change-password-finish-btn" disabled>완료</button>
                                    </div>
                                </div>
                        </td>
                    </tr>
                    
					<!-- 이름 -->
                    <tr>
                        <th scope="row" class="context">이름(실명)</th>
                        <td>
                            <strong>${ loginUser.name }</strong>
                                <span></span>
                        </td>
                    </tr>
					
					<!-- 닉네임 -->
                    <tr id="nickName-area">
                        <th scope="row" class="context">닉네임</th>
                        	<td> <strong>${ loginUser.nickName }</strong> </td>
                            <td>
                                <button type="button" class="btn btn-light btn btn-primary btn-sm" id="change-nickName-btn">닉네임 변경</button>
                            </td>
                    </tr>

					<!--닉네임 수정-->
                    <tr id="change-nickName-area" style="display: none">
                        <th scope="row" class="context">닉네임</th>
                        <td colspan="2">
                            <div class="my-info-modify my-info-modify--nickname">
                                <ul class="n-info-txt">
                                    <li>길이는 최대 15자 이내로 작성해주세요.</li>
                                    <li>중복 닉네임 불가합니다.</li>
                                    <li>이모티콘 및 일부 특수문자 사용 불가합니다. &amp;&lt;&gt;()'/"</li>
                                </ul>
                                <div class="input">
                                    <input type="text" id="nickName" class="n-input" placeholder="닉네임 입력(최대 15자)" maxlength="15">
                                    <span id="currentNickName" class="validate">현재 닉네임 : ${ loginUser.nickName }</span>
                                    <span id="nicknameValidationMessage" class="validate" hidden></span>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="n-btn btn-sm btn-lighter" id="change-nickName-cancel-btn">취소</button>
                                    <button type="button" class="n-btn btn-sm btn-accent disabled" id="change-nickName-finish-btn" disabled>완료</button>
                                </div>
                            </div>
                        </td>
                    </tr>
					
					<!-- 이메일  -->
                    <tr id="email-area">
                        <th scope="row" class="context">이메일</th>
                        <td>
                            <strong id="currentEmail">${ loginUser.email }</strong>
                        </td>
                        <td>
                            <button type="button" class="btn btn-light btn btn-primary btn-sm" id="change-email-btn">이메일 변경</button>
                        </td>
                    </tr>

                    <!--이메일 인증-->
                    <tr id="change-email-area" style="display: none">
                        <th scope="row" class="context">이메일</th>
                        <td colspan="2">
                            <div class="my-info-modify">
                                <ul class="n-info-txt">
                                    <li>메일주소 입력 후 인증하기 버튼을 누르시면, 회원님의 이메일로 이메일 인증 번호가 적힌메일이 발송됩니다.</li>
                                    <li>아래에 인증 번호를 입력하시면 인증이 완료됩니다.</li>
                                </ul>
                                <div class="input input-btn">
                                    <input type="text" class="n-input" placeholder="이메일 주소 입력" id="email" maxlength="50">
                                    <button type="button" class="n-btn btn-sm btn-accent disabled" id="send-authentication-email" disabled>인증</button>
                                </div>
                                <div class="input input-w">
                                    <input type="text" class="n-input disabled" id="email-authTempKey" placeholder="인증번호 입력">
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="n-btn btn-sm btn-lighter" id="change-email-cancel-btn">취소</button>
                                    <button type="button" class="n-btn btn-sm btn-accent disabled" id="change-email-finish-btn" disabled>완료</button>
                                </div>
                            </div>
                        </td>
                    </tr>
					
					<!-- 휴대전화 -->
                    <tr>
                        <th scope="row" class="context">휴대전화</th>
                        <td><strong>${ loginUser.phone }</strong>
                        </td>
                    </tr>
                    
                    <!-- 배송지 -->
<!--                     <tr> -->
<!--                     	<th scope="row" class="context">배송지</th> -->
<%--                     	<td><strong>${ loginUser.address }</strong> --%>
<!-- 						</td> -->
<!-- 						<td> -->
<!--                             <button type="button" class="btn btn-light btn btn-primary btn-sm" id="change-email-btn">배송지 변경</button> -->
<!--                         </td> -->
<!-- 					</tr>                    			 -->
                    </tbody>
                  </table>
				</section>
				
				<p class="leave">
					탈퇴를 원하시면 회원탈퇴 버튼을 눌러주세요
					<a href="${contextPath}/leave.me" class="btn btn-light btn btn-primary btn-sm btn btn-outline-secondary" id="leaveBtn" style="margin-right: 60px;">회원탈퇴</a>
				</p>
				
			</section>
            
            <!-- //기본 회원정보 -->
	
	<script>
	
    var letterRegExp = new RegExp("[a-z]");
    var capsLockRegExp = new RegExp("[A-Z]");
    var numberRegExp = new RegExp("[0-9]");
    var symbolRegExp = new RegExp("\\W");
    var maxUploadSize = 1048576;
    var maxUploadSizeMsg = '최대 파일 사이즈는 1MB 입니다.';
    var receiveEventToggle = false;
	
		// 비밀번호 관련 js
		
		 <!-- password -->
            $("#change-password-btn").click(function (e) {
                e.preventDefault();
                $("#password-area").css("display", "none");
                $("#change-password-area").css("display", "");
            });

            $("#change-password-cancel-btn").click(function (e) {
                e.preventDefault();
                $("#password").val('');
                $("#newPassword").val('');
                $("#confirmPassword").val('');
                $("#password-area").css("display", "");
                $("#change-password-area").css("display", "none");
                $("#new-password-invalid").css("display", "none");
                $("#valid-newPassword").css("display", "none");
                $("#password-invalid").css("display", "none");
                $("#valid-password").css("display", "none");
                $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                $("#change-password-finish-btn").prop('disabled', true);
                $("#newPassword").attr('class', 'n-input');
            });

            $("#password").keyup(function (e) {
                e.preventDefault();
                var password = $("#password");
                var newPassword = $("#newPassword");
                var confirmPassword = $("#confirmPassword");
                var displayValue = $("#new-password-invalid").css("display");
                var passwordInvalidDisplayValue = $('#password-invalid').css("display");

                if (password.val().length >= 4 &&
                    newPassword.val().length >= 8 &&
                    confirmPassword.val().length >= 8 &&
                    displayValue == 'none' &&
                    passwordInvalidDisplayValue == 'none'
                ) {
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent');
                    $("#change-password-finish-btn").prop('disabled', false);
                } else {
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                }

                value = $(this).val();
                var passwordInvalid = $('#password-invalid');
                var newPasswordInvalid = $("#new-password-invalid");

                if (!value) {
                    passwordInvalid.css('display', '');
                    passwordInvalid.text('');
                    return false;
                }

                if (password.val().length < 4) {
                    passwordInvalid.css('display', '');
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                    $("#password_div").attr("class", "input-password__wrap input-danger");
                    passwordInvalid.text("4자리 이상 입력해 주십시오.");
                    return false;
                }

                passwordInvalid.css('display', 'none');
                $("#password_div").attr("class", "input-password__wrap ");
                if (passwordInvalid.css("display") === 'none' && newPasswordInvalid.css("display") === 'none' && confirmPassword.val().length >= 8) {
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent');
                    $("#change-password-finish-btn").prop('disabled', false);
                }
            });

            $("#newPassword").keyup(function (e) {
                e.preventDefault();
                var newPassword = $("#newPassword");

                if (newPassword.val() == '' || newPassword.val().length < 8) {
                    newPassword.attr('class', 'n-input input-danger');
                    $("#valid-newPassword").css("display", "none");
                    $("#new-password-invalid").css("display", "");
                    $("#new-password-invalid").text("8자리 이상 입력해 주십시오.");
                    $("#newPassword_div").attr("class", "input-password__wrap input-danger");
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                    return false;
                } else if (checkFourConsecutiveChar(newPassword.val())) {
                    newPassword.attr('class', 'n-input input-danger');
                    $("#valid-newPassword").css("display", "none");
                    $("#new-password-invalid").css("display", "");
                    $("#new-password-invalid").text("4개 이상 연속으로 동일한 문자는 사용하실 수 없습니다.");
                    $("#newPassword_div").attr("class", "input-password__wrap input-danger");
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                    return false;
                } else if (!isValidPassword(newPassword.val())) {
                    newPassword.attr('class', 'n-input input-danger');
                    $("#valid-newPassword").css("display", "none");
                    $("#new-password-invalid").css("display", "");
                    $("#new-password-invalid").text("숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.");
                    $("#newPassword_div").attr("class", "input-password__wrap input-danger");
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                    return false;
                } else {
                    var points = getPassordRulePoint(newPassword.val());
                    newPassword.attr('class', 'n-input');
                    $("#new-password-invalid").css("display", "none");
                    $("#valid-newPassword").css("display", "");
                    $("#valid-newPassword").text("사용 가능한 비밀번호입니다.");
                    $("#newPassword_div").attr("class", "input-password__wrap");
                    var confirmPassword = $("#confirmPassword");
                    var password = $("#password");
                    if (password.val().length >= 4 && confirmPassword.val().length >= 8) {
                        $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent');
                        $("#change-password-finish-btn").prop('disabled', false);
                    } else {
                        $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                        $("#change-password-finish-btn").prop('disabled', true);
                    }
                }
                return true;
            });

            $("#confirmPassword").keyup(function (e) {
                e.preventDefault();
                var password = $("#password");
                var newPassword = $("#newPassword");
                var confirmPassword = $("#confirmPassword");
                var displayValue = $("#new-password-invalid").css("display");
                var passwordInvalidDisplayValue = $('#password-invalid').css("display");

                if (password.val().length >= 4 &&
                    newPassword.val().length >= 8 &&
                    confirmPassword.val().length >= 8 &&
                    displayValue == 'none' &&
                    passwordInvalidDisplayValue == 'none'
                ) {
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent');
                    $("#change-password-finish-btn").prop('disabled', false);
                } else {
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                }
            });


            encryptInputForm = function () {
                if (typeof encryptAES !== 'undefined') {
                    $('#encryptPassword').val(encryptAES($('#password').val().trim(), 'RmEUSIkIJxZXQDgEqoJZdsG2nx7F5EKy'));
                    $('#encryptNewPassword').val(encryptAES($('#newPassword').val().trim(), 'RmEUSIkIJxZXQDgEqoJZdsG2nx7F5EKy'));
                    $('#encryptConfirmPassword').val(encryptAES($('#confirmPassword').val().trim(), 'RmEUSIkIJxZXQDgEqoJZdsG2nx7F5EKy'));

                    $("#password").val('');
                    $("#newPassword").val('');
                    $("#confirmPassword").val('');
                }
            }

            $("#change-password-finish-btn").click(function (e) {
                e.preventDefault();

                var password = $("#password").val();
                var newPassword = $("#newPassword").val();
                var confirmPassword = $("#confirmPassword").val();

                if (password === '') {
                    alert('현재 비밀번호를 입력해주세요.');
                    return false;
                }

                if (password.length < 4) {
                    alert('비밀번호 4자 이상이여야합니다.');
                    return false;
                }

                if (newPassword !== confirmPassword) {
                    alert('신규 비밀번호와 재입력 비밀번호가 같지 않습니다.');
                    $("#confirmPassword").val('');
                    $("#newPassword").val('');
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                    $("#new-password-invalid").text('');
                    $("#valid-newPassword").text('');
                    return false;
                }

                if (password === newPassword) {
                    alert('현재 비밀번호와 신규 비밀번호가 동일합니다.');
                    $("#newPassword").val('');
                    $("#confirmPassword").val('');
                    $("#change-password-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                    $("#change-password-finish-btn").prop('disabled', true);
                    $("#new-password-invalid").text('');
                    $("#valid-newPassword").text('');
                    return false;
                }

                if (confirm('비밀번호를 변경하시겠습니까?')) {

                    encryptInputForm();

                    mss.my.ajax.call(
                        {
                            method: "PUT",
                            url: "https://my.musinsa.com/api/member/v1/change-password",
                            xhrFields: {
                                withCredentials: true
                            },
                            data: {
                                "cipherKey": 'RmEUSIkIJxZXQDgEqoJZdsG2nx7F5EKy',
                                "cipherVersion": 'V1',
                                "password": $("#password").val(),
                                "newPassword": $("#newPassword").val(),
                                "confirmPassword": $("#confirmPassword").val(),
                                "encryptPassword": $("#encryptPassword").val(),
                                "encryptNewPassword": $("#encryptNewPassword").val(),
                                "encryptConfirmPassword": $("#encryptConfirmPassword").val(),
                            },
                            success: function (responseData) {
                                alert(responseData.message);
                                if (responseData.success) {
                                    $("#password-area").css("display", "");
                                    $("#change-password-area").css("display", "none");
                                }

                                if (responseData.code == 1500) {
                                    document.location.href = "/auth/login?referer=" + encodeURIComponent(location.pathname);
                                    return false;
                                }

                                $("#password").val('');
                                $("#newPassword").val('');
                                $("#confirmPassword").val('');
                                $("#new-password-invalid").css("display", "none");
                                $("#valid-newPassword").css("display", "none");
                                $("#password-invalid").css("display", "none");
                                $("#valid-password").css("display", "none");

                            },
                            fail: function (data) {
                                var responseData = data.responseJSON;
                                alert(responseData.message);
                            }
                        },
                        true
                    )
                }
            });

            function checkFourConsecutiveChar(password) {
                for (var i = 0; i < password.length - 3; i++) {
                    if (password.charAt(i) == password.charAt(i + 1) &&
                        password.charAt(i + 1) == password.charAt(i + 2) &&
                        password.charAt(i + 2) == password.charAt(i + 3)) {
                        return true;
                    }
                }
                return false;
            }

            function isValidPassword(password) {
                var violationCnt = 0;
                if (!letterRegExp.test(password)) {
                    violationCnt++;
                }

                if (!capsLockRegExp.test(password)) {
                    violationCnt++;
                }

                if (!numberRegExp.test(password)) {
                    violationCnt++;
                }

                if (!symbolRegExp.test(password)) {
                    violationCnt++;
                }

                if (violationCnt > 2) {
                    return false;
                } else {
                    return true;
                }
            }

            function getPassordRulePoint(password) {
                var point = 0;
                if (letterRegExp.test(password)) {
                    point = point + 4;
                }

                if (capsLockRegExp.test(password)) {
                    point = point + 4;
                }

                if (numberRegExp.test(password)) {
                    point = point + 4;
                }

                if (symbolRegExp.test(password)) {
                    point = point + 4;
                }

                return point;
            }
        
        // 끝
        
        
		// 비밀번호 변경 창
// 		function showChangePasswordArea() {
// 			  var changePasswordArea = document.getElementById("change-password-area");
// 			  	passwordArea.style.display = "none";
// 			  	changePasswordArea.style.display = "table-row";
// 		}
		
// 		function cancelChangePasswordArea() {
// 			var cancelPasswordArea = document.getElementById("password-area");
// 				passwordArea.style.display = "table-row";
// 				changePasswordArea.style.display = "none";
// 		}
				
// 			var passwordArea = document.getElementById("change-password-btn"); // 비밀번호 변경 버튼
// 			var changePasswordArea = document.getElementById("change-password-area"); // 비밀번호 수정
// 			var	changePasswordCancelBtn = document.getElementById("change-password-cancel-btn"); // 비밀번호 취소
	
// 			passwordArea.addEventListener("click", showChangePasswordArea);
// 			changePasswordCancelBtn.addEventListener("click", cancelChangePasswordArea);
			
		// 닉네임
			
		// 닉네임 변경 창
		
		var nickNameArea = document.getElementById("nickName-area"); // 닉네임 테이블
		var changeNickNameBtn = document.getElementById("change-nickName-btn"); // 닉네임 변경 버튼
		var changeNickNameArea = document.getElementById("change-nickName-area"); // 닉네임 수정 테이블
		var	changeNickNameCancelBtn = document.getElementById("change-nickName-cancel-btn"); // 닉네임 취소 버튼
		
		nickNameArea.addEventListener("click", showChangeNickNameArea);
		function showChangeNickNameArea() {
			  var changeNickNameArea = document.getElementById("change-nickName-area");
			 	nickNameArea.style.display = "none";
			  	changeNickNameArea.style.display = "table-row";
		}
		
		changeNickNameCancelBtn.addEventListener("click", cancelChangeNickNameArea);
		function cancelChangeNickNameArea() {
			var cancelNickNameArea = document.getElementById("nickName-area");
				nickNameArea.style.display = "table-row";
				changeNickNameArea.style.display = "none";
		}

		var validNickName = function () {
            var $nickName = $("#nickName");
            $nickName.val($nickName.val().trim());
            var nickNameLength = $nickName.val().length;

            $("#nickName").removeClass('input-danger');
            $("#currentNickName").show();
            $("#nicknameValidationMessage").hide();

            if (nickNameLength == 0) {
                setInValidStyleToNickName('닉네임을 입력해주세요');
                return false;
            }

            if (nickNameLength > 15) {
                setInValidStyleToNickName('닉네임은 15자리 이내로 입력해 주십시오.');
                return false;
            }

            var patternSpc = new RegExp("[&<>()'/\"]");
            if (patternSpc.test($nickName.val())) {
                setInValidStyleToNickName('닉네임에 다음 특수문자는 사용할 수 없습니다. & < > ( ) \' / \"');
                return false;
            }

            var patternEmoji = /([\uE000-\uF8FF]|\uD83C[\uDC00-\uDFFF]|\uD83D[\uDC00-\uDFFF]|[\u2694-\u2697]|\uD83E[\uDD10-\uDD5D])/g;
            if (patternEmoji.test($nickName.val())) {
                setInValidStyleToNickName('닉네임에 이모티콘을 사용할 수 없습니다.');
                return false;
            }

            return true;
        }
		
			// 닉네임 중복 확인
			window.onload = () =>{
				document.getElementById('nickName').addEventListener('change', function(){
					const currentNickName = document.getElementById('currentNickName');
						if(this.value.trim() == ''){
							currentNickName.innerText = '현재 닉네임 : ${ loginUser.nickName }';
							currentNickName.style.color = 'black';
						} else{
							$.ajax({
						 		url: '${contextPath}/checkNickname.me',
								data: {nickName:this.value.trim()},
								success: data =>{
									console.log(data);
									if(data == 'yes'){
										currentNickName.innerText = '멋진 닉네임이랑께~';
										currentNickName.style.color = 'green';
										
									} else if(data == 'no'){
										currentNickName.innerText = "이건 안된당께~";
										currentNickName.style.color = 'red';
						 			}
								},
								error: data =>{
									console.log(data);
								}
							});
						}
				});	
			
			}
		// 닉네임 완료 활성화
		
		$("#nickName").keyup(function (e) {
             e.preventDefault();
             var nickName = $("#nickName");
             var nickNameLength = nickName.val().length;

             if (nickNameLength > 0) {
                 $("#change-nickName-finish-btn").attr('class', 'n-btn btn-sm btn-accent');
                 $("#change-nickName-finish-btn").prop('disabled', false);
             } else {
                 $("#change-nickName-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                 $("#change-nickName-finish-btn").prop('disabled', true);
             }
         });
		
		$("#nickName").focusout(function (e){
			e.preventDefault();
			var nickName = $("#nickName");
			var checkNickName = nickName.val().trim();
			
			if (checkNickName > 1){
				$("#change-nickName-finish-btn").attr('class', 'n-btn btn-sm btn-accent disabled');
                $("#change-nickName-finish-btn").prop('disabled', true);
			} else {
				$("#change-nickName-finish-btn").attr('class', 'n-btn btn-sm btn-accent');
                $("#change-nickName-finish-btn").prop('disabled', false);
			}
			
		});
		
			
		// 이메일		
			
		// 이메일	변경 창
		var emailArea = document.getElementById("email-area"); // 이메일 테이블
		var changeEmailBtn = document.getElementById("change-email-btn"); // 이메일 변경 버튼
		var changeEmailArea = document.getElementById("change-email-area"); // 이메일 수정 테이블
		var	changeEmailCancelBtn = document.getElementById("change-email-cancel-btn"); // 이메일 취소 버튼
	
		changeEmailBtn.addEventListener("click", showChangeEmailArea);
		
		function showChangeEmailArea() {
			  var changeEmailArea = document.getElementById("change-email-area");
			  	emailArea.style.display = "none";
			  	changeEmailArea.style.display = "table-row";
		}
		
		changeEmailCancelBtn.addEventListener("click", cancelChangeEmailArea);
		
		function cancelChangeEmailArea() {
			var cancelEmailArea = document.getElementById("email-area");
				emailArea.style.display = "table-row";
				changeEmailArea.style.display = "none";
		}
		
		// 이메일 인증 버튼 활성화
		 $("#email").keyup(function (e) {
             e.preventDefault();
             var email = $("#email");
             var emailLength = email.val().length;

             if (emailLength > 0) {
                 $("#send-authentication-email").attr('class', 'n-btn btn-sm btn-accent');
                 $("#send-authentication-email").prop('disabled', false);
             } else {
                 $("#send-authentication-email").attr('class', 'n-btn btn-sm btn-accent disabled');
                 $("#send-authentication-email").prop('disabled', true);
             }
         });
		
		 var code = "";  /*인증번호 저장할 곳*/
		 $('#send-authentication-email').click(function() {
		 	var email = $('#email').val();  /*입력한 이메일*/
		 	console.log('완성된 이메일 : ' + email); /* 이메일 오는지 확인*/
		 	var checkInput = $('#email-authTempKey'); /* 인증번호 입력 */

		 	$.ajax({
		 		type: 'GET',
		 		url: 'mailCheck.me?email=' + email, /*url을 통해 데이터를 보낼 수 있도록 GET방식, url명을 "mailCheck"로 지정 */
		 		success: function(data) {
		 			console.log('data : ' + data);
		 			checkInput.attr('disabled', false); /*데이터가 성공적으로 들어오면 인증번호 입력란이 활성화되도록*/
		 			code = data;
		 			alert('인증번호가 전송되었습니다.');
		 		},
		 		
		 	

	 	});
		 	
	});
		 
	</script>
	

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>