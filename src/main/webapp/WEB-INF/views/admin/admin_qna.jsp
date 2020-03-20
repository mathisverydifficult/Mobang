<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="resources/css/bootstrap.min.css"> 
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">

  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>

<title>관리자 계정관리</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/admin/header.jsp"/>

<div class="container">


	<table class="table table-hover">
		
		<tr>
			<th>선택</th>
			<th>글번호</th>
			<th>작성자</th>
			<th>글구분</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty list }">
				<tr><td colspan="6">"작성된 글이 존재하지 않습니다."</td></tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list }" var="dto">
					<tr>
						<td><input type="checkbox"/></td>
						<td>${dto.seqQ }</td>
						<td>${dto.email }</td>
						<td>${dto.titletQ }</td>
						<td><a href ="qna_selectone.admin?seqQ=${dto.seqQ }">${dto.titleQ }</a></td>
						<td>${dto.dateQ }</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="6" align="right">
				<input type="button" value="글작성" onclick="location.href='qna_insertform.admin'">
			</td>
		</tr>
	</table>

	<div class="text-center">
		<ul class="pagination">
		  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		  <li class="page-item"><a class="page-link" href="#">1</a></li>
		  <li class="page-item active"><a class="page-link" href="#">2</a></li>
		  <li class="page-item"><a class="page-link" href="#">3</a></li>
		  <li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
		
	
	</div>


</div>



</body>
</html>