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
.intro{
	width: 40%;
	height: 60px;
	margin: 50px 350px 20px 670px; 
	border: 2px solid #233067;
	border-radius: 8px;
}
.intro h2{
	text-align: center;
	padding: 13px;
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
	width: 210px;
    margin-top: 40px;
	margin-left: 60px;
	padding-left: 10px;
}
.tb{
	padding: 20px 40px 0px 40px;
}
table {
	border-collapse: collapse;
	width: 100%;
}
th, td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}
tr:hover {
	background-color: #f1c40f;
}
#regBtn{
	float : right;
	margin: 20px 40px;
	padding: 5px 28px;
	border-radius: 4px;
	font-size: medium;
	background-color: white; 
  	color: black; 
  	border: 2px solid #f1c40f;
}
#regBtn:hover {
  background-color: #f1c40f;
  color: white;
}
</style>
<script type="text/javascript">
	function goInsert(){
		location.href="${path}/eventInsertForm.do"
	}
	function goDetail(event_no){
		location.href="${path}/eventDetail.do?event_no="+event_no;
	}
</script> 
<meta charset="UTF-8">
<%-- 상단 타이틀 제목 --%>
<title>StarryNight</title>
</head>
<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<div class="intro">
	<h2>관리자님 안녕하세요!</h2>
</div>
<div class="container">
        <div class="navi">
        	<ul>
			  <li><a href="${path}/memberList.do">회원 상세 정보</a></li>
			  <li><a href="${path}/AdminProduct.do">상품 정보</a></li>
			  <li><a href="#">매장 정보</a></li>
			  <li><a href="${path}/eventList.do">이벤트 정보</a></li>
			</ul>
        </div>
        <div class="row">
        	<h2>이벤트 정보 조회</h2>
        	<div class="tb">
        		<table>
        			<tr>
        				<th>No.</th>
        				<th>이벤트명</th>
        				<th>이벤트기간</th>
        				<th>등록일</th>
        			</tr>
        			<c:forEach var="ev" items="${eventList}">
	        			<tr onclick="goDetail(${ev.event_no})">
	        				<td>${ev.event_no}</td>
	        				<td>${ev.event_title}</td>
	        				<td>
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${ev.event_stDate}"/> ~ 
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${ev.event_dueDate}"/> 
	        				</td>
	        				<td>
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${ev.event_regDate}"/>
	        				</td>
	        			</tr>
        			</c:forEach>
        		</table>
        		<button id="regBtn" type="button" onclick="goInsert()">이벤트 등록</button>
        	</div>
        </div>
    </div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>