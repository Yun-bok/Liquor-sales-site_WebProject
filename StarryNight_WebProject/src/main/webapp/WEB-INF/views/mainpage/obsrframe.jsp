<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*"   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
<style>
    
    * {
	box-sizing: border-box;
}
input[type=text],input[type=password], select, textarea {
  width: 10%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=button],input[type=submit] {
  background-color: DodgerBlue;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
 
}


header {
	width:1700px;
	height: 200px;
	background-color:#233067;
	padding: 20px;
	text-align: center;
	font-size: 15px;
	color: white;
	display: flex;
	justify-content: space-between;
 	 align-items: center;
}



main {
    width:1700px;
	background: #f2f4f7;
	height:3000px;
}

s
ul {
  list-style-type: none;
  margin: 10px;
  padding: 0px;
}

li {
  display: inline;
  
} 



a {
color:#f1c40f;
font-size: 30px;
margin-left:30px;
margin-right:30px;
text-decoration: none;
}

.LOGO{
font-size: 50px;
color: orange;
margin-right: 500px;
}



.dropbtn {
  background-color: #f1c40f;
  color: white;
  font-size: 10px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
  
  
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  margin-left:25px;
  min-width: 200px;
  min-height: 0px;
  box-shadow: 8px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: #233067;
  text-decoration: none;
  display: block;
}

dropdown:hover{
color: #f1c40f;
  background-color: #f1c40f;
  text-decoration: underline;
 padding-top: 31px;
  padding-right: 30px;
  padding-bottom: 6px;
  padding-left: 30px;
		
}
.dropdown-content a:hover {background-color: #ddd;
text-decoration: underline;
  margin-left:0px;
  margin-right:0px;
	width: 200px;
	height: 40px;}

.dropdown:hover .dropdown-content {display: block;}


