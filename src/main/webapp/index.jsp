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

<link rel="stylesheet" href="${bootstrap}"/>     				 <!-- ��ư������ ����, ��� ���� -->
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

	<h1 id="tomcat">Ȩ�������� �ΰ� ������ִ�.<br><tr>
		X�������� 360�� ȸ����</h1>
<script type="text/javascript">
	tomcat.onclick = function(){
		alert("WOW!! �����۵����Դϴ�.");
	}

</script>

<ol>
	<li><a href="map/map2.jsp">map2.jsp</a></li> <!-- ��Ŀ�ױ� -->
	<li><a href="map/myLocation.jsp">myLocation.jsp</a></li>
	<li></li>
	<li></li>
	

</ol>




</body>
</html>