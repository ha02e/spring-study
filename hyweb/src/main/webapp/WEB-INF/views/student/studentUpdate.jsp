<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${lists.idx}번 학생 성적 수정</h1>
<form name="studentUpdate" action="studentUpdate.hy" method="post">
<input type="hidden" name="idx" value="${lists.idx}">
<fieldset>
	<table>
		<tr>
			<td>학생번호</td>
			<td>${lists.idx}번</td>
		</tr>
		<tr>
			<td>학생이름</td>
			<td><input type="text" name="name" value="${lists.name}"></td>
		</tr>
		<tr>
			<td>국어성적</td>
			<td><input type="text" name="kor" value="${lists.kor}"></td>
		</tr>
		<tr>
			<td>수학성적</td>
			<td><input type="text" name="mat" value="${lists.mat}"></td>
		</tr>
		<tr>
			<td>영어성적</td>
			<td><input type="text" name="eng" value="${lists.eng}"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="수정하기">
			</td>
		</tr>
	</table>
</fieldset>
</form>
</body>
</html>