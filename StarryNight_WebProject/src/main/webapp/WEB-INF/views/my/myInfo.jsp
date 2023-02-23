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
</style>
<script type="text/javascript">
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
        	<h2>회원 상세 정보</h2>
        	<form action="${path}/updateMyInfo.do" method="get">
        	<input type="hidden" name="member_no" value="${member_no}">
	        	<div class="memInfo">
	        		<div class="evForm">	
		        		<div class="evInput">
						    <div class="col-25">
						      <label for="name">이름</label>
							</div>
						    <div class="col-60">
						      <input type="text" id="name" name="name" value="${member.name}" readonly="readonly">
						    </div>
						</div>
		        		<div class="evInput">
						    <div class="col-25">
						      <label for="id">이메일</label>
							</div>
						    <div class="col-60">
						      <input type="text" id="email" name="email" placeholder="이메일을 입력하세요." value="${member.email}" readonly="readonly">
						    </div>
						</div>
						<div class="evInput">
						    <div class="col-25">
						      <label for="pswd">비밀번호</label>
							</div>
						    <div class="col-60">
						      <input type="password" id="pswd" name="pswd" placeholder="비밀번호를 입력하세요.">
						    </div>
						</div>
						<div class="evInput">
						    <div class="col-25">
						      <label for="pswdChk">비밀번호 확인</label>
							</div>
						    <div class="col-60">
						      <input type="password" id="pswdChk" name="pswdChk" placeholder="비밀번호를 확인하세요.">
						    </div>
						</div>
						<div class="evInput">
							<div class="col-25">
						      <label for="addr">주소</label>
						    </div>
						    <div class="col-60">
						      <input type="text" id="address" name="address" placeholder="주소를 입력하세요." value="${member.address}">
						    </div>
						</div>
						<div class="evInput">
							<div class="col-25">
						      <label for="contact">휴대폰 번호</label>
						    </div>
						    <div class="col-60">
						      <input type="text" id="contact" name="contact" value="${member.contact}">
						    </div>
						</div>
						<br>
						<span>
				        	<button type="button" id="uptBtn" onclick="updateProc()">수정</button>		
						</span>
		        	</div>
	        	</div>
        	</form>
        	<div class="memImg">
				<img id="alcholImg" src="${path}/myImg/beer.jpg">
        	</div>
        </div>
    </div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
<script type="text/javascript" >
function updateProc(){
	if(confirm("수정하시겠습니까?")){
		
		var pswdVal = $("[name=pswd]").val();
		var pswdChkVal = $("[name=pswdChk]").val();
		var addrVal = $("[name=address]").val();
		var contactVal = $("[name=contact]").val();

		if(pswdVal == ""){
			alert("비밀번호를 입력하세요.")
			pswdVal.focus();
			return;
		}
		if(pswdChkVal == ""){
			alert("비밀번호를 다시 확인하세요.")
			pswdChkVal.focus();
			return;
		}
		if(pswdVal != pswdChkVal){
			alert("비밀번호를 잘못 입력하셨습니다.\n다시 입력하세요.")
			pswdChkVal.value="";
			pswdChkVal.focus();
			return;			
		}
		if(addrVal == ""){
			alert("주소를 입력하세요");
			addrVal.focus();
			return;
		}
		if(contactVal == ""){
			alert("휴대폰 번호를 입력하세요");
			contactVal.focus();
			return;
		}
		$("form").attr("action","${path}/updateMyInfo.do");
		$("form").submit();
	}
}
	var proc = "${proc}"
	if(proc=="upt"){
		if(confirm("회원 정보가 성공적으로 수정되었습니다.")){
			location.href="${path}/myInfo.do?member_no="+${member_no};
		}
	}
	

</script>
</body>
</html>