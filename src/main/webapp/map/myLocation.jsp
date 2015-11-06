<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8"/> 													
<meta name="viewport" content="width=device-width, initial-scale=1.0"/> <!-- 싱글테그 -->
<title>myLocaction.jsp</title>


<!-- /web/node_modules/bootstrap/dist/css/bootstrap.css-->
<!-- /web/node_modules/jquery/dist/jquery.js -->

<c:url  var="bootstrap" value="/node_modules/bootstrap/dist/css/bootstrap.css"/>
<c:url var="jquery" value="/node_modules/jquery/dist/jquery.js"/>

<link rel="stylesheet" href="${bootstrap}"/>     				 <!-- 버튼색깔이 간지, 경로 유의 -->
<script type="text/javascript" src="${jquery}"></script>
<script	src="https://maps.googleapis.com/maps/api/js"></script>  <!-- 맵을 보기위한 스크립트 -->
<style type="text/css">			
	html, body, #map{
		width : 100%;
		height : 100%;
	}	

</style>
<script type="text/javascript">


//준비핸들러
$(document).ready(function() {
	
	var options = {
			zoom : 16,
			center : {lat:0, lng :0}
	};
	
	var m = new google.maps.Map(map, options);
	
	
	$('button').click(function(){
		console.log("버튼을 클릭했습니다...");
//		alert("버튼을 클릭했습니다...");
	navigator.geolocation.getCurrentPosition(function(position){
		console.dir(position);
		console.log("latitude = " + position.coords.latitude);
		console.log("longitude = " + position.coords.longitude);
		m.setCenter({
			lat : position.coords.latitude,
			lng : position.coords.longitude
		});  
	}, function(error){
		console.dir(error);
	});
	
	});
});

</script>


</head>
<body>

<button class="btn btn-primary">이동</button>     				<!-- 부트스트렙으로 인해서 버튼이 이뻐짐 -->
<div id="map"> google Map!! 나와라 이얍!! </div>




</body>
</html>