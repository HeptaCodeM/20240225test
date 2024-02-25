<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시글 작성</title>
<!-- CKEditor CSS 연결 -->
<link rel="icon" type="image/png" href="https://c.cksource.com/a/1/logos/ckeditor5.png">
<link rel="stylesheet" type="text/css" href="./css/styles.css">
<!-- BootStrap 연결 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body data-editor="ClassicEditor" data-collaboration="false" data-revision-history="false">

<header>
	<div class="centered">
		<h1>CKeditor5 API 테스트</h1>
	</div>
	</header>
	
	<div id="container" class="centered">
	<form action="./write.do" method="post">
		<table width="640">
			<colgroup>
				<col width="100">
				<col width="540">
			</colgroup>
			<tr>
				<td>제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</td>
				<td><input type="text" id="title" name="title"></td>
			</tr>
			<tr>
				<td colspan="2">
					<div>
						<textarea id="editor" name="content"></textarea> <!-- id 및 name 필수 -->
					</div>
				</td>
			</tr>
		</table>
	</form>		
		<button class="btn btn-default" onclick="writeBoard()">글작성</button>		
	</div>


<!-- script 연결은 하단에 적용 -->
<script src="./ckeditor5/build/ckeditor.js"></script>
<script src="./js/script.js"></script>
<script src="./js/data.js"></script>
</body>
</html>