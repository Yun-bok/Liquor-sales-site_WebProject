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


<title>StarryNight</title>

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
	width:auto;
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
    width:auto;
	background: #f2f4f7;
	height:4000px;
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


.empty{
padding:0px;
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
.divgoldline{background:#f1c40f; height:2px;}

.footdiv{ background:#233067; height:900px;}
.footdiv1{ background:#233067;
 height:700px; 
 width:auto;
 align:center;
}
/*background-size:700px;
background-image:url('${path}/TeamProjectCSS/divi1.png'); */
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

/* ?????? ??? ??????????????? ????????? ?????????, ???????????? x????????? ?????? */
.sideicon{
 margin-right: 20px;
 cursor: pointer;
}

/* ??????????????? x?????????, ?????????????????????, ????????????????????? ?????? div */
.sidediv{
	display: inline-block;
	width: 300px;
	height: 230px;	
}

/* ??????????????? x????????? ?????? */
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
  width:500px;
  height:500px;
  border: 1px solid #ddd; /* Add a thin border to each list item */
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6; /* Add a grey background color */
  padding: 12px; /* Add some padding */
}
.eventadd{
width:700px;
height:400px;
margin:auto;
margin-bottom:50px;


}
.tableList{
width:300px;
height:400px;
margin-left:150px;
margin-right:150px;
margin-top:200px;
border-color:#f1c40f;
}

.logout, .loginin{
	font-size: 22px;
	cursor: pointer;
}
   
    /*  */
</style>
</head>
<script type="text/javascript">

$(document).ready(function() {
    var arr = [];
    var today = new Date();
    var week = new Array('???', '???', '???', '???', '???', '???', '???');
    var year = today.getFullYear();
    var month = today.getMonth() + 1;
    var day = today.getDate();
    var hours = today.getHours();
    var minutes = today.getMinutes();
    var hours_al = new Array('02', '05', '08', '11', '14', '17', '20', '23');
    var korea = [ {'region' : '??????','nx' : 60,'ny' : 127}]; 
        
    $(".logout").click(function(){
		if(confirm("???????????? ???????????????????")){
			location.href="logout.do";
		}
	});
    /* $('.weather-date').html(
            month + "??? " + day + "??? "
                    + week[today.getDay()] + "??????"); */

    /* ???????????? ????????? 0200 0500 ... 3?????? ????????? 23????????? */
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
     * 9??? -> 09??? ?????? ??????
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

    /* ?????? */
    $.each(korea,function(j, k) {
       var _nx = korea[j].nx, _ny = korea[j].ny, region = korea[j].region, 
       apikey = "u6jGJ8uVydzjWlRHw%2BQhnM9BUbRODLL%2BMhbvQXRYdjRjfNJ6TQ53GCpwHE6Kuoc4Qmx8tlAVk%2FPKJavjGikCTw%3D%3D", 
       ForecastGribURL = "https://apis.data.go.kr/1360000/VilageFcstInfoService_2.0/getUltraSrtNcst"; 
       ForecastGribURL += "?ServiceKey=" + apikey;
       ForecastGribURL += "&base_date=" + today;
       ForecastGribURL += "&base_time=" + now + "17";
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
                                            cate = $(o).find("item>category").text(); // ???????????? ??????    

                                            if (cate == 'T1H') {
                                                temp = $(this).find("obsrValue").text(); // 3?????? ??????
                                            }
                                            if (cate == 'SKY') {
                                                sky = $(this).find("obsrValue").text(); // ????????????
    		                                }
                                            if (cate == 'PTY') {
                                                rain = $(this).find("obsrValue").text(); // ????????????
                                            }
                                        });
                        
                        $('.weather').append('<li class="lost-group-item weather_li'+j+'"></li>');
                        $('.weather_li' + j).addClass('in' + j);
                        $('.in' + j).html(temp +"??? "); //?????? 
                        $('.in' + j).prepend(arr[j].region + '&emsp;'); // ????????????

                                        if (rain != 0) {
                                            switch (rain) {
                                            case '1':
                                                $('.in' + j).append(" / ??? ");
                                                $('.in' + j).prepend('<i class="fas fa-cloud-showers-heavy"></i>&emsp;');
                                                break;
                                            case '2':
                                                $('.in' + j).append(" / ???/???");
                                                $('.in' + j).prepend('<i class="fas fa-cloud-rain"></i>&emsp;');
                                                break;
                                            case '3':
                                                $('.in' + j).append(" / ???");
                                                $('.in' + j).prepend('<i class="fas fa-snowflake"></i>&emsp;');
                                                break;
                                            }
                                        } else {
                                            switch (sky) {
                                            case '1':
                                                $('.in' + j).append(" / ??????");
                                                $('.in' + j).prepend('<i class="fas fa-sun"></i>&emsp;');
                                                break;
                                            case '2':
                                                $('.in' + j).append(" / ????????????");
                                                $('.in' + j).prepend('<i class="fas fa-cloud-sun"></i>&emsp;');
                                                break;
                                            case '3':
                                                $('.in' + j).append(" / ????????????");
                                                $('.in' + j).prepend('<i class="fas fa-cloud"></i>&emsp;');
                                                break;
                                            case '4':
                                                $('.in' + j).append(" / ??????");
                                                $('.in' + j).prepend( '<i class="fas fa-smog"></i>&emsp;');
                                                break;
                                            }
                                        }//if ??????
                                    }//success func ??????
                                });
                    });
});



