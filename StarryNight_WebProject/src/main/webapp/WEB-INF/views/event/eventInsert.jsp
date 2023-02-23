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
    height: 550px;
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
	width: 1043px;
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
	margin: 20px 250px;
	padding: 6px 23px;
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
  padding: 20px;
}
.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
  margin-left: 20px;
  text-align: right;
}
.col-30 {
  float: left;
  width: 30%;
  margin-top: 6px;
}
.col-50 {
  float: left;
  width: 50%;
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
/*file*/
.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
.filebox label {
	  display: inline-block;
	  float: right;
	  padding: .5em .75em;
	  color: #999;
	  font-size: inherit;
	  line-height: normal;
	  vertical-align: middle;
	  background-color: #fdfdfd;
	  cursor: pointer;
	  border: 1px solid #ebebeb;
	  border-bottom-color: #e2e2e2;
	  border-radius: .25em;
	  margin-right: 7px
}
/* named upload */
.filebox .upload-name {
	  display: inline-block;
	  padding: .5em .75em;  /* label의 패딩값과 일치 */
	  font-size: inherit;
	  font-family: inherit;
	  line-height: normal;
	  vertical-align: middle;
	  background-color: white;
	  border: 1px solid #ebebeb;
	  border-bottom-color: #e2e2e2;
	  border-radius: .25em;
	  -webkit-appearance: none; /* 네이티브 외형 감추기 */
	  -moz-appearance: none;
	  appearance: none;
	  width: 532px;
}
#evDate{
	  /*width: 100%;*/
	  padding: 12px;
	  border: 1px solid #ccc;
	  border-radius: 4px;
}
#event_content{
	resize: none;
}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		  var fileTarget = $('.filebox .upload-hidden');
	
		  fileTarget.on('change', function(){  // 값이 변경되면
		    if(window.FileReader){  // modern browser
		      var filename = $(this)[0].files[0].name;
		    } 
		    else {  // old IE
		      var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
		    }
		    // 추출한 파일명 삽입
		    $(this).siblings('.upload-name').val(filename);
		  });
	}); 
	var isInserted = "${isInserted}"
		if(isInserted=="Y"){
			if(confirm("이벤트가 성공적으로 등록되었습니다.\n이벤트페이지로 이동합니다.")){
			// 취소 입력시 조회화면 이동..
			   location.href="${path}/eventList.do"
			}
		}
	function insertProc(){
		if(confirm("등록하시겠습니까?")){
			var titleVal = $("[name=title]").val();
			if( titleVal == "" ){
				alert("제목을 입력하세요");
				$("[name=title]").focus();
				return;
			}
			var contentVal = $("[name=content]").val();
			if( contentVal == "" ){
				alert("내용을 입력하세요");
				$("[name=writer]").focus();
				return;
			}
			document.querySelector("form").submit();
		}
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
        	<h2>이벤트 정보 등록</h2>
        	<form action="${path}/eventInsert.do" method="post" enctype="multipart/form-data">
        	<div class="evForm">	
        		<div class="evInput">
				    <div class="col-25">
				      <label for="title">제 목</label>
					</div>
				    <div class="col-50">
				      <input type="text" id="event_title" name="event_title" placeholder="제목을 입력하세요."
				      		 value="${event.event_title}">
				    </div>
				</div>
				<div class="evInput">
					<div class="col-25">
				      <label for="evDate">이벤트 기간</label>
				    </div>
				    <div class="col-30">
				      <input type="date" id="evDate" name="event_stDateS" value="${event.event_stDateS}"> -
				      <input type="date" id="evDate" name="event_dueDateS" value="${event.event_dueDateS}">
				    </div>
				</div>
				<div class="evInput">
					<div class="col-25">
				      <label for="content">내 용</label>
				    </div>
				    <div class="col-50">
				      <textarea id="event_content" name="event_content" placeholder="내용을 입력하세요." style="height:200px"></textarea>
				    </div>
				</div>
				<div class="filebox">
					<div class="col-25">
				  		<label for="ex_filename">업로드</label> 
				  	</div>
				  	<div class="col-50">
					  	<input class="upload-name" value="파일선택" disabled="disabled">
					  	<input type="file" id="ex_filename" class="upload-hidden"> 
				  	</div>
				</div>
				<br>
        		<button id="regBtn">등록</button>
        	</div>
        	</form>
		</div>
</div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>