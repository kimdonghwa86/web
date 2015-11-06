<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 				<!-- 확대비율 -->
<title>map2.jsp</title>
<style type="text/css">
	html,body{
		width: 100%;							
		height: 100%;	
	}
	#map{
		width: 100%;    
		height: 100%;  
	
	}

</style>
</head>
<body>
<button id="loc1">매봉역</button>    <!-- 버튼을누르면지도로 이동하는 버튼을 선언한다. -->
<button id="loc2">이대역</button>
<button id="loc3">광화문</button>
<button id="loc4">동화집</button>

<div id="map">Google Map</div>


</body>

<script	src="https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript">
	var latLng = {    						 // 대략적인 위치정보 특정좌표로 이동할때 좌표를 모델링한....ㅡ_ㅡ;;
			lat : 37.12345, //위도
			lng : 127.12345 //경도
	};
	
	var options = {
			zoom : 12,		//확대의 정도(?)
			center : latLng //초기 지도를 가지고올 위치
			
	};

	var m = new google.maps.Map(map, options);    //구글에서 맵을가지고온것처럼보여준다.
	m.setCenter({
		lat : 0,      // 좌표
		lng : 0
		
	});
	m.setZoom(2);
	
	
	var geoCoder = new google.maps.Geocoder(); 	// 예)강남역으로 입력하면  서울특별시 강남구 서초동..... 이렇게 나옴
	
	
	function moveMap() {                                
		alert(this.id + " 으로 이동합니다.");    //웹에서 버튼을 누르면 해당 지역으로 이동한다. 확인용이므로 그닥 필요하지는않음
		switch (this.id) {
		case "loc1":
			console.log("매봉역으로...")
			
			geoCoder.geocode({address : "매봉역"}, function(result, status){
				console.dir(result);       //객체를 콘솔창에 모두 표시해준다
				console.dir(status);	  //객체를 콘솔창에 모두 표시해준다
				console.dir(geoCoder);		//좌표를 콘솔창에 모두 표시해준다
				
				var lat = result[0].geometry.location.lat();
				var lng = result[0].geometry.location.lng();
				console.log("lat = " + lat);
				console.log("lng = " + lng);
				
				m.setCenter({					//넘어가는 방식 기본
// 				//m.panTo({						//넘어가는 방식? 약간의 애니메이션 정도? 그런데 티가 안남 ㅡㅡㅋㅋ			
				lat : lat,      //매봉역 좌표
				lng : lng
				
				});					
				m.setZoom(17);   //줌크기
			});
		
			break;
		case "loc2":
			console.log("이대역으로...")
			
// 			geoCoder.geocode({address : "이대역"},function(result,status){
 			//m.setCenter({			
 			m.panTo({				  //넘어가는 방식? 약간의 애니메이션 정도? 그런데 티가 안남 ㅡㅡㅋㅋ
 				lat : 37.557016,      //이대역 좌표 37.557016, 126.945836
				lng : 126.945836
 			});
			m.setZoom(15);   //줌크기
			break;
			
		case "loc3":
			console.log("광화문역으로...")
			//m.setCenter({
			m.panTo({				  //넘어가는 방식? 약간의 애니메이션 정도?
				lat : 37.571874,      //광화문역 좌표 37.571874, 126.976404
				lng : 126.976404
			});
			m.setZoom(15);   //줌크기
			break;
		case "loc4":
			console.log("우리집으로...")
			//m.setCenter({				
			m.panTo({				  //넘어가는 방식? 약간의 애니메이션 정도?
				lat : 37.480299,      //우리집 좌표 37.480299, 127.046991
				lng : 127.046991
			});
			m.setZoom(20);   //줌크기
			break;
		default:
			break;
		}
	}
	
	
	loc1.onclick = moveMap;
	loc2.onclick = moveMap;
	loc3.onclick = moveMap;
	loc4.onclick = moveMap;
	
	
</script>		
</html>