<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성 테스트</title>
<style>
/* ck에디터 */
.ck.ck-editor{
	max-width: 800px;
}
.ck-content {
    height: 500px;
}
</style>
<script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>
</head>
<body>

<!-- 테스트 리뷰게시판 -->
<div class="review-wrapper">
	<h1>리뷰 작성</h1>
	<textarea name="review_form" id="editor"></textarea>
</div>
<button id="submit">Submit</button>

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
</body>
</html>