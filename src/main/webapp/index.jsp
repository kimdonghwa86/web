<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<c:url  var="bootstrap" value="/node_modules/bootstrap/dist/css/bootstrap.css"/>
<c:url var="jquery" value="/node_modules/jquery/dist/jquery.js"/>

<link rel="stylesheet" href="${bootstrap}"/>     				 <!-- 버튼색깔이 간지, 경로 유의 -->
<script type="text/javascript" src="${jquery}"></script>



<style type="text/css">
		
		@keyframes xxx {
			from: { opacity : 0.0;
		}
		
				to {
			background-color: red;
			opacity: 1.0;
			transform : rotateX(360deg);
			
			}
		
		}
		h1 {
			animation: xxx 2s;
		}
</style>
</head>
<body>

	<h1 id="tomcat">홈페이지의 로고를 만들수있다.<br><tr>
		X방향으로 360도 회전ㅋ</h1>
<script type="text/javascript">
	tomcat.onclick = function(){
		alert("WOW!! 정상작동중입니다.");
	}

</script>

<ol>
	<li><a href="map/map2.jsp">map2.jsp</a></li> <!-- 앵커테그 -->
	<li><a href="map/myLocation.jsp">myLocation.jsp</a></li>
	<li></li>
	<li></li>
	

</ol>




</body>
</html>