</script>

<body>
<header style=font-family:ParkYongJun;>
<a href="${path}\StarryMain.do"><img src="${path}\TeamProjectCSS\LOGO.png" style=width:250px;height:150px;/></a>
<ul align="center">
<li>
<div class="dropdown">
<a href="alcoholList.do" style=margin-left:100px;>?????????</a>
<div class="dropdown-content">
<a href="weatherProd.do?w_category=??????">??????</a>
<a href="weatherProd.do?w_category=??????">??????</a>
<a href="weatherProd.do?w_category=???">???</a>
<a href="weatherProd.do?w_category=???">???</a>
<a href="weatherProd.do?w_category=??????">??????</a>
</div>
</div>
<div class="dropdown">
<a href="alcoholList.do">?????????</a>
<div class="dropdown-content">
<a href="acProd.do?ac_category=??????">??????</a>
<a href="acProd.do?ac_category=?????????">?????????</a>
<a href="acProd.do?ac_category=??????">??????</a>
<a href="acProd.do?ac_category=?????????">?????????</a>
<a href="acProd.do?ac_category=??????">??????</a>
</div>
</div>
<div class="dropdown">
<a href="${path}/event.do?event_no=1">?????????</a>
<div class="dropdown-content">


</div>
</div>
<div class="dropdown">
<a href="http://localhost:7080/StarryNight/StarryMap.do">??????/????????????</a>
<div class="dropdown-content">
<a href="http://localhost:7080/StarryNight/StarryMap.do">????????????</a>
</div>
</div>

</li>
</ul>
<div class="search_div">
<input type="text" class="search" style=border-radius:50px;width:300px;height:50px;font-size:18px;margin-left:200px; onclick="search()">
<img class="searchicon" src="${path}\TeamProjectCSS\Icon\SearchIcon.png">
</div>
<c:choose>
<c:when test="${empty member_no}">
<p class="loginin" onclick="location.href='login.do'">?????????</p>
</c:when>
<c:otherwise>
<p class="logout">????????????</p>
</c:otherwise>
</c:choose>

<img class="sideicon" src="${path}\TeamProjectCSS\Icon\SideIcon.png" style=width:60px; onclick="sidenav()"/>
</header>
<main>
<div class="divgrey"></div>
<!-- <div class="footdiv" style=text-align:center;><img src="blue.gif" style=width:1700px;height:700px;/></div> -->

