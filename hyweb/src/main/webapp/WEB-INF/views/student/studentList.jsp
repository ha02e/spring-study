<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	text-align: center;
}
table{
	width:600px;
	margin:20px auto;
	text-align: center;
	border-collapse: collapse;
	font-size:14px;
}
table td,th{
	border: 1px solid #999999;
	border-spacing: 0;
	padding:4px 0;
}
.paging{
	width:600px;
	margin:auto;
	text-align: center;
}
</style>
</head>
<body>
<h1>모든 학생 목록</h1>
<table>
	<thead>
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>국어 성적</th>
		<th>수학 성적</th>
		<th>영어 성적</th>
		<th>총점</th>
		<th>평균</th>
	</tr>
	</thead>
	<tbody>
		<c:if test="${empty lists}">
		<tr>
			<td colspan="7" align="center">
			등록된 학생 정보가 없습니다.
			</td>
		</tr>
		</c:if>
		<c:forEach var="lists" items="${lists}">
		<tr>
			<td>${lists.idx}</td>
			<td>${lists.name}</td>
			<td>${lists.kor}</td>
			<td>${lists.mat}</td>
			<td>${lists.eng}</td>
			<td>${lists.total}</td>
			<td>${lists.avg}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>