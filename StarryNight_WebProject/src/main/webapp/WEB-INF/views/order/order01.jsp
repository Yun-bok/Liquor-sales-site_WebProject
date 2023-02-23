<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style>
td {
	text-align: center;
}
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
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script>
	
	function goMain(){
		alert("결제 완료되었습니다.");
		location.href="${path}/StarryMain.do";
	}
	
</script>

</head>

<body>
	<%
	String req = request.getParameter("");
	%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="font-family: ParkYongJun;"
		style="padding: 10px 300px 10px 300px;">

		<div class="container">
			<div class="row">
				<h1>주문상품</h1>
				<table class="table table-hover table-striped">
					<col width="15%">
					<col width="15%">
					<col width="30%">
					<col width="15%">
					<col width="15%">
					<col width="10%">
					<thead>
						<tr class="table-success text-center">
							<th>회원 번호</th>
							<th>상품 번호</th>
							<th>주문 일자</th>
							<th>주문 금액</th>
							<th>주문 수량</th>
							<th>매장 번호</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="o" items="${ordlist}">
							<tr>
								<td>${o.member_no}</td>
								<td>${o.product_no}</td>
								<td>${o.order_date}</td>
								<td>${o.order_amount}</td>
								<td>${o.order_qty}</td>
								<td>${o.store_no}</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<br>
			
			<div id="Kor" class="w3-container w3-display-container city">
				<h2>픽업 정보</h2>
				<form>
					<div class="border">
						<p>픽업할 매장을 선택해주세요</p>
						<select>
							<option value='별밤 강남점' selected>별밤 강남점</option>
							<option value='별밤 홍대점'>별밤 홍대점</option>
							<option value='별밤 롯데월드타워점'>별밤 롯데월드타워점</option>
						</select><br> <br>
						<p>픽업할 날짜를 선택해주세요</p>
						<input type="date" size="10" value="order_date" />
					</div>
					<div class="border">
						<br><br><h2>결제 수단</h2><br><br>
						<div>
							<p><input type="radio" name="payment" value="현장결제">현장결제</p>
							<p><input type="radio" name="payment" value="카드결제">카드결제</p>
						</div>
					</div>
					<button type="button" class="btn_order" onclick="goMain()">결제하기</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>