<div class="sidenav" style=font-family:ParkYongJun;>
  <!-- ??????????????? x?????????, ?????????????????????, ????????????????????? ?????? div --> 
  <div class="sidediv">
  <img class="sideicon" src="${path}\TeamProjectCSS\Icon\SideIconX.png" style=width:60px; onclick="sidenav2()"/>
  <!-- ??????????????? ?????????????????????, ????????????????????? ?????? div --> 
  <div class="sideProCart" >
  <c:choose>
  	<c:when test="${empty member_no}">
  	<img class="procarticon profileicon" src="${path}\TeamProjectCSS\Icon\ProfileIcon.png" style=width:65px; onclick="location.href='login.do'"/>
  	</c:when>
  	<c:when test="${member_no eq 1}">
  	<img class="procarticon profileicon" src="${path}\TeamProjectCSS\Icon\ProfileIcon.png" style=width:65px; onclick="location.href='AdminProduct.do'"/>
  	</c:when>
  	<c:otherwise>
  	<img class="procarticon profileicon" src="${path}\TeamProjectCSS\Icon\ProfileIcon.png" style=width:65px; onclick="location.href='myInfo.do'"/>
  	</c:otherwise>
  </c:choose>
  
  <img class="procarticon carticon" src="${path}\TeamProjectCSS\Icon\CartIcon.png" style=width:65px; onclick="location.href='http://localhost:7080/StarryNight/basket1.do'"/>
  </div>
  </div>
  <a href="#" style=color:#233067;font-size:25px>?????????</a>
  <a href="#" style=color:#233067;font-size:25px>?????????</a>
  <a href="#" style=color:#233067;font-size:25px>?????????</a>
  <a href="#" style=color:#233067;font-size:25px>????????????/??????</a>
</div>

<main>


<!----------------------????????? ??? ??? ???????????? ?????? -------------------------------600800------------------------->

<!-- divgreyline ??? ???????????????????????? -->
<div class="divgoldline"></div>
<div class="footdiv" style=text-align:left;>

<img src="${path}/Mainimage/mainadd1.png" style=width:700px;height:700px;display:inline-block;margin-bottom:50px;>


<iframe src="http://localhost:7080/StarryNight/Starryframe.do"
 name="iframe-a" height="800px;" width="800px;" title="test"  
 scrolling="no" style=margin-bottom:50px;border:5px;border-color:#233067;></iframe>
</div>
<div class="divgoldline"></div>

<!-- class="list_weather" -->
			
           
           <div class="footdiv1" style=height:900px;>   
           <div class="divgoldline"></div>
          <h1 style="color:#f1c40f;padding-top:40px;border:3px;">?????? ?????? ?????????? :</h1>
                <ul 
                    style="font-weight:600;font-size:50px;">
                    <li class="lost-group-item weather"
                    style="display:inline-block;color:#f1c40f;"></li>	
                </ul>
                <span style=margin-bottom:30px;>
               <img src="${path}/Mainimage/divi2.png"
           style=width:500px;height:500px;text-align:right;/></span>
           <span>
           <iframe width="960" height="515" style=margin-left:100px;margin-bottom:100px;
            src="https://www.youtube.com/embed/2W7Pn3qxeMw" title="YouTube video player" 
                frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
                gyroscope; picture-in-picture" allowfullscreen></iframe></span>
             
                </div>   
                <div class="divgoldline"></div>
             
               <div class="divgoldline"></div>
            
			<div class="footdiv1" style="height:900px;">
<div class="divgoldline"></div>
<h1 style=text-align:center;color:#f1c40f;padding-top:20px;font-size:55px;font-family:ParkYongJun;>StarryNight ?????? ??????</h1>
<img src="${path}/ProductImg/a.png" class="tableList" border=5px;>
<img src="${path}/ProductImg/e.png" class="tableList" border=5px;>
<img src="${path}/ProductImg/g.png" class="tableList" border=5px;>
<br>
<div style=color:#f1c40f;font-size:40px;>

<span style=margin-left:230px;>????????????</span>
<span style=margin-left:370px;>????????? ?????????</span>
<span style=margin-left:370px;>??? ?????????</span>

</div>

</div>
		<div class="divgoldline"></div>	
		<div class="divgoldline"></div>	
			    
       
              
                 
                <!-- <ul class="list-group list-group-flush weather" 
                
                -->
               


<!-- ------------------------------------------------------------------------- -->

