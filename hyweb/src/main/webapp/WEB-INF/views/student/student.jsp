<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	text-align: center;
}
.btn{
	width:600px;
	margin:auto;
	text-align: right;
}
form{
	width:600px;
	margin:30px auto;
	text-align: center;
	font-size:14px;
}
.paging{
	width:600px;
	margin:auto;
	text-align: center;
}
</style>
</head>
<body>
<h1>학생 성적관리 프로그램</h1>
<form name="studentList">
<fieldset>
	<legend>학생 목록보기</legend>
	<h3><a href="studentList.do">모든 학생 내역보기</a></h3>
</fieldset>
</form>

<form name="studentAdd">
<fieldset>
	<legend>학생 성적 등록하기</legend>
		<table>
		<tr>
			<th>학생 이름</th>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<th>국어 성적</th>
			<td><input type="text" name="kor"></td>
		</tr>
		<tr>
			<th>수학 성적</th>
			<td><input type="text" name="mat"></td>
		</tr>
		<tr>
			<th>영어 성적</th>
			<td><input type="text" name="eng"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="성적등록">
				<input type="reset" value="다시작성">
			</td>
		</tr>
	</table>
</fieldset>
</form>
</body>
</html>