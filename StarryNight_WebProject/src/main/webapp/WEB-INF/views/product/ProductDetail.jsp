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

.park{
	font-family: ParkYongJun;
}

.btn_wrapper {
	display: flex;
	width: 100%;
	justify-content: center;
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


.btn_color {
	color: #f1c40f;
}

.wishlist {
	font-size: 28px;
	font-family: cursive;
}

.red {
	color: red;
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
.img_div{
	display: inline-block;
	width: 400px;
	height: 200px;
	overflow: hidden;
	background-color: #eaedf0;
	
}
</style>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
</head>

<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
	<c:forEach var='p' items='${plist }'>
		
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
					<form action="" method="post">
						<input type="hidden" class="wish" value="${wish }"/>
						<input type="hidden" class="product_no" name="product_no" value="${p.product_no }"/>
						<input type="hidden" class="product_cnt" name="product_cnt" value="1"/>
						<input type="hidden" class="member_no" name="member_no" value="${member_no }"/>
						<button type="button" class="park btn_color" onclick="buy()">구매하기</button>
						<button type="button" class="park btn_color" onclick="cart()">장바구니</button>
						<button type="button" class="wishlist" onclick="red()">♥</button>
					</form>
					</div>
				</div>
			</div>
			<div class="tab_wrapper">
				<a class="bottom review clicked" onclick="review()">리뷰</a>
				<a class="bottom proinfo unclicked" onclick="proinfo()">상품 정보</a> 
			</div>
			<div class="tab_wrapper">
				<div class="tab_frame">
					<div class="info_box">
						<div class="info_text">
						<p style="font-size:18px;font-weight:900;">${p.product_name}</p><br>
						${p.product_info}<br><br>
						'${p.w_category}' 날씨일 때 추천!<br>
						
						</div>
					</div>
					<div class="review_box">
						<c:forEach var="r" items="${rlist }">
							<div class="review_wrapper">
								<div class="img_div">
								<img class="review_img"
									src="${path}/ReviewImg/${r.review_img }"></div>
								<div class="review_txt_wrapper">
									<p class="review_sub">${r.review_title}</p>
									<div class="review_con">${r.review_content}</div>
								</div>
							</div>
						</c:forEach>
						<div class="btn_wrapper">
							<button type="button" class="park prev" onclick="prev()">
								<&nbsp;&nbsp;이전페이지</button>
							<button type="button" class="park next" onclick="next()">다음페이지&nbsp;&nbsp;></button>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		
	</c:forEach>
	<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
<script type="text/javascript">
	var page = 1;
	var review_cnt = 0;
	var wish = $(".wish").val();
	$(".prev").css("color","gray");
	$(".next").css("color","#f1c40f");
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
	
	function buy(){
		$("form").attr("action","order01.do");
		$("form").submit();
	}
	
	function cart(){	
		//alert("product_cnt:"+$(".product_cnt").val()+"product_no:"+$(".product_no").val()+"member_no:"+$(".member_no").val());
		if(confirm("상품이 담겼습니다. 장바구니로 이동하시겠습니까?")){
			$("form").attr("action","basket.do");
			$("form").submit();
		}else{
			return;
		}	
	}
	
	
	
	function next(){
		if(page!=(Math.floor(review_cnt/2+0.5))){
		      page+=1;
		      $(".review_wrapper").each(function(index, item){
		         if(!$(item).hasClass('number'+page)){
		         $(item).hide();
		         }else{
		         $(item).show();
		         }
		      });
		      }
		if(page==(Math.floor(review_cnt/2+0.5))){
			$(".next").css("color","gray");
			$(".prev").css("color","#f1c40f");
		}else{
			$(".next").css("color","#f1c40f");
			$(".prev").css("color","#f1c40f");
		}
	}	
	
	function prev(){
		if(page!=1){
		page-=1;
		$(".review_wrapper").each(function(index, item){
			if(!$(item).hasClass('number'+page)){
			$(item).hide();
			}else{
			$(item).show();
			}
		});
		}
		
		if(page==1){
			$(".prev").css("color","gray");
			$(".next").css("color","#f1c40f");
		}else{
			$(".next").css("color","#f1c40f");
			$(".prev").css("color","#f1c40f");
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
	function red(){ 
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
			$(".review_box").hide();
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
			$(".review_box").show();
		}
	}
</script>
</html>