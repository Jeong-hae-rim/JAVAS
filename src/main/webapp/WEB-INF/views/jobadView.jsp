<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.List,vo.JobadVO,vo.LoginVO"%>
<%@ page
	import="vo.WantadVO, vo.LoginVO, vo.PageVO, vo.WantSearchVO, java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>잉력시장 : 구인 게시판</title>
    <meta charset="utf-8">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    
    <link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.5.1/dist/leaflet.css"
	integrity="sha512-xwE/Az9zrjBIphAcBb3F6JVqxf46+CDLwfLMHloNu6KEQCAWi6HcDUbeOfBIptF7tcCzusKFjFw2yuvEpDL9wQ=="
	crossorigin="" />
<script src="https://unpkg.com/leaflet@1.5.1/dist/leaflet.js"
	integrity="sha512-GffPMF3RvMeYyc1LWMHtK8EbPv0iNZ8/oTtHPx9/cc2ILxQ+u905qIwdpULaqDkyBKgOaB57QTMg7ztg8Jm2Og=="
	crossorigin=""></script>
    
  </head>
  <style>
.ftco-section {
    padding: 2em 0;
    position: static;
}

table{

    height: 600px;
    width : 600px;
    border: 1px solid #BDBDBD;


}

#table4{
width : 200px;
height : 10px;
padding: 20px 40px;
}

  </style>
  <body>
 	 <div class="bg-top navbar-light d-flex flex-column-reverse">
    	<div class="container py-3">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-4 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="/javas/main" style="font-family: 'Do Hyeon', sans-serif;">잉/력/시/장 <span>Surplus-Power Market</span></a>
    			</div>
	    		<div class="col-lg-8 d-block">
		    		<div class="row d-flex" style="font-family: 'Do Hyeon', sans-serif;">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-paper-plane"></span></div>
					    	<div class="text">
					    		<span>Email</span>
						    	<span>surpluspowermarket@gmail.com</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-call"></span></div>
						    <div class="text">
						    	<span>Call</span>
						    	<span>+123 523 5598</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="ion-ios-time"></span></div>
						    <div class="text">
						    	<span>Project Period</span>
						    	<span>20200309-20200319</span>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
		  <div class="top-social-menu py-2 bg-light" >
		  	<div class="container">
		  		<div class="row">
			    	<div class="col">
			    		<p class="social mb-0">
			    			<a href="#"><i class="ion-logo-facebook"></i><span class="sr-only">Facebook</span></a>
			    			<a href="#"><i class="ion-logo-twitter"></i><span class="sr-only">Twitter</span></a>
			    			<a href="#"><i class="ion-logo-googleplus"></i><span class="sr-only">Googleplus</span></a>
			    		</p>
			    	</div>
			    	<div class="col text-right">
			    		<a href="#" class="btn-link">@JAVAS</a>
			    	</div>
			    </div>
		  	</div>
		  </div>
    </div>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item"><a href="/javas/main" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">홈</a></li>
	        	<li class="nav-item"><a href="/javas/about" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">소개</a></li>
	        	<li class="nav-item"><a href="/javas/developers" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">개발진</a></li>
	        	<li class="nav-item active"><a href="/javas/jobad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구인</a></li>
	        	<li class="nav-item"><a href="/javas/wantad" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">대타 구직</a></li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li class="nav-item">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<c:if test="${!empty loginVO}">
					<li class="nav-item"><a href="/javas/mypage" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">마이페이지</a></li>
					<li class="nav-item"><a href="/javas/logout" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">로그아웃</a></li>
				</c:if>         	
				<c:if test="${empty loginVO}">
	          	<li class="nav-item"><a href="/javas/login/form" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">로그인</a></li>
	          	<li class="nav-item"><a href="/javas/meminfo" class="nav-link" style="font-family: 'Do Hyeon', sans-serif; font-size: 20px;">회원가입</a></li>
	          	</c:if>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
     <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
			 <h1 class="mb-2 bread">구인 게시판</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="/javas/main">홈 <i class="ion-ios-arrow-forward"></i></a></span> <span>구인 게시판 <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    
    <br><br>
	<c:if test="${!empty loginVO}">
		<div class="icon d-flex justify-content-center align-items-center">
			<span> <img src="/javas/resources/images2/<c:out value="${loginVO.mem_userid}" />.png" width="100"></span>
		</div>
		<div class="text" style="text-align: center; font-family: 'Do Hyeon', sans-serif;">
			<h4>
				<c:out value="${loginVO.mem_username}" />
				님 환영합니다!
			</h4>
		</div>
	</c:if>

	<br>
   <hr style="width : 85%;">
   <br><br>
    
     <% LoginVO loginVO = (LoginVO)session.getAttribute("loginVO"); %>

