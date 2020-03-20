<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/user/css/room_search.css">
<jsp:include page="/WEB-INF/views/user/header.jsp"/>

</head>
<body>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a8ded785b631dc1b3efa28d959d4d6d5&libraries=services"></script>

<div class="container">
	<form>
		<div class="searchheader">
			<div class="keyword">
				<input type="text" name="keyword" placeholder="잠실동" class="searchbar"/>
				<a onclick="return submit()">검색</a>
			</div>
			<div class="filter">
				<div class="smallfilter">
					<div class="seperate">
						<span>원룸, 투·쓰리룸, 오피스텔</span>
					</div>
				</div>
				<div class="smallfilter">
					<div class="seperate">
						<span>월세, 전세, 매매</span>
					</div>
				</div>
				<div class="smallfilter">
					<div class="seperate">
						<span>가격대</span>
					</div>
				</div>
				<div class="smallfilter">
					<div class="seperate">
						<span>관리비</span>
					</div>
				</div>
				<div class="smallfilter">
					<div class="seperate">
						<span>방크기</span>
					</div>
				</div>
			</div>
			
		</div>
		
	</form>		
	
		<div class="all">
			<div class="row">
				<div class="col-sm-6">
					<div class="left">
						<ul class="list">
							<li class="each">
								<div class="room">
									<div class="favorite">
									</div>
									<a>
										<div class="photo"></div>
										<p id="roomtitle"></p>
										<p id="price"></p>
										<p id="explain"></p>
									</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div id="map" style=" width:500px;height:400px;"></div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new kakao.maps.InfoWindow({zIndex:1});
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.271, 127.435),
			level: 7
		};

		var map = new kakao.maps.Map(container, options);	//지도 생성
		
		var ps = new kakao.maps.services.Places();	//장소 검색 객체 생성
		
		ps.keywordSearch('강남', placesSearchCB);	//키워드로 장소를 검색
		
		//키워드 검색 완료 시 호출되는 콜백함수
		function placesSearchCB(data, status, pagination) {
			if(status === kakao.maps.services.Status.OK) {
				
				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
		        // LatLngBounds 객체에 좌표를 추가합니다
		        var bounds = new kakao.maps.LatLngBounds();

		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
		        }
		        
		        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다.
		        map.setBounds(bounds);
			}
		}
		
		//지도에 마커를 표시하는 함수입니다
		function displayMarker(place){
			
			//마커를 생성하고 지도에 표시합니다
			var marker = new kakao.maps.Marker({
				map: map,
				position: new kakao.maps.LatLng(place.y, place.x)
			});
			
			//마커에 클릭이벤트 등록
			kakao.maps.event.addListener(marker, 'click', function() {
				//마커를 클릭하면 장소명이 인포 윈도우에 표출
				infowindow.setContent('<div style="padding:5px; font-size:12px;">' + place.place_name + '</div>');
				infowindow.open(map, marker);
			});
		}
	</script>

</body>
</html>





