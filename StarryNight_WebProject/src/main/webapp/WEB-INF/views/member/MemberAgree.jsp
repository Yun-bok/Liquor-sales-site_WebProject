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
<title>약관동의</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
b{
	font-size: 20px;
	font-weight:bolder;
}
hr{
	border-width: 4px;
	padding-left: 160px;
	width:1000px;
}
form{
	font-family:ParkYongJun;
}
input, textarea{
	font-family:ParkYongJun;
	font-size: 15px;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
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
		document.form.submit();
	}else{
		alert("약관에 동의해야합니다.");
	}
}
function nochk(){
	alert("동의하지않으면 가입하실 수 없습니다.");
	return;
}
</script>
</head>

<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<form action="${path}/memberInsertForm.do" name="form" method="post">
	<table width="1400" height="650">
		<tr>
			<td width="100%" height="10%">
				<span style="padding-left:160px"></span>
					<hr>
			</td>
		</tr>
		<tr>
			<td width="100%" height="50%" align="center">
				<p align="left">
				<span style="padding-left:160px; font-size:25px; font-weight:bolder;">약관동의</span>
				</p><br>
				<textarea rows="20" cols="100">제9조 (개인정보 취급방침)
1.회사는 회원의 개인정보를 보호하며, 회사는 그 내용을 회사의 각 서비스의 메인화면 과 개인정보관리 페이지에 '개인정보 취급방침'이란 이름으로 공지합니다.
a .개인정보 취급방침'에서 언급하고 있는 주요 내용은 다음과 같습니다.
b .개인정보관리책임자의 성명/소속부서/지위/전화번호/전자우편 주소
c .개인정보의 구체적인 수집목적 및 이용목적
d .동의 철회, 열람 또는 정정 요구 등 이용자의 권리와 그 행사방법
e .서비스제공자가 수집하고자 하는 개인정보항목
f .수집하는 개인정보의 보유·이용기간 및 보유이유
g .기타 개인정보에 대한 가공 또는 관리 방식
h .쿠키의 운영에 관한 사항
i .개인정보 관련 불만처리에 관한 사항
j .개인정보의 가공목적·가공방식, 가공된 개인정보의 이용·관리 등에 관한 사항
k .개인정보 위탁업체 및 위탁업체에 제공하는 정보
l .기타 개인정보의 보호를 위하여 필요한 사항
2.회사는 '개인정보 취급방침'의 내용이 수정, 변경될 경우 변경 이전에 그 내용을 인터넷홈페이지, 전자우편 등의 방법을 통해 공지합니다.
제10조 (개인정보의 이용)
1.회사는 회원의 동의를 받아 회원이 회원가입 시 제출한 개인정보를 상호 공유할 수 있습니다.
2.회사는 약관 개정일 이전에 가입한 한겨레신문㈜ 및 ㈜한겨레플러스 회원의 동의를 받아 회원의 개인정보를 공유할 수 있습니다.
3.회사는 회사와 제휴를 맺은 사이트와 회사의 사이트를 편리하게 이용할 수 있도록 하기 위해 회원의 동의를 받아 회원의 정보를 제휴 사이트들과 공유할 수 있으며, 공유를 위해 회원의 컴퓨터에 쿠키를 전송할 수 있습니다.
4.회사는 서비스 제공으로 알게 된 회원의 신상정보를 본인의 동의 없이 제3자에게 누설, 배포하지 않습니다.
단, 다음 각 호에 해당하는 경우에는 예외로 합니다.
a .금융실명거래 및 비밀보장에 관한 법률, 신용정보의 이용 및 보호에 관한 법률,전기통신기본법, 전기통신 사업법, 지방세법, 소비자보호법,한국은행법, 형사소송법 등 법령에 특별한 규정이 있는 경우
b .통계작성/학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
5.회사는 회원의 전체 또는 일부 정보를 업무와 관련된 통계 자료로 사용할 수 있습니다.
6.회사는 회사의 사업 내용을 회원에게 전화 혹은 전자우편, 우편물 발송, 휴대폰 단문 메시지 전송 등의 방법으로 홍보하고 상품 구입 및 가입을 권유할 수 있습니다.
7.회사는 양질의 서비스를 제공하기 위해 여러 비즈니스 파트너와 제휴를 맺어 회원정보를 위탁관리 하게 할 수 있습니다.
그럴 경우 회사는 약관에 위탁관리 업체명 및 목적, 내용을 밝혀 회원의 동의를 받습니다. 자세한 개인정보 위탁관리 업체는 개인정보 취급방침에서 확인하실 수 있습니다.
8.회원의 개인정보 이용에 대한 동의는 회원이 본 약관에 동의(2조4항에따른 동의로 보는 경우 포함)하는 것으로서 갈음합니다.</textarea><br>
				<input type="checkbox" name="req">개인정보 수집 및 이용에 동의합니다.
			</td>
		</tr>
		<tr>
			<td align="center" valign="top">
				<input type="button" value="동의" onclick="chk()"/>&nbsp;&nbsp;
				<input type="button" value="동의하지않습니다" onclick="nochk()"/>
			</td>
		</tr>
	</table>
</form>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>