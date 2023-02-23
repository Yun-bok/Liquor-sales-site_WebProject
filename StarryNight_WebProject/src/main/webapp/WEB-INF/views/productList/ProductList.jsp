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
<title>상품목록</title>
<style>
body{
	font-family:ParkYongJun;
}
.prod_container{
	display: flex;
	flex-flow: row wrap;
	justify-content: space-evenly;
	align-content: flex-start;
}
.prods{
	flex-basis: 30%;
	word-wrap: break-word;
	flex: 1 1 30%;
}
.prod_rep p{
	word-wrap: break-word;
	justify-content: center;
}
section{
	height: 700px;
}
.clear{
	clear: both;
}
.box{
	width: 1320px;
	margin: 0 auto;
}
#content_box{
	width: 1320px;
	height: 800px;
	margin: 0 auto;
	padding-top: 50px;
}
.box p{
	float: right;
}

   
#content_box h3{
	float: left;
	margin-left: 600px;
}
#content_box p{
	float: right;
}
.items{
	width: 400px;
	float: left;
	margin: 30px 0 0 40px;
}
.items .prodname{
	font-weight: bold;
	margin-top: 20px;
}
.items .prodprice{
	font-weight: bold;
	margin-top: 10px;
}
<%--.items .prodimg{
	
}--%>
aside#aside{
	float: left;
	width: 250px;
}
aside#aside h3{
	font-size: 22px;
	margin-bottom: 20px;
	text-align: center;
}
aside#aside li{
	font-size: 15px;
	text-align: center;
}
aside#aside li a {
	display: block;
	padding: 12px 0;
}
aside#aside li a:hover{
	text-decoration: none;
	background: #233067;
}

aside#aside li{
	position: relative;
}
aside#aside li:hover{
	background:#233067;
}
aside#aside li > ul.low{
	display:none;
	position: absolute;
	top: 0;
	left: 160px;
}
aside#aside li:hover > ul.low{
	display: block;
	width: 180px;
}
aside#aside li:hover > ul.low li a{
	background:#233067;
	border: 1px solid #233067;
}
aside#aside li:hover > ul.low li a:hover{
	background: #1A5AC1;
}
aside#aside li > ul.low li{
	width: 180px;
}
.product_img {
	width: 100px;
	display: inline-block;
}
td:nth-of-type(3){
	color: #f1c40f;
	font-weight: 900;
}

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
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<br><br><br><br>
<aside id="aside">
	<%@ include file="aside.jsp" %>
</aside>
<form method="post">
<div class="prod_container">
	<c:forEach var="prod" items="${product}">
		<div class="prods">
			<div class="prods_rep">
				<p><a href="${path}/ProductDetail.do?product_no=${prod.product_no}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="${path}/ProductImg/${prod.product_img }" class="product_img"></a></p>
				<p style="font-weight:bold;"><a href="${path}/ProductDetail.do?product_no=${prod.product_no}">${prod.product_name }</a></p>
				<p style="font-size:20px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${prod.product_price}원</p>
			</div>
		</div>
	</c:forEach>
</div>
</form>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>