<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<html>
<head>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style type="text/css">
* {
    font-family: 'ParkYongJun';
}
.intro {
	width: 40%;
	height: 60px;
	margin: 50px 350px 20px 670px;
	border: 2px solid #233067;
	border-radius: 8px;
}

.intro h2 {
	text-align: center;
	padding: 13px;
	margin: 0;
}

.container {
	width: 90%;
	margin: 10px auto;
}

.navi ul {
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
	padding: 10px 16px;
	margin: 0px 30px 60px 30px;
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

.row {
	border: 2px solid #233067;
	border-radius: 8px;
	float: left;
	margin-left: 20px;
	width: 75%;
	height: 500px;
	box-sizing: border-box;
	background-color: white;
	overflow: scroll;
	display: inline-block;
}

.row h2 {
	border-right: 4px solid #f1c40f;
	width: 184px;
	margin-top: 40px;
	margin-left: 60px;
	padding-left: 10px;
}

.tb {
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

#regBtn {
	float: right;
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

.product_wrapper {
	display: inline-block;
	width: 200px;
	height: 468px;
	position: relative;
}

.product_wrapper p {
	display: inline-block;
	width: 200px;
	height: 43px;
	padding: 10px;
	font-weight: 900;
}

.product_img {
	width: 200px;
}

.img_wrapper {
	width: 200px;
	height: 320px;
	overflow: hidden;
}

.wrapper {
	display: flex;
	flex-wrap: wrap;
	width: 95%;
	margin-left: 50px;
}

.wrapper2 {
	display: flex;
	flex-wrap: wrap;
	width: 95%;
	margin-left: 50px;
}

.deleteBtn {
	position: absolute;
	border: none;
	background-color: #233067;
	color: white;
	font-weight: 900;
	cursor: pointer;
}

.search_div2 {
	display: inline-block;
	position: relative;
}

.search2 {
	font-size: 22px;
	font-weight: 900;
}

.searchicon2 {
	top: 10px;
	left: 315px;
	width: 30px;
	position: absolute;
	cursor: pointer;
}

.search_wrapper2 {
	display: flex; width : 100%;
	padding-top: 30px;
	padding-bottom: 30px;
	width: 100%;
}

.search2 {
	margin-left: 60px;
}

.keyword {
	display: inline-block;
	width: 650px;
	height: 40px;
	padding: 0;
	margin: 0;
	margin-left: 20px;
	padding-top: 10px;
	font-size: 22px;
	font-weight: 900;
}

.new_product {
	width: 200px; border : none;
	background-color: #233067;
	color: white;
	font-weight: 900;
	font-size: 20px;
	cursor: pointer;
	border-radius: 50px;
	border: none;
}

.insert_product{
	background-color: #eff4fb;
	width: 1200px;
	height: 600px;
	margin: 50px;
}

.insert_img {
	width: 300px;
}

.insert_wrapper {
	width: 790px;
	padding-right: 40px;
}

.insert_sub, .insert_con, .insert_price {
	padding: 10px;
	border: none;
	border-radius: 0;
	width: 100%;
}

::placeholder {
	font-size: 15px;
	font-weight: 500;
	color: lightgray;
	font-style: italic;
}

.insert_sub {
	height: 40px;
	font-size: 18px;
	font-weight: 900;
	margin-bottom: 10px;
}

.insert_price {
	height: 40px;
	font-size: 18px;
	font-weight: 900;
	margin-bottom: 10px;
}

.insert_con {
	height: 250px;
	font-size: 18px;
	font-weight: bold;
	font-family: inherit;
}

.top_wrapper {
	padding-top: 40px;
	display: flex;
}

.file {
	background-color: white;
	height: 30px;
	padding-top: 3px;
	width: 100%;
	margin-top: 10px;
}
	
.park {
	font-family: ParkYongJun;
}

.btn_wrapper {
	display: flex;
	width: 100%;
	justify-content: center;
	margin-top: 50px;
}

.btn_wrapper button {
	background-color: #233067;
	border: none;
	width: 120px;
	height: 50px;
	border-radius: 50px;
	font-size: 18px;
	font-weight: 900;
	margin-right: 10px;
	margin-left: 10px;
	cursor: pointer;
	color: #f1c40f;
}

.insert_img_wrapper {
	width: 300px;
	height: 434px;
	background-color: white;
	margin-left: 40px;
	margin-right: 20px;
	overflow: hidden;
}
select{
	border: none;
	width: 32.7%;
	height: 30px;
	margin-top: 10px;
}
</style>
<script type="text/javascript">
	function goInsert() {
		location.href = "${path}/eventInsertForm.do"
	}
	function goDetail(event_no) {
		location.href = "${path}/eventDetail2.do?event_no=" + event_no;
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
			<div class="delete_product">
				<div class="search_wrapper2">
					<div class="search_div2">
						<form class="searchForm" method="post">
							<input name="product_name" value="${product.product_name}"
								type="text" class="search2"
								style="border-radius: 50px; width: 300px; height: 50px;">
							<img onclick="sch()" class="searchicon2"
								src="${hpath}\TeamProjectCSS\Icon\SearchIcon.png" />
						</form>
					</div>
					<p class="keyword">'${product.product_name}'에 대한 검색 결과</p>
					<button class="new_product" type="button" onclick="sproduct()">새상품
						등록</button>
				</div>
				<div class="wrapper">

					<c:forEach var="p" items="${plist }">
						<div class="product_wrapper" pnum="${p.product_no }">
							<button class="deleteBtn" pnum="${p.product_no }" type="button"
								onclick="deleteP(this)">삭제</button>
							<input type="hidden">
							<div class="img_wrapper">
								<img class="product_img"
									src="${path}/ProductImg/${p.product_img }">
							</div>
							<p>${p.product_name }</p>
							<p>${p.product_price }원</p>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="insert_product">
				<form class="insert_product_form" method="post" enctype="multipart/form-data" action="InsertProduct.do">
					<div class="top_wrapper">
						<div class="insert_img_wrapper">
							<img class="insert_img" src="">
						</div>
						<div class="insert_wrapper">
							<input type="text" name="product_name" class="insert_sub"
								placeholder="제목을 입력하세요" />
							<input type="text" name="product_price" class="insert_price"
								placeholder="가격을 입력하세요" />
							<textarea class="insert_con" name="product_info"
								placeholder="상세정보를 입력하세요"></textarea>
							<input class="file" type="file" name="report"
								onchange="setThumbnail(event)" />
							<select class="w_category" name="w_category">
								<option value="">---날씨 카테고리---</option>
								<option value="맑음">맑음</option>
								<option value="흐림">흐림</option>
								<option value="비">비</option>
								<option value="눈">눈</option>
								<option value="강풍">강풍</option>
							</select>
							
							<select class="ac_category" name="ac_category">
								<option value="">---주류 카테고리---</option>
								<option value="와인">와인</option>
								<option value="맥주">맥주</option>
								<option value="위스키">위스키</option>
								<option value="전통주">전통주</option>
								<option value="사케">사케</option>
							</select>
							
							<select class="store_no" name="store_no">
								<option value="">---매장---</option>
								<option value="1">별밤 강남점</option>
								<option value="2">별밤 홍대점</option>
								<option value="3">별밤 롯데월드타워점</option>

							</select>
						</div>
					</div>
					<div class="btn_wrapper">
						<!-- 변경 -->
						<button type="button" class="park submit btn_color"
							onclick="sub()">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
<script type="text/javascript">
$(".insert_product").hide();
var isInsert = "${isInsert}"
	if (isInsert == "Y") {
		
		location.href="${path}/AdminProduct.do";
	
} 
function setThumbnail(event) {
	var reader = new FileReader();

    reader.onload = function(event) {
     
     $(".insert_img").attr("src", event.target.result);
     
    };

    reader.readAsDataURL(event.target.files[0]);
}

function sub(){
	if($(".insert_sub").val().length<1){
		alert("제목을 입력해 주세요.");
		return;
	}
	else if($(".insert_con").val().length<1){
		alert("내용을 입력해 주세요.");
		return;
	}
	else if($(".insert_price").val().length<1){
		alert("가격을 입력해 주세요.");
		return;
	}
	else if($(".file").val().length<1){
		alert("파일을 등록해 주세요.");
		return;
	}
	else if($(".w_category").val().length<1){
		alert("날씨 카테고리를 등록해 주세요.");
		return;
	}
	else if($(".ac_category").val().length<1){
		alert("주류 카테고리를 등록해 주세요.");
		return;
	}
	else if($(".store_no").val().length<1){
		alert("매장을 등록해 주세요.");
		return;
	}
	else{
	if(confirm("정말 등록 하시겠습니까?")){
	
		$(".insert_product_form").submit();
	}else{
		return;
	}
	}
}

	function sproduct() {
		if (confirm("상품 등록페이지로 이동하시겠습니까?")) {
			$(".delete_product").hide();
			$(".insert_product").show();
		} else {
			return;
		}

	}
	function sch() {
		$(".searchForm").submit();
	}

	function deleteP(a) {
		if (confirm("정말 삭제하시겠습니까?")) {
			$.ajax({
				url : "DeleteProduct.do",
				data : {
					product_no : $(a).attr("pnum")
				},
				method : "post",
				dataType : "json",
				success : alert("삭제완료")
			});
			location.href="${path}/AdminProduct.do";
		} else {
			return;
		}

	}
</script>
</html>