<div class="carousel">
<div class="divgoldline"></div>
    <div class="carousel-inner">
    
        <input class="carousel-open" type="radio" id="carousel-1" name="carousel" aria-hidden="true" hidden="" checked="checked">
        <div class="carousel-item" style="background-color:#68abc3">
        <a href="${path}/event.do?event_no=1" >
            <img class="eventadd" src="${path}/Mainimage/event1.png"  >
            </a>
            <!-- ????????? ????????? ?????????????????? ?????? -->
            <!-- 1.#68abc3 | 2.#15aae2 |3.#abe3ff-->
        </div>
        <input class="carousel-open" type="radio" id="carousel-2" name="carousel" aria-hidden="true" hidden="">
        <div class="carousel-item" style="background-color:#15aae2">
        <a href="${path}/event2.do?event_no=2">
            <img class="eventadd" src="${path}/Mainimage/event2.png">
            </a>
        </div>
        <input class="carousel-open" type="radio" id="carousel-3" name="carousel" aria-hidden="true" hidden="">
        <div class="carousel-item" style="background-color:white">
        <a href="${path}/event3.do?event_no=3">
            <img class="eventadd" src="${path}/Mainimage/event3.png">
            </a>
        </div>
        <label for="carousel-3" class="carousel-control prev control-1" style=margin-bottom:10px;>???</label>
        <label for="carousel-2" class="carousel-control next control-1" style=margin-bottom:10px;>???</label>
        <label for="carousel-1" class="carousel-control prev control-2" style=margin-bottom:10px;>???</label>
        <label for="carousel-3" class="carousel-control next control-2" style=margin-bottom:10px;>???</label>
        <label for="carousel-2" class="carousel-control prev control-3" style=margin-bottom:10px;>???</label>
        <label for="carousel-1" class="carousel-control next control-3" style=margin-bottom:10px;>???</label>
        <ol class="carousel-indicators">
            <li>
                <label for="carousel-1" class="carousel-bullet">???</label>
            </li>
            <li>
                <label for="carousel-2" class="carousel-bullet">???</label>
            </li>
            <li>
                <label for="carousel-3" class="carousel-bullet">???</label>
            </li>
        </ol>
    </div>
</div>
<!-- -------------------------------------------------------------------------- -->
<div class="divgoldline"></div>
<div class="divgoldline"></div>
<div class="divgoldline"></div>

</main>

