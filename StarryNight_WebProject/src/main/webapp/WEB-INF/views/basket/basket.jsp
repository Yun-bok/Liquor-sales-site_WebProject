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
   @font-face {
    font-family: 'ParkYongJun';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/ParkYongJun.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	function goAlcohol(){ 
		location.href="${path}/alcoholList.do"
	}
	function goOrder01(){
		location.href="${path}/order01.do";
	}
	function goMain(){
		location.href="${path}/StarryMain.do";
	}
</script>
</head>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<body>
 
<div class="container" style=font-family:ParkYongJun;>
 <h2 >장바구니</h2>
   <form id="frm01" class="form"  method="post">
     <%
    if(session.getAttribute("BasketList")==null){
    	System.out.println("상품이 없습니다");
    }
    else{
 	    System.out.println(session.getAttribute("BasketList"));
    }
    %>
    <br>
    <a href="#http://localhost:7080/StarryNight/alcoholList.do" onClick="goMain()">메인페이지로</a>
   </form>
   <table class="table table-hover table-striped">
      <col width="33%">
      <col width="33%">
      <col width="34%">
    <thead>
      <tr class="table-success text-center">
        <th>회원 번호</th>
        <th>상품 번호</th>
        <th>수량</th>
      </tr>
    </thead>   
    <tbody>
       <c:forEach var="bs" items="${bslist}">
       <tr><td>${bs.member_no}</td><td>${bs.product_no}</td>
       <td>${bs.product_cnt}</td></tr>
       </c:forEach> 
    </tbody>
   </table>    
    <button type="button" class="btn btn-secondary btn-goAlcohol" onclick="goAlcohol()">계속쇼핑하기</button>
    <button type="button" class="btn btn-primary btn-goOrder01" onclick="goOrder01()">주문하기</button>
</div>

</body>
</html>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
