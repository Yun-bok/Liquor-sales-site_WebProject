<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
* {
    font-family: 'ParkYongJun';
}
.intro{
	width: 40%;
	height: 60px;
	margin: 50px 350px 20px 670px; 
	border: 2px solid #233067;
	border-radius: 8px;
}
.intro h2{
	text-align: center;
	padding: 4px;
	margin: 0;
}
.container{
    width: 90%;
    margin: 10px auto;
}
.navi ul{
    border: 2px solid #233067;
    border-radius: 8px;
    float: left;
    margin: 0px 10px 10px 20px;
    padding: 36px 0px 30px 0px;
    width: 20%;
    height: 500px;
    box-sizing: border-box;
    background-color: white;
}
.navi li a {
  display: block;
  color: #000;
  padding: 10px 14px;
  margin : 0px 30px 60px 30px;
  text-decoration: none;
}
.navi li {
  text-align: center;
  border-bottom: 1px solid #555;
}
.navi li:last-child {
  border-bottom: none;
}
.navi li a.active {
	border-bottom: 5px solid #f1c40f;
 	color: black;
}
.navi li a:hover:not(.active) {
 	border-bottom: 5px solid #f1c40f;
 	color: black;
}
.row{
    border: 2px solid #233067;
    border-radius: 8px;
    float: left;
    margin-left: 20px;
    width: 75%;
    height: 500px;
    box-sizing: border-box;
    background-color: white;
}
.row h2{
	border-right: 4px solid #f1c40f;
	width: 160px;
	margin: 40px 10px 0px 60px;
	padding-left: 10px;
	padding-right: 10px;
}
.tb{
	padding: 20px 40px 0px 40px;
}
table {
	border-collapse: collapse;
	width: 1010px;
	margin-top: 20px;
	margin-bottom: 10px;
}
th, td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}
tr:hover {
	background-color: #f1c40f;
}
#uptBtn{
	float : right;
	margin: 15px 5px 20px 10px;
	padding: 6px 23px;
	border-radius: 4px;
	font-size: medium;
	background-color: white; 
  	color: black; 
  	border: 2px solid #f1c40f;
}
#uptBtn:hover {
  background-color: #f1c40f;
  color: white;
}
#revBtn{
	width: 100px;
	padding: 0px;
	border-radius: 4px;
	background-color: white; 
  	color: black; 
  	border: 2px solid #233067;
}
#revBtn:hover {
  background-color: #233067;
  color: white;
}

</style>
<script type="text/javascript">
function goReview(){
	$("form").submit();
}
</script> 
<meta charset="UTF-8">
<title>StarryNight</title>
</head>
<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<div class="intro">
	<h2>${member.name}님 안녕하세요!</h2>
</div>
<div class="container">
        <div class="navi">
        	<ul>
			 <li><a href="${path}/myInfo.do">회원 상세 정보</a></li>
			  <li><a href="${path}/orderInfo.do">주문 정보</a></li>
			  <li><a href="${path}/wishlist.do">위시리스트</a></li>
			  <li><a href="${path}/memberDelete.do">회원탈퇴</a></li>
			</ul>
        </div>
        <div class="row">
        	<h2>주문 정보</h2>
        	<div class="tb">
        		<table>
        			<tr>
        				<th>상품명</th>
        				<th>상품정보</th>
        				<th>주문일자</th>
        				<th>주문번호</th>
        				<th>주문금액</th>
        				<th>주문상태</th>
        			</tr>
        				<c:forEach var="mo" items="${memOrderList}">
	        			<tr>
	        				
	        				<td>${mo.product_name}</td>
	        				<td>${mo.product_info}</td>
	        				<td>
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${mo.order_date}"/>  
	        				</td>
	        				<td>${mo.order_no}</td>
	        				<td>
	        					<fmt:formatNumber pattern="###,###,###" value="${mo.order_amount}"/>
	        				</td>
	        				<c:choose >
	        					<c:when test="${mo.completed eq 1 && mo.pickup eq 0 && mo.cancel eq 0 && mo.exchange eq 0}">
	        						<td>결제완료</td>
	        					</c:when>
	        					<c:when test="${mo.completed eq 1 && mo.pickup eq 1 && mo.confirm eq 0}">
	        						<td>픽업예정</td>
	        					</c:when>
	        					<c:when test="${mo.completed eq 1 && mo.pickup eq 1 && mo.confirm eq 1}">
	        						<td>구매확정<br>
	        							<form action="InsertReviewForm.do" method="post">
	        							<input type="hidden" name="product_no" value="13">
	        							<button id="revBtn" type="button" onclick="goReview()">리뷰 작성</button>
	        							</form>
	        						</td>
	        					</c:when>
	        					<c:when test="${mo.completed eq 1 && mo.cancel eq 1}">
	        						<td>주문취소</td>
	        					</c:when>
	        					<c:when test="${mo.completed eq 1 && mo.exchange eq 1}">
	        						<td>상품교환</td>
	        					</c:when>
	        				</c:choose>
	        			</tr>
	        			</c:forEach>
        		</table>
        		<button id="uptBtn" type="button" onclick="document.getElementById('id01').style.display='block'" class="w3-button">교환요청</button>
        		<button id="uptBtn" type="button" onclick="">주문취소</button>
        		<button id="uptBtn" type="button" onclick="">구매확정</button>
        	</div>
        </div>
    </div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
<script type="text/javascript">

</script>
</body>
</html>