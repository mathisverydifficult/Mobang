<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>글쓰기 페이지</h1>

<form action="qna_insert.admin" method="post">
	
		
			<label>작성구분</label>
			<input type="text" name="titletQ"/> <br/>
			
			<label>제목</label>
			<input type="text" name="titleQ"/> <br/>
		
			<label>내용</label>
			<input type="text" name="contentQ"/> <br/>
		
		
			<input type="submit" value="글작성"/>
			<input type="button" value="취소" onclick="location.href='admin_qna.admin'"/>
	

</form>

</body>
</html>