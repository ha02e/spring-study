<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/mainLayout.css">
<style>
</style>
<script>
function loginPopup(){
	window.open('loginForm.hy','login','width=500px,height=400px');
}

function show(){
	var pTag=document.all.ptag;
	pTag.innerHTML='<h3 style="color:blue;">안녕하세요, 반갑습니다~!!</h3>'
	
}
</script>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>   

<c:if test="${empty sessionScope.userid}">
	<div class="navbar-nav">
			<a class="nav-link" href="memberJoin.hy">회원가입</a>&nbsp;&nbsp;
			<a class="nav-link" href="javascript:loginPopup();">로그인</a>
	</div>
</c:if>
<c:if test="${! empty sessionScope.userid}">
	<div class="navbar-nav">
			${sessionScope.username}님 로그인중&nbsp;|&nbsp;
			<a class="nav-link" href="logout.hy">로그아웃</a>
	</div>
</c:if>


<input type="button" value="click!" onclick="show()">
<p id="ptag">▲ Click!!</p>

<%@include file="/WEB-INF/views/footer.jsp"%> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>