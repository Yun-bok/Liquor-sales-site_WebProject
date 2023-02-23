<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>  
<%
	String email = (String)session.getAttribute("email");
%>   
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
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
	width: 184px;
    margin-top: 40px;
	margin-left: 60px;
	padding-left: 10px;
}
.memImg{
    float: right;
    margin: 30px 130px 0px 0px;
    padding: 0px 0px 30px 0px;
    width: 300px;
    height: 300px;
    box-sizing: border-box;
}
.memInfo{
    float: left;
    margin-top: 25px;
    margin-left: 80px;
    width: 540px;
    height: 320px;
    box-sizing: border-box;
}
#alcholImg{
	width: 300px;
	height: 300px;
	border: 1px solid #233067;
	border-radius: 4px;
}
.evForm * {
  box-sizing: border-box;
}
.evForm input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
.evForm label { 
  	padding: 8px 12px 16px 0;
  	display: inline-block;
}
.evForm input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}
.evForm input[type=submit]:hover {
  background-color: #45a049;
}
.evForm {
  border-radius: 5px;
  padding: 0px auto;
  margin: 0;
}
.col-25 {
    float: left;
    width: 25%;
    height: 40px;
    margin-top: 6px;
    margin-left: 20px;
    margin-right: 5px;
    text-align: center;
    /*border: 1px solid #ccc;*/
}
.col-30 {
  float: left;
  width: 30%;
  margin-top: 6px;
}
.col-60 {
  float: left;
  width: 60%;
  margin-top: 6px;
}
.evInput:after {
  content: "";
  display: table;
  clear: both;
}
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
#pswd, #pswdChk{
	 width: 100%;
	 height: 40px;
	 padding-left: 10px;
	 border: 1px solid #ccc;
	 border-radius: 4px;
}
#uptBtn{
	float : right;
	margin: 0px 55px 20px 10px;
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

body{
	font-family:ParkYongJun;
}

.main{
	float:center;
	margin-left:20px;
	height: 40px;
	font-size:18px;
}


tr:nth-child(even) {
  background-color: #2e2649;
  color: #f1c40f;
}
tr:nth-child(odd) {
  background-color: #233067;
  color: #f1c40f;
}
th {
  background-color: #342F44;
  color: #f1c40f;
}
.noBorder {
    border:none !important;
    font-size: 20px;
    height: 50px;
}
.name{
	width:300px;
	height:50px;
	font-size:18px;
	float: right;
}
.search{
	width: 50px;
	height: 40px;
	font-size:18px;
	float: right;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
   function chk(){
	   var nameVal = ${name}
   }

</script>
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
        	<h2>회원 목록</h2>
        	<form name="form">
				<input type="button" class="search" value="검색" onclick="chk()"/>
				<input type="text" class="name" name="name" size="18" placeholder="검색할 이름을 입력하세요" value="${param.name}">
			</form>
			<form name="form">
				<table border="1" width="890px">
					<col width="10%">
					<col width="20%">
					<col width="10%">
					<col width="20%">
			 		<col width="20%">
					<col width="20%">
			    <thead>
					<tr>
						<th>회원번호</th>
						<th>이메일</th>
						<th>회원명</th>
						<th>생년월일</th>
						<th>휴대폰번호</th>
						<th>주소</th>
					</tr>
				</thead>   
				<tbody>
					<c:forEach var="mem" items="${member}">
						<tr>
							<td class="noBorder">${mem.member_no}</td>
							<td class="noBorder">${mem.email}</td>
							<td class="noBorder">${mem.name}</td>
							<td class="noBorder"><fmt:formatDate value='${mem.birthDate}' pattern='yyyy-MM-dd'/></td>
							<td class="noBorder">${mem.contact}</td>
							<td class="noBorder">${mem.address}</td>
						</tr>
					</c:forEach>
				</tbody>
				</table>    
			</form>
        </div>
    </div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>