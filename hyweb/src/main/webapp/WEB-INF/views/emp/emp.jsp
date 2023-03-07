<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원관리 프로그램</h1>
<form name="empAdd" action="empAdd.hy">
<fieldset>
	<legend>사원 등록</legend>
	<table>
	<tr>
				<th>사원이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>E-mail</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>부서명</th>
				<td><input type="text" name="dept"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="사원등록">
					<input type="reset" value="다시작성">
				</td>
			</tr>
	</table>
</fieldset>
</form>
</body>
</html>