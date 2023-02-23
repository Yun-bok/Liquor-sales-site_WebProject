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
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
.login_wrapper{
	margin-top: 100px;
	display: flex;
	justify-content: center;
}

.login{
	
	width: 1000px;
	height: 500px;
	background-color: white;
}
.login_txt{
	text-align: center;
	font-size: 50px;
	font-weight: 900;
	margin-top: 80px;
	margin-bottom: 40px;
}
.login_input{
	text-align: center;
}
.login_input input{
	background-color: #f1c40f;
	border: none;
	width: 260px;
	height: 50px;
	font-size: 18px;
	font-weight: 900;
}
input:focus { outline: 0; }
.input_backg{
	background-color: #f1c40f;
	border-radius: 50px;
	width: 300px;
	height: 50px;
}

.input_wrapper{
	display: flex;
	width: 100%;
	justify-content: center;
	margin-bottom: 15px;
}

.btn_wrapper{
	display: flex;
	width: 100%;
	justify-content: center;
	padding-top:10px;
}

.btn_wrapper button{
	padding:10px;
	font-size: 17px;
	font-weight: 900;
	width: 110px;
	height: 50px;
	border-radius: 50px;
	color:#f1c40f;
	background-color: #233067;
	cursor: pointer;
}

.btn_wrapper button:first-child{
	margin-right: 20px;
}
.btn_wrapper button:nth-child(2) {
	margin-left: 20px;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

</head>

<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>

<div class="login_wrapper">
<div class="login">
<div class="login_txt">
Login
</div>
<form method="post" action="loginCheck.do">
<div class="login_input">
<div class="input_wrapper">
<div class="input_backg">
<input type="text" name="email" class="id">
</div>
</div>
<div class="input_wrapper">
<div class="input_backg">
<input type="password" name="pswd" class="password">
</div>
</div>
</div>
<div class="btn_wrapper">
	<button type="button" onclick="login()"><p>Login</p></button>
	<button type="button" onclick="join()"><p>Join</p></button>
</div>
</form>
</div>
</div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
<script type="text/javascript">
	var login2 = "${loginYN}";
	if(login2=="N"){
		alert("아이디 혹은 비밀번호가 틀렸습니다.");
		location.href= "login.do";
	}else if(login2=="Y"){
		location.href= "StarryMain.do";
	}
	function join(){
		location.href= "memberAgree.do";
	}
	function login(){
		if($(".id").val().trim()==""){
			alert("아이디를 입력하세요");
			return;
		}else if($(".password").val().trim()==""){
			alert("비밀번호를 입력하세요");
			return;
		}else{
		$("form").submit();
		}
		
	}
</script>
</html>