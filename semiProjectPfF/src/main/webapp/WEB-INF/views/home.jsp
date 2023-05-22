<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Home</title>
<script src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
<c:set value="${ pageContext.servletContext.contextPath }" var="contextPath" scope="application"/>
	
	<c:if test="${ loginUser eq null }" >
		<a href="${ contextPath }/loginView.me"><button>로그인</button></a>
	</c:if>
	<c:if test="${ loginUser != null }">
		<a href="${ contextPath }/logout.me"><button>로그아웃</button></a>
		<br>
		<p>${ loginUser.memberNickName }님, 환영합니다.</p>
	</c:if>
	<form action="productList.pr">
	<input type="text" name="productType">
	<input type="submit">
	</form>
	<a href="${ contextPath }/statistics.ad"><button>통계</button></a>
	<a href="${ contextPath }/paymentView.pay">결제</a>
	<a href="${ contextPath }/checkPayment.ad">관리자 주문 조회</a>
	<hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/><hr/>
<%@ include file="common/footer.jsp" %>
</body>
</html>