<%
List<JobadVO> list = (List<JobadVO>)request.getAttribute("list");
JobadVO vo = (JobadVO)request.getAttribute("vo");
%>
    
    
    
<%
if(list!=null && list.size()!=0){
%>
		<section class="ftco-section">
			<div class="container">
				<div class="row">
<%
	for(JobadVO vo1 : list){
%>
       <div class="col-md-6 col-lg-4 ftco-animate">
            <div class="blog-entry">
              <div style = "text-align : center;">
              <img src="/javas/resources/images2/<%= vo1.getMem_userid() %>.png" width="100">
              </div>
                 <div style = "text-align : center;">
                 <div class="meta-date text-center p-2">
                  <span class="day"><%= vo1.getPost_writedate() %></span>
                </div>

              <div class="text border border-top-0 p-4">
                <h3 class="heading"><a href="/javas/jobad?action=listone&post_id=<%= vo1.getPost_id() %>"><%= vo1.getPost_title() %></a></h3>
                <a href="/javas/jobad?action=listWriter&mem_username=<%= vo1.getMem_username() %>"><%= vo1.getMem_username() %></a>
                <p><%= vo1.getPost_content() %></p>
                <p><%= vo1.getPost_location() %></p>
        		<!-- <div class="col-md-6 col-lg-4 ftco-animate"> -->
                <p class="mb-0" style="font-family: 'Do Hyeon', sans-serif;">
                <a href="/javas/jobad?action=listone&post_id=<%= vo1.getPost_id() %>" class="btn btn-primary">더보기 <span class="ion-ios-arrow-round-forward"></span></a></p>
                <p class="ml-auto mb-0">
                <span class="icon-chat"></span> <%= vo1.getPost_review_count() %>
	            </p>
                </div>
              </div>
            </div>
          </div>
<%
	}
%>
			</div>
			</div>

		</div>
		</section>
		

<hr style="width : 85%;">		
        <div>
          <div class="col text-center">
            <div class="block-27">
<%
				out.print(request.getAttribute("pagelist"));
%>
            </div>
          </div>
        </div>
                
<% 	if(list!=null && list.size()!=0){ %>
<div style="text-align : center;">
	<div>
		<button class="btn btn-primary" onclick="isAdmin('insert');" style="font-family: 'Do Hyeon', sans-serif; font-size : 20px;">작성하기</button>
		<button class="btn btn-primary" onclick="location.href='/javas/jobad'" style="font-family: 'Do Hyeon', sans-serif; font-size : 20px;">처음 페이지로</button>
		<br><br>
		<form action="/javas/jobad" method="get">
			<input type="hidden" name="action" value="search">
			<select class="selectpicker" name="searchType">
				<option value="location">위치</option>
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="title_content">제목+내용</option>
			</select>
			<input type="text" name="key">
			<input type="submit" value="검색">
		</form>
	</div>
</div>
<% 
	}
}
if(request.getAttribute("snull")!=null){
%>
	<h1><%= (String)request.getAttribute("snull") %></h1>
	<button onclick="location.href='/javas/jobad'">목록 가기</button>
<%
}
if(vo!=null){
%>


<div style="margin : auto;">
  <table style="text-align : left; margin : auto;">
   <tr>
     <td id = table4>유저 아이디</td><td><%= vo.getMem_userid() %></td>
   </tr>
   <tr>
     <td id = table4>유저 이름 </td><td><%= vo.getMem_username() %></td>
   </tr>
    <tr>
     <td id = table4>글 제목 </td><td><%= vo.getPost_title() %></td>
   </tr>
    <tr>
     <td id = table4>글 내용 </td><td><%= vo.getPost_content() %></td>
   </tr>
    <tr>
     <td id = table4>작성 날짜 </td><td><%= vo.getPost_writedate() %></td>
   </tr>
    <tr>
     <td id = table4>조회수 </td><td><%= vo.getPost_hit() %></td>
   </tr>
    <tr>
     <td id = table4>장소 </td><td><%= vo.getPost_location() %></td>
   </tr>
    <tr>
     <td id = table4>시급 </td><td><%= vo.getPost_payment() %></td>
   </tr> 
   <tr>
     <td id = table4>전화번호 </td><td><%= vo.getPost_phone() %></td>
   </tr>
    <tr>
     <td id = table4>리뷰 수 </td><td><%= vo.getPost_review_count() %></td>
   </tr>
   <tr>
   <td id = table3 colspan ="2" style = "text-align: center;">
   </td>
   </tr>
  </table>
  <br>
  <div style="font-family: 'Do Hyeon', sans-serif; font-size: 60px;">
	<button class="btn btn-primary pull-right" onclick="location.href='/javas/jobad?pgNum=${sessionScope.pgNum}'" style="margin-left: 480px;">목록 가기</button>
	<button class="btn btn-primary pull-right" onclick="isAdmin('delete');">글 삭제하기</button>
	<button class="btn btn-primary pull-right" onclick="isAdmin('update');" style="margin-right: 10px;">글 수정하기</button>
  </div>
</div>
<hr>
<div style="text-align : center;">
	<%@ include file="jobreviewform.jsp" %>
</div>
<%
}
%>


