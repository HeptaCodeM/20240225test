<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
	th, .content {
			    border: 1px solid #ddd;
			    padding: 8px;
			    text-align: left;
	}
</style>
</head>
<body>
	<div class="container" style="width: 1200px; margin: 100px auto;">
	<table style="width: 100%; border-collapse: collapse;">
		<tr>
			<th>제목</th>
			<th>${vo.title }</t>
		</tr>
		<tr>
			<td colspan="2">
				<div class="content" style="height: 300px">${vo.content }</div>	
			</td>
		</tr>
	</table>
	<button class="btn btn-default" onclick="history.back(-1)">돌아가기</button>
	</div>
</body>
</html>