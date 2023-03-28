<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>리뷰작성 테스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
.review-form{
	width:860px;
	margin:0 auto;
}
.review-form h1{
	text-align: center;
}
.review-form .title{
	margin:20px 0;
}
.form-control{
	border-radius: 2px;
}
#editor{
	margin: 0 auto;
	border:1px solid blue;
}
button#submit{
	margin:30px auto;
	display:block;
}

/* ck에디터 */
.ck-content {
    height: 500px;
}
</style>
<script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>
</head>
<body>

<!-- 테스트 리뷰게시판 -->
<div class="review-form">
	<h1>리뷰 작성</h1>
	
	<div class="title">
		<input type="text" class="form-control form-control-lg" placeholder="제목">
	</div>
	<textarea name="review_form" id="editor"></textarea>
	
	<button type="button" class="btn btn-outline-primary mb-2" id="submit">작성하기</button>	
</div>

<script>
ClassicEditor.create(document.querySelector('#editor'))
.then( editor => { 
	console.log( editor ); 
} ) 
.catch( error => { 
    console.error( error ); 
} );
//Assuming there is a <button id="submit">Submit</button> in your application.
document.querySelector( '#submit' ).addEventListener( 'click', () => {
    const editorData = editor.getData();
} );
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>