.dropdown:hover .dropbtn {backgrounds-color: #3e8e41;}

.divgreyline{background:#999999; height:1px;}

.footdiv{ background:#233067; height:700px; }

.container {
  min-width:100;
  min-height:1000;
  overflow: hidden;
  position: relative;
  padding: 15px;
  
}

.container > img {
  position: absolute;
  width: 100%;
  /* height: 100%; */
  top: 50%;
  left: 50%;
 
  transform: translate(-50%, -50%);
}

/* Style the side navigation */
.sidenav {
  height: 100%;
  width: 300px;
  position: fixed;
  z-index: 1;
  top: 0;
  right: 0;
  background-color: white;
  overflow-x: hidden;
}

 {
  box-sizing: border-box;
}
/* Side navigation links */
.sidenav a {
  margin: 0;
  padding: 21px;
  text-decoration: none;
  display: inline-block;
  width: 100%;
  font-size: 17px;
  text-align: center;
  font-weight: 300;

}

/* Change color on hover */
.sidenav a:hover {
  border-left: 5px solid #233067;
  box-shadow: 0 4px 4px -4px lightgray;
}

/* Style the content */
.content {
  margin-left: 200px;
  padding-left: 20px;
}

/* 클릭 시 사이드바가 보이는 아이콘, 사이드바 x아이콘 설정 */
.sideicon{
 margin-right: 20px;
 cursor: pointer;
}

/* 사이드바의 x아이콘, 장바구니아이콘, 프로필아이콘을 담는 div */
.sidediv{
	display: inline-block;
	width: 300px;
	height: 230px;	
}

/* 사이드바의 x아이콘 설정 */
.sidediv .sideicon{
	float: right;
	margin-top: 25px;
	margin-right: 25px;
	
}

.sideProCart{
	margin-top: 110px;
	text-align: center;
	cursor: pointer;
}

.profileicon{
	margin-right: 20px;
}

.carticon{
	margin-left: 20px;
}

.search_div{
	display: inline-block;
	position: relative;
}

.searchicon{
	top: 10px;
	left: 455px;
	width: 30px;
	position: absolute;	
	cursor: pointer;
}

.abcd-div{
	display: flex;
	justify-content: center;
	margin-top: 20px;
	font-size: 13px;
	padding-bottom: 10px;
}

.abcd-div div{
	display:inline-block;
	height: 90px;
	margin: 10px;
	margin-right: 50px;
	color: gray;
}

.abcd-img{
	margin-top: 10px;
	margin-right: 20px;
}

.df-div{
	background-color: gray;
	text-align: center;
}


.d-foot{	
	display: inline-block;
	width: 750px;
	padding: 10px;
	font-size: 11px;
	color: white;
}

.f-foot{
	font-size: 10px;
	text-align: center;
	padding-bottom: 10px;
	color: white;
}
@font-face {
    font-family: 'ParkYongJun';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/ParkYongJun.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
html, body {
    margin: 0px;
    padding: 0px;
    background: url("http://digital.bnint.com/filelib/s9/photos/white_wood_4500x3000_lo_res.jpg");
}

.carousel {
    position: relative;
    box-shadow: 0px 1px 6px rgba(0, 0, 0, 0.64);
    margin-top: 26px;
}

.carousel-inner {
    position: relative;
    overflow: hidden;
    width: 100%;
}

.carousel-open:checked + .carousel-item {
    position: static;
    opacity: 100;
}

.carousel-item {
    position: absolute;
    opacity: 0;
    -webkit-transition: opacity 0.6s ease-out;
    transition: opacity 0.6s ease-out;
}

.carousel-item img {
    display: block;
    height: auto;
    max-width: 100%;
}

.carousel-control {
    background: rgba(0, 0, 0, 0.28);
    border-radius: 50%;
    color: #fff;
    cursor: pointer;
    display: none;
    font-size: 40px;
    height: 40px;
    line-height: 35px;
    position: absolute;
    top: 50%;
    -webkit-transform: translate(0, -50%);
    cursor: pointer;
    -ms-transform: translate(0, -50%);
    transform: translate(0, -50%);
    text-align: center;
    width: 40px;
    z-index: 10;
}

.carousel-control.prev {
    left: 2%;
}

.carousel-control.next {
    right: 2%;
}

.carousel-control:hover {
    background: rgba(0, 0, 0, 0.8);
    color: #aaaaaa;
}

#carousel-1:checked ~ .control-1,
#carousel-2:checked ~ .control-2,
#carousel-3:checked ~ .control-3 {
    display: block;
}

.carousel-indicators {
    list-style: none;
    margin: 0;
    padding: 0;
    position: absolute;
    bottom: 2%;
    left: 0;
    right: 0;
    text-align: center;
    z-index: 10;
}

.carousel-indicators li {
    display: inline-block;
    margin: 0 5px;
}

.carousel-bullet {
    color: #fff;
    cursor: pointer;
    display: block;
    font-size: 35px;
}

.carousel-bullet:hover {
    color: #aaaaaa;
}

#carousel-1:checked ~ .control-1 ~ .carousel-indicators li:nth-child(1) .carousel-bullet,
#carousel-2:checked ~ .control-2 ~ .carousel-indicators li:nth-child(2) .carousel-bullet,
#carousel-3:checked ~ .control-3 ~ .carousel-indicators li:nth-child(3) .carousel-bullet {
    color: #428bca;
}

#title {
    width: 100%;
    position: absolute;
    padding: 0px;
    margin: 0px auto;
    text-align: center;
    font-size: 27px;
    color: rgba(255, 255, 255, 1);
    font-family: 'Open Sans', sans-serif;
    z-index: 9999;
    text-shadow: 0px 1px 2px rgba(0, 0, 0, 0.33), -1px 0px 2px rgba(255, 255, 255, 0);
}
.div_Weather{
 height:100px;
 background-color:grey;
}

    .list_weather {
 
  border:5px;
  width:540px;     /*540*/
  height:600px;
  border: 1px solid #ddd; /* Add a thin border to each list item */
  margin-top: -1px; /* Prevent double borders */
  padding: 12px; /* Add some padding */
  text-align:left;
  font-weight:600;
  font-size:18px;
  margin-left:100px;
  margin-bottom:30px;
  background-color:#233067;
  
}

.h1title{

text-align:center;
}


</style>


<script type="text/javascript">
   
   $("tr").ready(function() {
	    var arr = [];
	    var today = new Date();
	    var week = new Array('일', '월', '화', '수', '목', '금', '토');
	    var year = today.getFullYear();
	    var month = today.getMonth() + 1;
	    var day = today.getDate();
	    var hours = today.getHours();
	    var minutes = today.getMinutes();
	    var hours_al = new Array('02', '05', '08', '11', '14', '17', '20', '23');
	    var korea = [ {'region' : '서울','nx' : 60,'ny' : 127}, 
	        {'region' : '인천','nx' : 55,'ny' : 124}, 
	        {'region' : '경기도','nx' : 60,'ny' : 121}, 
	        {'region' : '강원도','nx' : 92,'ny' : 131}, 
	        {'region' : '충청북도','nx' : 69,'ny' : 106}, 
	        {'region' : '충청남도','nx' : 68,'ny' : 100},
	        {'region' : '전라북도','nx' : 63,'ny' : 89}, 
	        {'region' : '전라남도','nx' : 50,'ny' : 67}, 
	        {'region' : '경상남도','nx' : 90,'ny' : 77}, 
	        {'region' : '경상북도','nx' : 91,'ny' : 106}, 
	        {'region' : '제주도','nx' : 52,'ny' : 38} ];

	    /* $('.weather-date').html(
	            month + "월 " + day + "일 "
	                    + week[today.getDay()] + "요일"); */

	    /* 동네예보 시간이 0200 0500 ... 3시간 단위로 23시까지 */
	    for (var i = 0; i < hours_al.length; i++) {
	        var h = hours_al[i] - hours;
	        if (h == -1 || h == 0 || h == -2) {
	            var now = hours_al[i];
	        }
	        if (hours == 00) {
	            var now = hours_al[7];
	        }
	    }

	    /* example
	     * 9시 -> 09시 변경 필요
	     */
	    if (hours < 10) {
	        hours = '0' + hours;
	    }
	    if (month < 10) {
	        month = '0' + month;
	    }
	    if (day < 10) {
	        day = '0' + day;
	    }

	    today = year + "" + month + "" + day;

	    /* 좌표 */
	    $.each(korea,function(j, k) {
	                        var _nx = korea[j].nx, _ny = korea[j].ny, region = korea[j].region, 
	                        apikey = "u6jGJ8uVydzjWlRHw%2BQhnM9BUbRODLL%2BMhbvQXRYdjRjfNJ6TQ53GCpwHE6Kuoc4Qmx8tlAVk%2FPKJavjGikCTw%3D%3D", 
	                        ForecastGribURL = "https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getVilageFcst";
	                        ForecastGribURL += "?ServiceKey=" + apikey;
	                        ForecastGribURL += "&base_date=" + today;
	                        ForecastGribURL += "&base_time=" + now + "00";
	                        ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	                        arr.push({'url' : ForecastGribURL, 'region' : region});

	                        $.ajax({
	                                    url : arr[j].url,
	                                    type : 'GET',
	                                    success : function(data) {
	                                        var $data = $(data).find("response>body>items>item");
	                                        var cate = '';
	                                        var temp = '';
	                                        var sky = '';
	                                        var rain = '';

	                                        $.each($data,function(i,o) {
	                                                            cate = $(o).find("item>category").text(); // 카테고리 목록    

	                                                            if (cate == 'T3H') {
	                                                                temp = $(this).find("fcstValue").text(); // 3시간 온도
	                                                            }
	                                                            if (cate == 'SKY') {
	                                                                sky = $(this).find("fcstValue").text(); // 하늘상태
	                                                            }
	                                                            if (cate == 'PTY') {
	                                                                rain = $(this).find("fcstValue").text(); // 강수형태
	                                                            }
	                                                        });
	                                        
	                                        $('.weather').append('<li class="list-group-item weather_li'+j+'"></li>');
	                                        $('.weather_li' + j).addClass('in' + j);
	                                        $('.in' + j).text(temp); //온도 
	                                        $('.in' + j).prepend(arr[j].region + '&emsp;'); // 지역이름

	                                        if (rain != 0) {
	                                            switch (rain) {
	                                            case '1':
	                                                $('.in' + j).append("/비");
	                                                $('.in' + j).prepend('<i class="fas fa-cloud-showers-heavy"></i>&emsp;');
	                                                break;
	                                            case '2':
	                                                $('.in' + j).append("/비/눈");
	                                                $('.in' + j).prepend('<i class="fas fa-cloud-rain"></i>&emsp;');
	                                                break;
	                                            case '3':
	                                                $('.in' + j).append("/눈");
	                                                $('.in' + j).prepend('<i class="fas fa-snowflake"></i>&emsp;');
	                                                break;
	                                            }
	                                        } else {
	                                            switch (sky) {
	                                            case '1':
	                                                $('.in' + j).append("/맑음");
	                                                $('.in' + j).prepend('<i class="fas fa-sun"></i>&emsp;');
	                                                break;
	                                            case '2':
	                                                $('.in' + j).append("/구름조금");
	                                                $('.in' + j).prepend('<i class="fas fa-cloud-sun"></i>&emsp;');
	                                                break;
	                                            case '3':
	                                                $('.in' + j).append("/구름많음");
	                                                $('.in' + j).prepend('<i class="fas fa-cloud"></i>&emsp;');
	                                                break;
	                                            case '4':
	                                                $('.in' + j).append("/흐림"+"\n");
	                                                $('.in' + j).prepend( '<i class="fas fa-smog"></i>&emsp;');
	                                                break;
	                                            }
	                                        }//if 종료
	                                    }//success func 종료
	                                });
	                    });
	});   
   
  
</script>
<script type="text/javascript">

</script>


<body>



<div class="vis-weather" >
<!-- class="list_weather" style="background-image:url('searchboy.png');" -->
                <h1 style=text-align:center;color:#f1c40f;>전국 날씨</h1>
                
                <ul class="list_weather" style="border-color:#f1c40f;background-color:#233067;height:700px;">
                    <li class="lost-group-item weather"
                   style="white-space:pre-wrap;color:#233067;background-color:#233067;"/>
                   
                </ul>
                
           
                <!-- <ul class="list-group list-group-flush weather" 
                
                -->
</div>

<br>

<br>
<br>
<h1></h1>
<br>
<br>

</body>
</html>