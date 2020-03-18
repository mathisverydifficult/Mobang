<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/user/css/favorite_recent.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>




<title>Insert title here</title>
</head>
<jsp:include page="/WEB-INF/views/user/header.jsp"/>

<body>

<div class="container">
	
</div>

<!-- rgb(51, 85, 139) 모방 메인색깔 -->
<div class="jumbotron text-center" style="background-color:#33558B;">
  <h1 style="color: white; font-style: inherit;">최근 본 방</h1>
  
</div>

<div class="container">
	
		<div class="page-header">
	    	<h3 class="text-left">최근 본 방</h3>
	    </div>
</div>           
<div class="container">
		<p style="float: left;">총 34개의 최근 본 방이 있습니다.</p>
		<p style="float: right;">최근 본 방은 최대 50개까지 저장됩니다.</p>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-3"> <!--  style="border: 1px solid black;" -->
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1" style= "margin-bottom: 20px;">
      <div>
      	<p>아파트</p>
      	<p style="font-size: 20px; font-weight: bold;">월세 300/30</p>
		<p>5층 42.7제곱</p>
		<p>내용 ....</p>
      </div>  
    </div>
    
    <div class="col-sm-3"> <!--  style="border: 1px solid black;" -->
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1" style= "margin-bottom: 20px;">
      <div>
      	<p>아파트</p>
      	<p style="font-size: 20px; font-weight: bold;">월세 300/30</p>
		<p>5층 42.7제곱</p>
		<p>내용 ....</p>
      </div>  
    </div>
    <div class="col-sm-3"> <!--  style="border: 1px solid black;" -->
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1" style= "margin-bottom: 20px;">
      <div>
      	<p>아파트</p>
      	<p style="font-size: 20px; font-weight: bold;">월세 300/30</p>
		<p>5층 42.7제곱</p>
		<p>내용 ....</p>
      </div>  
    </div>
    <div class="col-sm-3"> <!--  style="border: 1px solid black;" -->
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1" style= "margin-bottom: 20px;">
      <div>
      	<p>아파트</p>
      	<p style="font-size: 20px; font-weight: bold;">월세 300/30</p>
		<p>5층 42.7제곱</p>
		<p>내용 ....</p>
      </div>  
    </div>
  </div>
</div>
<div class="container">
	<div class="page-header">
    	<h3 class="text-center">관심있는 방이 같은 룸메이트</h3>
    </div>  
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 1</h3>
      <div class="row">
      	<div class="col-sm-9">
      		<p>같이살면 피곤할 수 있겠지만 재밌을거야...^^ 잘 지내보자 우리 후후</p>
      	</div>
      	<div class="col-sm-3">
      		<button type="button" class="btn btn-info">Info</button>
      	</div>    
      </div>
      
    </div>
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 2</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
    </div>
  </div>
</div>

<div class="container">
	<div class="page-header">
    	<h3 class="text-center">신규로 등록한 룸메이트</h3>
    </div>  
</div>


<div class="container" style="padding-bottom: 70px;">
  <div class="row">
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 1</h3>
      <div class="row">
      	<div class="col-sm-9">
      		<p>같이살면 피곤할 수 있겠지만 재밌을거야...^^ 잘 지내보자 우리 후후</p>
      	</div>
      	<div class="col-sm-3">
      		<button type="button" class="btn btn-info">Info</button>
      	</div>    
      </div>
      
    </div>
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 2</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
    </div>
    <div class="col-sm-3">
      <img src="resources/user/img/cat4.png" class="img-thumbnail" alt="cat1">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
    </div>
  </div>
</div>



<footer class="container-fluid">
	<div class="container">
		<p>Footer Text</p>
	</div> 
</footer>




</body>
</html>