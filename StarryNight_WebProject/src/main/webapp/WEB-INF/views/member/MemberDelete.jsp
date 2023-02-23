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
<title>회원 탈퇴</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>

.intro{
	width: 40%;
	height: 60px;
	margin: 50px 350px 20px 670px; 
	border: 2px solid #233067;
	border-radius: 8px;
	font-family:ParkYongJun;
}
.intro h2{
	text-align: center;
	padding: 13px;
	margin: 0;
}
.container{
    width: 90%;
    margin: 10px auto;
    font-family:ParkYongJun;
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
input[type=button]{
	font-family:ParkYongJun;
}
.text{
	font-size:25px;
	font-family:ParkYongJun;
}
.input{
	font-size: 15px;
	font-family:ParkYongJun;
}
.evForm input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  font-family:ParkYongJun;
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
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
<%-- 
	
--%>   
});

function chk(){
	var req = document.form.req.checked;
	var num = 0;
	if(req==true){
		num = 1;
	}
	if(num==1){
		if(confirm("탈퇴 하시겠습니까?")){
			var emailVal = $("[name=email]").val();
			if(emailVal == ""){
				alert("이메일을 입력하세요");
				$("[name=email]").focus();
				return;
			}
			var pswdVal = $("[name=pswd]").val();
			if(pswdVal == ""){
				alert("비밀번호를 입력하세요");
				$("[name=pswd]").focus();
				return;
			}
			document.querySelector("form").submit();
		}
	}else{
		alert("확인하셨다면 체크해주십시오.");
	}
}
function goMain(){
	location.href="StarryMain.do";
}
var isDelete = "${isDelete}"
if(isDelete=="Y"){
	if(confirm("삭제되었습니다\n메인화면으로 이동합니다")){
		//session.invalidate();
		location.href="${path}/StarryMain.do";
	}
}
</script>
</head>

<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<div class="intro">
	
</div>
<div class="container">
        <div class="navi">
        	<ul>
			  <li><a href="${path}/myinfo.do">회원 상세 정보</a></li>
			  <li><a href="${path}/orderInfo.do">주문 정보</a></li>
			  <li><a href="${path}/wishlist.do">위시리스트</a></li>
			  <li><a href="${path}/memberDelete.do">회원탈퇴</a></li>
			</ul>
        </div>
		<div class="row">
        	<h2>회원 탈퇴</h2>
        	<form action="${path}/memberDelete.do" name="form" method="post" style="padding-left:50px;">
				<table width="890" height="500" >
					<tr>
						<td width="30%" height="30%" align="center" >
							<textarea class="text" rows="7" cols="20" readonly>제11조 (계약 해지)
회원이 서비스 이용 계약을 해지 하고자 할 때는 개인정보수정의 '회원탈퇴' 메뉴에서 회원탈퇴를 신청하시면 됩니다. 탈퇴를 신청하시면 즉시 탈퇴처리가 완료되며, 탈퇴후 7일 동안은 회사에 다시 가입하실 수 없습니다.

제12조 (탈퇴 회원의 개인정보 이용)
1.회사는 회원정보를 회원이 탈퇴하는 시점으로부터 1년까지 보유할 수 있습니다.
2.회사가 보관하고 있는 탈퇴 회원의 정보는 회원의 가입이력관리와 지적재산권 관리,개인정보보호를 위해서만 활용할 수 있습니다.
3.단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
-표시/광고에 관한 기록 : 6개월
-계약 또는 청약철회 등에 관한 기록 : 5년
-대금결제 및 재화 등의 공급에 관한 기록 : 5년
제13조 (자격상실)
다음 각 항의 사유에 해당하는 경우 회사는 사전 통보 없이, 이용계약을 해지하거나 기간을 정하여 서비스 이용을 중지 또는 이용계약 해지 후 무기한 가입제한 할 수 있습니다.

1.가입시 또는 정보변경시 제6조 3항의 회원정보를 누락시키거나 허위 기재한 경우
2.미풍양속을 저해하는 비속한 아이디, 필명, 별명을 사용한 경우
3.타인의 아이디와 비밀번호, 주민등록번호 등 회원정보를 수집, 저장, 도용한 경우
4.회사 임직원, 운영자 등을 포함한 타인을 사칭하는 행위
5.회사, 다른 회원 또는 제3자의 지적재산권을 침해하는 경우
6.사회의 안녕과 질서, 미풍양속을 해치는 행위를 하는 경우
7.타인의 명예를 훼손, 모욕, 스톡 등 괴롭히거나 불이익을 주는 행위를 한 경우
8.정보통신망에 장애를 일으킬 수 있는 행위를 하는 경우
9.회사의 허락 없이 회사의 서비스를 이용해 영리행위를 하는 경우
10.회사가 허락하지 않은 방법으로 회사가 운영, 관리하는 포인트를 취득한 경우
11.전기통신기본법, 전기통신사업법, 정보통신 윤리강령, 정보통신 윤리위원회 심의규정, 프로그램 보호법 및 기타관련 법령과 약관이 금지하는 행위를 한 경우</textarea><br>
							<input type="checkbox" name="req">&nbsp;&nbsp;위 내용을 확인하였습니다<br>
						</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<input type="hidden" name="member_no" value="${member.member_no }">
							이메일:&nbsp;<input type="text" name="email" placeholder="이메일을 입력해주세요">&nbsp;&nbsp;
							비밀번호:&nbsp;<input type="password" placeholder="비밀번호를 입력해주세요">
						</td>
					</tr>
					<tr>
						<td align="center" valign="top">
							<input class="input" style="width:40pt;height:30pt;" type="button" value="탈퇴" onclick="chk()"/>&nbsp;&nbsp;
							<input class="input" style="width:40pt;height:30pt;" type="button" value="취소" onclick="goMain()"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
</div>

<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>