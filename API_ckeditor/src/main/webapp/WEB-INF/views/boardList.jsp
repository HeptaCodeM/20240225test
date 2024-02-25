<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>전체 게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container" style="margin: 200px auto;">	
		<h3>전체 게시판</h3>				
		<form>
			<table class="table table-hover">
			<thead>				
				<tr>
					<th>NO</th>
					<th>제목</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="vo" items="${lists}">
				<tr>
					<th>${vo.seq }</th>
					<th><a href="./boardDetail.do?seq=${vo.seq }">${vo.title}</a></th>
				</tr>
			</c:forEach>
			</tbody>
			
			<tfoot>
				<tr>
					<td>
					<input type="button" value="게시글 등록" onclick="location.href='./writeBoard.do'">
					</td>
				</tr>
			</tfoot>
			</table>
		</form>		
	</div>

</body>
</html>