<!----------------------Footer -------------------------------------------------------->
<footer>
<div class="divgreyline"></div>
<div class="abcd-div">
<img class="abcd-img" src="${path}/TeamProjectCSS/LOGO.png" style=width:150px;height:90px;>
<div class="a-foot">
????????? ??? ????????? ????????? ?????? : StrarryNight(???)<br>
????????? ????????? ??????????????? 21<br>
????????????????????? : 2022-????????????-1111<br>
</div>
<div class="b-foot">
365???????????? | ????????????????????????????????????<br>
<span style=font-weight:900;font-size:25px;>1577-7011 (??????)</span><br>
????????? ????????? ??????????????? 21<br>
email : help@starrynight.com
</div>
<div class="c-foot">
<span style=font-weight:900;>???????????? ?????????????????? ??????</span><br>
????????? ???????????? ?????? ????????? ????????? ??????<br>
??????????????? ?????????????????? ????????? ????????????<br>
??????????????? ???????????? ????????????.<br>
</div>
</div>
<div class="df-div">
<div class="d-foot">
???????????? ??? ???????????? ?????? ????????? StarryNight??? ????????? ?????? ???????????? ???????????? ??????????????????(????????????) ????????? ???????????? ????????????.<br>
??????????????????(????????????) ????????? ?????? StarryNight??? ??????????????????????????? ??????????????? ???????????? ????????????.<br>
StarryNigh??? ??????????????????(????????????) ??????, ???????????? ??? ?????? ?????? ????????? ????????? ?????? ????????????.<br>
</div>
<p class="f-foot">??? 2022 StarryNight Company. All Rights Reserved.</p>
</div>
</footer>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script type="text/javascript">

	$(".sidenav").hide();
	function sidenav(){
		$(".sidenav").show();
		}
	function sidenav2(){
		$(".sidenav").hide();
	}
	(function () {
	      const slideList = document.querySelector('.slide_list');  // Slide parent dom
	      const slideContents = document.querySelectorAll('.slide_content');  // each slide dom
	      const slideBtnNext = document.querySelector('.slide_btn_next'); // next button
	      const slideBtnPrev = document.querySelector('.slide_btn_prev'); // prev button
	      const pagination = document.querySelector('.slide_pagination');
	      const slideLen = slideContents.length;  // slide length
	      const slideWidth = 400; // slide width
	      const slideSpeed = 300; // slide speed
	      const startNum = 0; // initial slide index (0 ~ 4)
	      
	      slideList.style.width = slideWidth * (slideLen + 2) + "px";
	      
	      // Copy first and last slide
	      let firstChild = slideList.firstElementChild;
	      let lastChild = slideList.lastElementChild;
	      let clonedFirst = firstChild.cloneNode(true);
	      let clonedLast = lastChild.cloneNode(true);

	      // Add copied Slides
	      slideList.appendChild(clonedFirst);
	      slideList.insertBefore(clonedLast, slideList.firstElementChild);

	      // Add pagination dynamically
	      let pageChild = '';
	      for (var i = 0; i < slideLen; i++) {
	        pageChild += '<li class="dot';
	        pageChild += (i === startNum) ? ' dot_active' : '';
	        pageChild += '" data-index="' + i + '"><a href="#"></a></li>';
	      }
	      pagination.innerHTML = pageChild;
	      const pageDots = document.querySelectorAll('.dot'); // each dot from pagination

	      slideList.style.transform = "translate3d(-" + (slideWidth * (startNum + 1)) + "px, 0px, 0px)";

	      let curIndex = startNum; // current slide index (except copied slide)
	      let curSlide = slideContents[curIndex]; // current slide dom
	      curSlide.classList.add('slide_active');

	      /** Next Button Event */
	      slideBtnNext.addEventListener('click', function() {
	        if (curIndex <= slideLen - 1) {
	          slideList.style.transition = slideSpeed + "ms";
	          slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 2)) + "px, 0px, 0px)";
	        }
	        if (curIndex === slideLen - 1) {
	          setTimeout(function() {
	            slideList.style.transition = "0ms";
	            slideList.style.transform = "translate3d(-" + slideWidth + "px, 0px, 0px)";
	          }, slideSpeed);
	          curIndex = -1;
	        }
	        curSlide.classList.remove('slide_active');
	        pageDots[(curIndex === -1) ? slideLen - 1 : curIndex].classList.remove('dot_active');
	        curSlide = slideContents[++curIndex];
	        curSlide.classList.add('slide_active');
	        pageDots[curIndex].classList.add('dot_active');
	      });

	      /** Prev Button Event */
	      slideBtnPrev.addEventListener('click', function() {
	        if (curIndex >= 0) {
	          slideList.style.transition = slideSpeed + "ms";
	          slideList.style.transform = "translate3d(-" + (slideWidth * curIndex) + "px, 0px, 0px)";
	        }
	        if (curIndex === 0) {
	          setTimeout(function() {
	            slideList.style.transition = "0ms";
	            slideList.style.transform = "translate3d(-" + (slideWidth * slideLen) + "px, 0px, 0px)";
	          }, slideSpeed);
	          curIndex = slideLen;
	        }
	        curSlide.classList.remove('slide_active');
	        pageDots[(curIndex === slideLen) ? 0 : curIndex].classList.remove('dot_active');
	        curSlide = slideContents[--curIndex];
	        curSlide.classList.add('slide_active');
	        pageDots[curIndex].classList.add('dot_active');
	      });

	      /** Pagination Button Event */
	      let curDot;
	      Array.prototype.forEach.call(pageDots, function (dot, i) {
	        dot.addEventListener('click', function (e) {
	          e.preventDefault();
	          curDot = document.querySelector('.dot_active');
	          curDot.classList.remove('dot_active');
	          
	          curDot = this;
	          this.classList.add('dot_active');

	          curSlide.classList.remove('slide_active');
	          curIndex = Number(this.getAttribute('data-index'));
	          curSlide = slideContents[curIndex];
	          curSlide.classList.add('slide_active');
	          slideList.style.transition = slideSpeed + "ms";
	          slideList.style.transform = "translate3d(-" + (slideWidth * (curIndex + 1)) + "px, 0px, 0px)";
	        });
	      });
	    })();

</script>
</html>