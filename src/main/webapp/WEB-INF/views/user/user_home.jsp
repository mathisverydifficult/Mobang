<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/user/css/user_home.css">
</head>
<jsp:include page="/WEB-INF/views/user/header.jsp"/>
<body>
<div class="container">
	<div class="title">
		<p class="word">어디 살래요?</p>
		<div class="search">
			<input type="text" name="keyword" class="searchbar">
			<button>방 찾기</button>
		</div>
	</div>
	<div class="firstpara">
	<a href="review.user">리뷰</a>
		<div>
			<span>추천방</span>
		</div>
		<div>
			<div class="viewsection">
				<div class="picturepart">
					<div class="part">
						<a class="picture" href=""></a>
						<a class="picturetitle" href=""></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="secondpara">
		<div>
			<span>최근 본 방</span>
			<span style="float:right;"><a href="">모두보기></a></span>
		</div>
		<div>
			<div class="viewsection">
				<div class="part">
					<a class="picture"></a>
					<a class="picturetitle"></a>
				</div>
			</div>
		</div>
	</div>
	<div class="thirdpara">
		<div>
			<span>찜한 방</span>
			<span><a href="" style="float:right;">모두보기></a></span>
		</div>
		<div>
			<div class="viewsection">
				<div class="part">
					<a class="picture"></a>
					<a class="picturetitle"></a>
				</div>
			</div>
		</div>
	</div>
	
</div>
</body>
</html>