<br><br><br>
     <footer class="ftco-footer ftco-bg-dark ftco-section">
    <h2 style = "color : #ffffff; text-align : center;">Have a Questions?</h2>
    <div style = "text-align : center;">
    <span class="icon icon-map-marker"></span><span class="text">212 Teheran-ro, Gangnam-gu, Seoul, Republic of Korea (06220)</span>
	              <br><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a>
	              <br><a href="#"><span class="icon icon-envelope"></span><span class="text">surpowermarket@gmail.com</span></a>
    </div>
    <br><br><br>
 <p style = "text-align : center;"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">@JAVAS</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
  <script src="js/bootstrap-select.js"></script>
  <script>
  $(window).on('load', function (){
		$('.selectpicker').selectpicker({
		  		'selectedText': 'cat'
		});
  });
  </script>
  <script>
	function logout(){
		location.href = '/javas/resources/logout.jsp';
	};
	function isAdmin(command){
		<% if(loginVO==null){ %>
			if(command=="insert"){
				window.alert("로그인을 하셔야 글 작성을 하실 수 있습니다!");
				location.href = '/javas/jobad?pgNum='+${sessionScope.pgNum};
			}
			<% if(vo!=null){ %>
			if(command=="update"){
				window.alert("로그인을 하셔야 글 수정을 하실 수 있습니다!");
				location.href = '/javas/jobad?action=listone&post_id='+<%= vo.getPost_id() %>;
			}
			else if(command=="delete"){
				window.alert("로그인을 하셔야 글 삭제를 하실 수 있습니다!");
				location.href = '/javas/jobad?action=listone&post_id='+<%= vo.getPost_id() %>;
			}
			<% } %>
		<% } 
		else{
		%>
			if(command=="insert"){
				location.href = '/javas/jobadinsert';
			}
			<% if(vo!=null){ %>
			else if(command=="update"){
				<% if(loginVO.getMem_userid().equals(vo.getMem_userid())){ %>
					
					location.href = '/javas/jobadupdate';
				
				<% } 
				else{
				%>
					
					window.alert("해당 유저만 글 수정을 하실 수 있어요!");
					location.href = '/javas/jobad?action=listone&post_id='+<%= vo.getPost_id() %>;
				
				<% } %>
			}
			else if(command=="delete"){
				<% if(loginVO.getMem_userid().equals(vo.getMem_userid())){ %>
					
					location.href = '/javas/jobad?action=delete&post_id='+<%= vo.getPost_id() %>;
				
				<% } 
				else{
				%>
					
					window.alert("해당 유저만 글 삭제를 하실 수 있어요!");
					location.href = '/javas/jobad?action=listone&post_id='+<%= vo.getPost_id() %>;
				
				<% } %>
			}
		<% } 
		}
		%>
	}
	</script>
  </body>
</html>