<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Category</title>
<style>
</style>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
<%-- 
	
--%>   
});
</script>
</head>

<body>

<h3>카테고리</h3>
	<ul>
		<li><a href="alcoholList.do">날씨</a>
			<ul class="low">
				<li><a href="weatherProd.do?w_category=맑음">맑음</a></li>
				<li><a href="weatherProd.do?w_category=흐림">흐림</a></li>
				<li><a href="weatherProd.do?w_category=비">비</a></li>
				<li><a href="weatherProd.do?w_category=눈">눈</a></li>
				<li><a href="weatherProd.do?w_category=강풍">강풍</a></li>
			</ul>
		</li>
		
		<li><a href="alcoholList.do">주류 종류</a>
			<ul class="low">
				<li><a href="acProd.do?ac_category=와인">와인</a></li>
				<li><a href="acProd.do?ac_category=전통주">전통주</a></li>
				<li><a href="acProd.do?ac_category=맥주">맥주</a></li>
				<li><a href="acProd.do?ac_category=위스키">위스키</a></li>
				<li><a href="acProd.do?ac_category=사케">사케</a></li>
			</ul>
		</li>
	</ul>


</body>
</html>