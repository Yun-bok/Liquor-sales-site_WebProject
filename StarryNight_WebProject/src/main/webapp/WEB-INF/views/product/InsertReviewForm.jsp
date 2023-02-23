<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	margin-top: 5px;
}

.product_wrapper {
	display: inline-flex;
	width: 100%;
	justify-content: center;
}

.product_wrapper2 {
	display: flex;
	width: 100%;
	height: 40px;
	justify-content: center;
	margin-bottom: 5px;
}

.cate {
	width: 597.5px;
	font-size: 16px;
	font-weight: 500;
	font-family: ParkYongJun;
	padding: 0;
	margin: 0;
	padding-top: 9px;
	padding-left: 20px;
	margin-bottom: 5px;
	background-color: white;
	border-left: solid 3px #f1c40f;
	color: #233067;
}

.cate:nth-child(2) {
	margin-left: 5px;
}

.tab_wrapper {
	display: inline-flex;
	width: 100%;
	justify-content: center;
}

.product_img {
	width: 600px;
	display: inline-block;
}

.product_info, .pinfo_wrapper {
	display: inline-block;
}

.pinfo_wrapper {
	width: 600px;
	padding-left: 50px;
	padding-right: 50px;
	background-color: white;
}

.subject {
	padding-top: 20px;
	font-size: 25px;
	font-weight: 900;
}

.price {
	margin-top: 10px;
	width: 500px;
	font-size: 20px;
	font-weight: 900;
	color: #f1c40f;
	padding-bottom: 30px;
	font-weight: 900;
	color: #f1c40f;
	padding-bottom: 30px;
	border-bottom: 1px solid #f1c40f;
}

.qty {
	font-weight: 600;
	color: #303030;
}

.qty_input {
	border-radius: 0px;
	border: 1px solid gray;
	border-left: 0px solid gray;
	border-right: 0px solid gray;
	padding: 0;
	width: 40px;
	height: 40px;
	text-align: center;
	font-size: 17px;
}

.calc {
	display: inline-block;
	width: 40px;
	height: 40px;
	text-align: center;
	border: 1px solid gray;
	font-size: 25px;
	cursor: pointer;
	color: gray;
}

.calc_wrapper {
	display: inline-flex;
	padding-bottom: 50px;
	width: 500px;
	border-bottom: 1px solid #f1c40f;
}

.price_sum_wrapper {
	display: inline-block;
	width: 100%;
	margin-bottom: 45px;
}

.price_sum_wrapper p {
	display: inline-block;
	margin: 20px 0px;
}

.price_sum_wrapper p:first-child {
	float: left;
	font-size: 20px;
	font-weight: 600;
	color: #f1c40f;
}

.price_sum_wrapper p:nth-child(2) {
	float: right;
	font-size: 20px;
	font-weight: 600;
	color: #f1c40f;
}

.btn_color {
	color: #f1c40f;
}

.wishlist {
	font-size: 28px;
	font-family: cursive;
}

.bottom {
	display: inline-block;
	width: 600px;
	height: 46px;
	text-align: center;
	font-size: 18px;
	font-weight: 600;
	font-family: ParkYongJun;
	cursor: pointer;
	margin: 0;
	padding-top: 14px;
}

.unclicked {
	background-color: white;
	color: #233067;
}

.clicked {
	background-color: #233067;
	color: #f1c40f;
}

.tab_frame {
	display: inline-block;
	width: 1200px;
	height: 600px;
	background-color: white;
	margin-top: 5px;
}

.info_text {
	padding: 30px;
	font-size: 15px;
	font-weight: 400;
	color: #4d4d4d;
}

.review_wrapper {
	padding: 30px;
	display: flex;
}

.review_img {
	width: 200px;
}

.review_sub {
	display: inline-block;
	width: 900px;
	background-color: #eff4fb;
	margin: 0;
	margin-bottom: 10px;
	padding: 10px;
}

.review_con {
	display: inline-block;
	height: 150px;
	width: 900px;
	background-color: #eff4fb;
	padding: 10px;
}

.review_txt_wrapper {
	padding-left: 20px;
	font-size: 15px;
	font-weight: 400;
	color: #4d4d4d;
}

.insert_review {
	background-color: #eff4fb;
	width: 1150px;
	height: 550px;
	margin: 25px;
}

