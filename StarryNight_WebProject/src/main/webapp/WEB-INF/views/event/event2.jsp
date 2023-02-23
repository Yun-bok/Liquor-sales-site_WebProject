<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style type="text/css">
* {
    font-family: 'ParkYongJun';
}
.event{
	background-color: #15aae2;;
	text-align: center;
}
.container{
	width: 100%;
	height: 1050px;
	background-color: #15aae2;;
}
.row{
	width: 80%;
	height: 10px;
	background: #233067;
	margin: 0px auto;
}
.evContent{
	width: 85%;
	height: 500px;
	margin: 30px auto;
	padding: 10px 89px;
	text-align: center;
	color: #233067;
}
#aImg{
	width: 30%;
	margin-left: 10px;
	height: 600px;
}
</style>
<script type="text/javascript">

</script> 
<meta charset="UTF-8">
<%-- 상단 타이틀 제목 --%>
<title>StarryNight</title>
</head>
<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<div class="event">
	<img id="evImg" src="${path}/evImg/august_event.png">	
</div>
<div class="container">
     <div class="row"></div>
	 <div class="evContent">
	 	<h1>${event.event_title}</h1>
	 	<h2>이벤트 기간 : <fmt:formatDate pattern="yyyy-MM-dd" value="${event.event_stDate}"/> ~ <fmt:formatDate pattern="yyyy-MM-dd" value="${event.event_dueDate}"/></h2>
	 	<h1>${event.event_content}</h1>
	 	<h2>당첨자 : 각 1명(샴페인(10만원 상당), 위스키(10만원 상당))</h1>
	 	<br>
		<img id="aImg" src="${path}/evImg/3.png">	
		<img id="aImg" src="${path}/evImg/4.png">	
	 </div>
</div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>