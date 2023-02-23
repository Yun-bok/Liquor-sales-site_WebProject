<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/botstrap.min.js"></script>
<link rel="icon" href="data:;base64,iVBORw0KGgo=">

<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script>

</script>
<style>

b{
	font-size:40px;
	font-weight: bolder;
}
hr{
	border-width: 6px;
	padding-left: 160px;
	width: 1000px;
}
.hr2{
	width: 900px;
	border-width: 1px;
	padding-left: 160px;
}
td{
	font-size: 20px;
	vertical-align: middle;
}
input{
	height: 25px;
	vertical-align: middle;
	border-width: 2px;
}
.danger1{
	color: red;
	font-size: 17px;
	padding-left: 20px;
}
.danger2{
	color: red;
	font-size: 15px;
	padding-left: 160px;
}
form{
	font-family:ParkYongJun;
}
button{
	color: blue;
}

</style>

</head>

<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<form class="form" action="${path}/memberInsert.do" name="form" method="post">
	<table width="1400" height="650">
		<tr>
			<td height="60%" align="center" valign="top">
				<hr><br>
				<p align="left" style="padding-left:160px">
				<b>회원정보입력</b>
				<br><br>
				Email(*):<input type="text"  size="30" maxlength="40" name="email"><br><br>
				비밀번호(*):<input type="password"  size="20" maxlength="30" name="pswd"><br><br>
				비밀번호확인:<input type="password" size="20" maxlength="30" name="pswdck" onblur="passck()">&nbsp;
					<input type="text" style="border-width: 0px" size="20" name="ck" value="비밀번호를 입력하세요" class="danger1" readonly>
				<br><br>
				이름(*):<input type="text"  size="13" maxlength="12" name="name"><br><br>
				생년월일(*):<input type="date" name="birthDate_s" min="1930-01-01" max="2003-12-31"><br><br>
				<%-- 올해 성인인 나이까지만 고를수있도록 --%>
				휴대폰번호(*):<input type="text"  size="20" maxlength="25" name="contact"><br><br>
				주소(*):<input type="text"  size="15" maxlength="15" name="address">
				<p align="left">
				<span class="danger2">
					*주소는 (시/도)만 입력해주세요 (예: 서울특별시, 경기도, 강원도 등)</span></p><br>
			</td>
		</tr>
		<tr>
			<td align="center">
				<hr><br>
				<input type="button" onclick="insertProc()" value="가입">&nbsp;
				<input type="button" value="취소" onclick="goMain()"	>
			</td>
		</tr>
	</table>
</form>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
<script type="text/javascript">
	var right=0;
	function insertProc(){
		if(confirm("등록하시겠습니까?")){
			var check1 = /\d/;
			var check2 = /[a-z]/i;
			var numcheck = /^[0-9]*$/;
			var emailVal = $("[name=email]").val();
			if(emailVal == ""){
				alert("이메일을 입력하세요");
				$("[name=email]").focus();
				return;
			}
			var pswdVal = $("[name=pswd]").val();
			var pswdckVal = $("[name=pswdck]").val()
			if(pswdVal == ""){
				alert("비밀번호를 입력하세요");
				$("[name=pswd]").focus();
				return;
			}
			if(check1.test(pswdVal) && check2.test(pswdVal)){
			}else{
				alert("비밀번호는 영문,숫자 조합입니다")
				return;
			}
			if(right==0){
				alert("비밀번호가 동일한지 확인하세요")
				return;
			}
			var nameVal = $("[name=name]").val();
			if(nameVal == ""){
				alert("회원명을 입력하세요");
				$("[name=name]").focus();
				return;
			}
			var contactVal = $("[name=contact]").val();
			if(contactVal == ""){
				alert("휴대폰번호를 입력하세요");
				$("[name=contact]").focus();
				return;
			}
			if(!numcheck.test(contactVal)){
				alert("휴대폰번호는 숫자만 입력가능합니다.")
				return;
			}
			var addressVal = $("[name=address]").val();
			if(addressVal == ""){
				alert("주소를 입력하세요");
				$("[name=address]").focus();
				return;
			}			
			document.querySelector("form").submit();
		}
	}
	var isInsert = "${isInsert}"
		if(isInsert=="Y"){
			if(confirm("가입되었습니다\n메인화면으로 이동합니다")){
				location.href="${path}/StarryMain.do";
			}
		}

	function passck(){
		var pass = document.form.pswd.value;
		var passck = document.form.pswdck.value;
		if(passck.length==0||passck==null){
			document.form.ck.value="비밀번호는 영문, 숫자조합입니다";
			right=0;
		}else if(pass != passck){
			document.form.ck.value="비밀번호가 다릅니다";
			right=0;
		}else{
			document.form.ck.value="비밀번호가 동일합니다";
			right=1;
		}
		return;
	}
	
	function goMain(){
		   location.href="StarryMain.do";
	}
</script>
</body>
</html>