.insert_img {
	width: 300px;
}

.insert_wrapper {
	width: 790px;
	padding-right: 40px;
	height: 300px;
}

.insert_sub, .insert_con {
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

.bottom_wrapper {
	padding-top: 20px;
	display: flex;
}

.review_product {
	width: 300px;
	height: 100px;
	background-color: #233067;
	margin-left: 40px;
	margin-right: 20px;
	display: flex;
}

.file {
	background-color: white;
	height: 30px;
	padding-top: 3px;
	width: 100%;
}

.input_box {
	width: 790px;
	padding-right: 40px;
}

.rp_img {
	margin: 10px;
	height: 80px;
}

.rp_wrapper {
	height: 80px;
	width: 200px;
	color: white;
	font-size: 15px;
	font-weight: 900;
	margin: 10px;
}

.rp_wrapper p {
	margin-top: 5px;
	margin-bottom: 8px;
}

.park {
	font-family: ParkYongJun;
}

.btn_wrapper {
	display: flex;
	width: 100%;
	justify-content: center;
	margin-top: 10px;
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
}

.insert_img_wrapper {
	width: 300px;
	height: 300px;
	background-color: #eaedf0;
	margin-left: 40px;
	margin-right: 20px;
	overflow: hidden;
}
.red {
	color: red;
}


</style>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
</head>

<body>
	<c:forEach var='p' items='${plist }'>
		<%@ include file="../../../TeamProjectCSS/header.jsp"%>
		<div class="container">
			<div class="product_wrapper2">
				<p class="cate">홈&nbsp;&nbsp;>&nbsp;&nbsp;날씨&nbsp;&nbsp;>&nbsp;&nbsp;${p.w_category }&nbsp;&nbsp;</p>
				<p class="cate">홈&nbsp;&nbsp;>&nbsp;&nbsp;주류&nbsp;&nbsp;>&nbsp;&nbsp;${p.ac_category }&nbsp;&nbsp;</p>
			</div>
			<div class="product_wrapper">
				<img class="product_img" alt="productImg"
					src="${path}/ProductImg/${p.product_img }">
				<div class="pinfo_wrapper">
					<p class="product_info subject">${p.product_name }</p>
					<br>
					<p class="product_info price">
						<span class="one_price">${p.product_price }</span>원
					</p>
					<br>
					<p class="product_info qty">수량</p>
					<br>
					<div class="calc_wrapper">
						<div class="calc" onclick="minus()">-</div>
						<input class="qty_input" type="text" value="1" readonly />
						<div class="calc" onclick="plus()">+</div>
					</div>
					<br>
					<div class="price_sum_wrapper">
						<p class="product_info price_sum_txt">총 금액</p>
						<p class="price_sum">
							<span class="real_price">${p.product_price }</span>원
						</p>
					</div>
					<div class="btn_wrapper">
						<form class="buy_form" method="post" action="">
						<input type="hidden" class="wish" value="${wish }">
							<input type="hidden" class="product_no" name="product_no"
								value="${p.product_no }" /> <input type="hidden"
								class="product_cnt" name="product_cnt" value="1" /> <input
								type="hidden" class="member_no" name="member_no"
								value="${member_no }" />
							<button type="button" class="park btn_color" onclick="buy()">구매하기</button>
							<button type="button" class="park btn_color" onclick="cart()">장바구니</button>
							<button type="button" class="wishlist" onclick="red()">♥</button>
						</form>
					</div>
				</div>
			</div>
			<div class="tab_wrapper">
				<a class="bottom review clicked" onclick="review()">리뷰</a> <a
					class="bottom proinfo unclicked" onclick="proinfo()">상품 정보</a>
			</div>
			<div class="tab_wrapper">
				<div class="tab_frame">
					<div class="info_box">
						<div class="info_text">
							<p style="font-size: 18px; font-weight: 900;">${p.product_name}</p>
							<br> ${p.product_info}<br> <br> '${p.w_category}'
							날씨일 때 추천!<br>

						</div>
					</div>
					<div class="insert_review">
						<form class="insert_review_form" method="post" enctype="multipart/form-data" action="InsertReview.do">
							<div class="top_wrapper">
								<div class="insert_img_wrapper">
									<img class="insert_img" src="">
								</div>
								<div class="insert_wrapper">
									<input type="text" name="review_title" class="insert_sub" placeholder="제목을 입력하세요" />
									<textarea class="insert_con" name="review_content" placeholder="내용을 입력하세요"></textarea>
								</div>
							</div>
							<div class="bottom_wrapper">
								<div class="review_product">
									<img alt="product-img" class="rp_img"
										src="${path}/ProductImg/${p.product_img }">
									<div class="rp_wrapper">
										<p>${p.product_name }</p>
										<p>${p.product_price }원</p>
									</div>
								</div>

								<div class="input_box">
									<input class="file" type="file" name="report" onchange="setThumbnail(event)" />
								</div>
							</div>
							<div class="btn_wrapper">
								<!-- 변경 -->
								<input type="hidden" name="product_no" value="${p.product_no }" />
								<input type="hidden" name="member_no" value="${member_no }" />
								<button type="button" class="park submit btn_color" onclick="sub()">등록</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
		<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
	</c:forEach>
</body>
<script type="text/javascript">
	var page = 1;
	var review_cnt = 0;  
	var wish = $(".wish").val();
	var isInsert = "${isInsert}"
	$(".info_box").hide();
	
	if(wish!=1){
		$(".wishlist").addClass('btn_color');
	}else{
		$(".wishlist").addClass('red');
	}
	$(".review_wrapper").each(function(index, item){
		$(item).addClass('number'+(Math.floor(index/2)+1));
		review_cnt++;
	});
	$(".review_wrapper").each(function(index, item){
		if(!$(item).hasClass('number1')){
		$(item).hide();
	}
	});
	if (isInsert == "Y") {
			
			$(".insert_review_form").attr("action","ProductDetail.do");
			$(".insert_review_form").submit();
		
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
		else if($(".file").val().length<1){
			alert("파일을 등록해 주세요.");
			return;
		}
		else{
		if(confirm("정말 등록 하시겠습니까?")){
		
			$(".insert_review_form").submit();
		}else{
			return;
		}
		}
	}
	
	function buy(){
		$(".buy_form").attr("action","pay.do");
		$(".buy_form").submit();
	}
	
	function cart(){	
		if(confirm("상품이 담겼습니다. 장바구니로 이동하시겠습니까?")){
			$(".buy_form").attr("action","basket.do");
			$(".buy_form").submit();
		}else{
			return;
		}	
	}
	
	function plus(){
		$(".qty_input").val((Number)($(".qty_input").val())+1);
		$(".real_price").text(((Number)($(".qty_input").val()))*((Number)($(".one_price").text())));
		$(".product_cnt").val((Number)($(".qty_input").val()));
	}
	function minus(){
		if(!((Number)($(".qty_input").val())==1)){
		$(".qty_input").val((Number)($(".qty_input").val())-1);
		$(".real_price").text(((Number)($(".qty_input").val()))*((Number)($(".one_price").text())));
		$(".product_cnt").val((Number)($(".qty_input").val()));
		}
	}
	function red(){ // db등록추가
			var member = $(".member_no").val();
			var product = $(".product_no").val();
			if(!($(".wishlist").hasClass("red"))){
			$(".wishlist").removeClass('btn_color');
			$(".wishlist").addClass('red');
			$.ajax({
	        	url: "InsertWishlist.do",
	        	data: {product_no: product, member_no: member},
	        	method: "post",
	        	dataType : "json"
	        	
	        });
			}else{
				$(".wishlist").removeClass('red');
				$(".wishlist").addClass('btn_color');
				$.ajax({
		        	url: "DeleteWishlist.do",
		        	data: {product_no: product, member_no: member},
		        	method: "post",
		        	dataType : "json"
		        	
		        });
			}
		}
	
	function proinfo(){
		if($(".proinfo").hasClass("unclicked")){
			$(".proinfo").removeClass('unclicked');
			$(".proinfo").addClass('clicked');
			$(".review").removeClass('clicked');
			$(".review").addClass('unclicked');
			$(".insert_review").hide();
			$(".info_box").show();
		}
	}
	function review(){
		if($(".review").hasClass("unclicked")){
			$(".review").removeClass('unclicked');
			$(".review").addClass('clicked');
			$(".proinfo").removeClass('clicked');
			$(".proinfo").addClass('unclicked');
			$(".info_box").hide();
			$(".insert_review").show();
		}
	}
</script>
</html>