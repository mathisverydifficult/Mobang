<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/login/css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-6 col-md-4"></div>
			<div class="col-xs-6 col-md-4" id="main">
				<h2><a href="#">모방</a>｜ 로그인</h2>
				<hr class="hr"/>
				<form role="form" action="">
					<div class="form-group">
						<label>아이디</label> <input type="text" class="form-control" placeholder="아이디를 입력하세요.">
					</div>
					<div class="form-group">
						<label>비밀번호</label> <input type="password" class="form-control" placeholder="비밀번호를 입력하세요.">
						<div class="pwfind">
							<span id="pwfind_span"><a id="pwfind_a" href="#">비밀번호 찾기</a></span>
						</div>
					</div>
					<div class="button_group">
						<input class="login_btn" type="submit" value="로그인">
						<input class="sns_btn" id="kakao" type="button" value="카카오톡 로그인">
						<input class="sns_btn" id="google" type="button" value="구글 로그인">
					</div>
					<div class="signup">
						<span>회원이 아니세요?</span><br/>
						<span>공인중개사라면?</span>
					</div>
					<div class="signup_click">
						<a href="">이메일로 회원가입</a><br/>
						<a href="">공인중개사 회원가입</a>
					</div>
				</form>				
			</div>
			<div class="col-xs-6 col-md-4"></div>
		</div>
	</div>
</body>
</html>