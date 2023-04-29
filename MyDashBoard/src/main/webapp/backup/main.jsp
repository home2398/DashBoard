<%@page import="java.awt.Button"%>
<%@page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selfmade Orange Dashboard_Main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.5"
	rel="stylesheet" />
<!-- Nepcha Analytics (nepcha.com) -->
<!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR. -->
<script defer data-site="YOUR_DOMAIN_HERE"
	src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- jquery 로딩 -->

<style type="text/css">
/* 모달창 스타일 */
.modalDiv {
  display: none; /* 모달창 초기에는 숨김 */
  position: fixed; /* 모달창이 스크롤되지 않도록 설정 */
  z-index: 1; /* 모달창 위에 다른 요소가 놓이지 않도록 설정 */
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0,0,0,0.4); /* 배경색과 투명도 설정 */
}

/* 모달창 콘텐츠 스타일 */
.modal-content-div {
  background-color: #fefefe;
  margin: 2% auto; /* 모달창이 화면 중앙에 위치하도록 설정 */
  margin-left:15%;
  padding: 10px;
  border: 1px solid #888;
  width: 1600px;
  height: 1000px;
}

/* 차트 스타일 */
#modalIframe {
  width: 1500px;
  height: 950px;
  position: fixed;
  overflow: auto;

}

/* 모달창 닫기 버튼 스타일 */
.closeSpan {
  color: #aaa;
  float: right;
  font-size: 30px;
  font-weight: bold;
}

.closeSpan:hover,
.closeSpan:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

/* 두꺼운 폰트 */
@font-face {
  font-family: 'GangwonEduPowerExtraBoldA';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}
/* 관광여행숙박시설... 이런애들 폰트 */
@font-face {
  font-family: 'GangwonEdu_OTFBoldA';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}
/* 챠트 진한거  */
@font-face {
  font-family: 'GangwonEduHyeonokT_OTFMediumA';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduHyeonokT_OTFMediumA.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}

/* 차트 태그 */
.text-sm2 {
  font-family: 'GangwonEduHyeonokT_OTFMediumA';
  font-size: xx-large;
  line-height: 1.5;
}

.select-file1 {
	margin-bottom: 20px;
}

.select-file2 {
	margin-bottom: 30px;
}

.csize2 {
	border-bottom-left-radius: 10% !important;
	border-bottom-right-radius: 10% !important;
}

.csize3 {
	height: 400px;
}

.cpadding1 {
	padding-left: 80px !important;
}

.bsize {
	width: 10%;
}

/* 톱니바퀴모양 아이콘 */
.material-icons1 {
  color: #EC6602;
}

.material-icons1 {   
  font-family: 'Material Icons Round';
  font-weight: normal;
  font-style: normal;
  font-size: 28px;
  /* Preferred icon size */
  display: inline-block;
  line-height: 1;
  text-transform: none;
  letter-spacing: normal;
  word-wrap: normal;
  white-space: nowrap;
  direction: ltr;
  /* Support for all WebKit browsers. */
  -webkit-font-smoothing: antialiased;
  /* Support for Safari and Chrome. */
  text-rendering: optimizeLegibility;
  /* Support for Firefox. */
  -moz-osx-font-smoothing: grayscale;
  /* Support for IE. */
  font-feature-settings: 'liga';
}

/* 로고 밑 흰색 줄*/
.main-blank {
   background-color: white;
   height: 3%;
}

/* .main-blank {
	background-color: white;
	height: 0.5%;
} */

.pheader {
	font-family: 'GangwonEduPowerExtraBoldA';
	font-size: 4ch;
	font-style: italic;
	color: #FF8839;
	position: float;
}

/* .chart-div {
	display: inline-block;
	width: 30%;
} */

/* 왼쪽아이콘 */
.material-icons{
  color: orange;
}

/* 왼쪽 아이콘 */
.material-icons {
  font-family: 'Material Icons Round';
  font-weight: normal;
  font-style: normal;
  font-size: 28px;
  /* Preferred icon size */
  display: inline-block;
  line-height: 1;
  text-transform: none;
  letter-spacing: normal;
  word-wrap: normal;
  white-space: nowrap;
  direction: ltr;
  /* Support for all WebKit browsers. */
  -webkit-font-smoothing: antialiased;
  /* Support for Safari and Chrome. */
  text-rendering: optimizeLegibility;
  /* Support for Firefox. */
  -moz-osx-font-smoothing: grayscale;
  /* Support for IE. */
  font-feature-settings: 'liga';
}

/* 왼쪽 목록바 글씨*/
.ms-1 {
  font-size: large;
  margin-left: 0.25rem !important;
}

/* 왼쪽 목록바 글씨 */
.navbar-nav {
font-family: 'GangwonEdu_OTFBoldA';
font-size: larger !important;
}

/* 제일 위 오른쪽 log out 글씨 */
.navbar-nav1 {
font-family: 'GangwonEduPowerExtraBoldA';
font-color: #3C3C3C;
font-size: x-large;
transition: box-shadow 0.25s ease-in, background-color 0.25s ease-in;
}

.nav-link{
font-color: #EC6602 ;
}

/* 왼쪽 검정색 */
.bg-gradient-dark1 {
  background-image: linear-gradient(195deg, #42424a 0%, #42424a 100%);
  /* height: 95%; */
}

/* 맨위 대시보드 영어 글씨 */
.Dashboard {
  font-family: 'GangwonEduPowerExtraBoldA';
  font-size: 4ch;
  font-style: italic;
  color: #FF8839;
}

/* 메인페이지 글씨 */
.main_page {
  font-family: 'GangwonEduPowerExtraBoldA';
  font-size: 4ch;
  color: #FF8839;
}

.m-01 {
  margin: 0 !important;
}

/* 왼쪽 글씨 마우스로 올리면 */
.nav-item:hover {
  background-image: linear-gradient(195deg, #FFDBB7 0%, #FFDBB7 100%);
}

/* **님 환영합니다! */
.navbar-main {
  font-family: 'GangwonEduPowerExtraBoldA';
  font-size: x-large;
  color: #EC6602 ;
  transition: box-shadow 0.25s ease-in, background-color 0.25s ease-in;
}

/* **님 환영합니다! */
.pe-md-3 {
  font-weight: bold;
  color: #EC6602 ;
  padding-right: 1rem !important;
  position: static;
}

.mx-4 {
  margin-right: 2rem !important;
  margin-left: 1rem !important;
}

.px-0 {
  padding-right: 1.0rem !important;
  padding-left: 1.0rem !important;
} 

/* signin */
.navbar-nav1 {
  --bs-nav-link-padding-x: 0;
  --bs-nav-link-padding-y: 0.5rem;
  --bs-nav-link-font-weight: ;
  --bs-nav-link-color: var(--bs-navbar-color);
  --bs-nav-link-hover-color: var(--bs-navbar-hover-color);
  --bs-nav-link-disabled-color: var(--bs-navbar-disabled-color);
  display: flex;
  flex-direction: column;
  padding-left: 0;
  margin-bottom: 0;
  list-style: none;
}
/* 맨위 오른쪽 사람 이모티콘*/
.me-sm-1 {
  color: #3C3C3C;
  margin-right: 0.25rem !important;
}

/* 맨위 오른쪽 사람 이모티콘 옆 sing in */
.d-none {
  color: #EC6602;
}

.person{
  color:#3C3C3C;
}

.log-out {
  color: #3C3C3C;
}
</style>
</head>

<body class="g-sidenav-show  bg-gray-200">
	<aside
		class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark"
		id="sidenav-main">
		<div class="logolarge">
			<img src="assets/img/logo.png" alt="main_logo" width="250"
				height="100">
		</div>
		<div class="sidenav-header">
		<div class="main-blank">
		</div>
		
		
		
		<a class="navbar-brand m-01">
		<span class="main_page font-weight-bold " id="main_page">메인페이지<span>
		</a>
		</div>
		<hr class="horizontal light mt-0 mb-2">
		<div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a
               class="nav-link text-white active bg-gradient-primary1sidenav-collapse-main"
					href="GoMain.do">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<span class="material-icons opacity-10">dashboard</span>
						</div> <span class="nav-link-text ms-1">Dashboard</span>
				</a></li>

				<li class="nav-item"><a class="nav-link text-white "
					href="GoMypage.do">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="material-icons opacity-10">person</i>
						</div> <span class="nav-link-text ms-1">마이페이지</span>
				</a></li>
			</ul>
		</div>
		<div class="sidenav-footer position-absolute w-100 bottom-0 "></div>
	</aside>
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
			id="navbarBlur" data-scroll="true">
			<div class="container-fluid py-1 px-3">
				<span class="pheader">Main</span>
				<span class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar"></span>

					<span class="ms-md-auto pe-md-3 d-flex align-items-center"></span>
						<ul class="navbar-main pe-md-3 navbar-nav  justify-content-end">
							<c:if test="${empty User}">
								<li class="nav-item d-flex align-items-center"><a
									href="GoSign-in.do"
									class="nav-link text-body font-weight-bold px-0"> <i
										class="fa fa-user me-sm-1"></i> <span
										class="log-out d-sm-inline d-none">Log In</span>
								</a></li>
							</c:if>
						<c:if test="${!empty User}">
								<span>${User.id}님 환영합니다!</span>
								<li class="nav-item d-flex align-items-center"><a
									href="GoLogout.do"
									class="nav-link text-body font-weight-bold px-0">
									<i class="person fa fa-user me-sm-1"></i> <span
										class="log-out d-sm-inline d-none">Log Out</span>
								</a></li>
							</c:if>
					</div>
					
					<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
						<a href="javascript:;" class="nav-link text-body p-0"
						id="iconNavbarSidenav">
							<div class="sidenav-toggler-inner">
							
								<i class="sidenav-toggler-line"></i> <i
									class="sidenav-toggler-line"></i> <i
									class="sidenav-toggler-line"></i>
							</div>
					</a>
					</li>
				
		</nav>
		<!-- End Navbar -->
	<form action="Mycheck.do" method="post">
		<div class="container-fluid py-4">
			<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
				<div class="card select-file1">
					<div class="card-header p-3 pt-2">
						<div
							class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
							<i class="material-icons opacity-10">weekend</i>
						</div>
						<div class="pt-1 cpadding1">
							<h4 class="mb-0">분류 선택하기</h4>
						</div>
						<br>
						<!-- 성별별 버튼 선택 -->
						<!-- <div class="csvType"> -->
						<button id="genderShowType" type="button" class="btn btn-primary btn-type">성별별</button>
						<!-- </div> -->
						<br>
						<!-- 연령대별 버튼 선택 -->
						<!-- <div class="csvType"> -->
							<button id="ageShowType" type="button" class="btn btn-primary btn-type">연령대별</button>
						<!-- </div> -->
						
						<!-- 학력별 버튼 선택 -->
						<!-- <div class="csvType"> -->
							<button id="gradeShowType" type="button" class="btn btn-primary btn-type">학력별</button>
						<!-- </div> -->
						
						<!-- 가구소득별 버튼 선택 -->
						<!-- <div class="csvType"> -->
							<button id="familyPayShowType" type="button" class="btn btn-primary btn-type">가구소득별</button>
						<!-- </div> -->
						
						<!-- 가구원수별 버튼 선택 -->
						<!-- <div class="csvType"> -->
							<button id="familyCntShowType" type="button" class="btn btn-primary btn-type">가구원수별</button>
						<!-- </div> -->
						
							<div id = "scope">
							
							
							</div>
								
						<!-- 모달창 -->
						<div id="modalId" class="modalDiv">
		  					<!-- 모달창 콘텐츠 -->
		  					<div class="modal-content-div">
		  					  <!-- 차트를 표시할 iframe -->
		    				 <iframe id="modalIframe"></iframe>
		    				 <span class="closeSpan" onclick="closeModal()">&times;</span>
		  					</div>
						</div>
						<%-- <button type="button" class="btn btn-outline-warning genderClass" id="genderBtn<%=fileId%>" style="display: none">
						<%=value%></button> --%>
						
  </div>
 </div>
 </div>
</div>
</form>

	
	</main>
		<div class="card shadow-lg">
			<div class="card-header pb-0 pt-3">
				<div class="float-start">
					<h5 class="mt-3 mb-0">Material UI Configurator</h5>
					<p>See our dashboard options.</p>
				</div>
				<div class="float-end mt-4">
					<button
						class="btn btn-link text-dark p-0 fixed-plugin-close-button">
						<i class="material-icons">clear</i>
					</button>
				</div>
				<!-- End Toggle Button -->
			</div>
			<hr class="horizontal dark my-1">
			<div class="card-body pt-sm-3 pt-0">
				<!-- Sidebar Backgrounds -->
				<div>
					<h6 class="mb-0">Sidebar Colors</h6>
				</div>
				<a href="javascript:void(0)" class="switch-trigger background-color">
					<div class="badge-colors my-2 text-start">
						<span class="badge filter bg-gradient-primary active"
							data-color="primary" onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-dark" data-color="dark"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-info" data-color="info"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-success" data-color="success"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-warning" data-color="warning"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-danger" data-color="danger"
							onclick="sidebarColor(this)"></span>
					</div>
				</a>

				<!-- Sidenav Type -->

				<div class="mt-3">
					<h6 class="mb-0">Sidenav Type</h6>
					<p class="text-sm">Choose between 2 different sidenav types.</p>
				</div>

				<div class="d-flex">
					<button class="btn bg-gradient-dark px-3 mb-2 active"
						data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
					<button class="btn bg-gradient-dark px-3 mb-2 ms-2"
						data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
					<button class="btn bg-gradient-dark px-3 mb-2 ms-2"
						data-class="bg-white" onclick="sidebarType(this)">White</button>
				</div>

				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>


				<!-- Navbar Fixed -->

				<div class="mt-3 d-flex">
					<h6 class="mb-0">Navbar Fixed</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarFixed" onclick="navbarFixed(this)">
					</div>
				</div>



				<hr class="horizontal dark my-3">
				<div class="mt-2 d-flex">
					<h6 class="mb-0">Light / Dark</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="dark-version" onclick="darkMode(this)">
					</div>
				</div>
				<hr class="horizontal dark my-sm-4">


				<a class="btn bg-gradient-info w-100"
					href="https://www.creative-tim.com/product/material-dashboard-pro">Free
					Download</a> <a class="btn btn-outline-dark w-100"
					href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard">View
					documentation</a>

				<div class="w-100 text-center">
					<a class="github-button"
						href="https://github.com/creativetimofficial/material-dashboard"
						data-icon="octicon-star" data-size="large" data-show-count="true"
						aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
					<h6 class="mt-3">Thank you for sharing!</h6>

					<a
						href="https://twitter.com/intent/tweet?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
					</a> <a
						href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/material-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
					</a>

				</div>
			</div>
		</div>
	

	<!--   Core JS Files   -->
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="assets/js/plugins/chartjs.min.js"></script>
	<script>
		// CSV파일 차트 메인페이지에 띄우는 로직 주석처리
		/* 
		var data = {
		   labels : [ "서울", "부산", "대구", "인천", "광주", "대전", "울산", "세종", "경기",
		         "강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주" ],
		   datasets : [
		         {
		            label : "100만원 미만",
		            data : [ 8, 11, 5, 4, 4, 2, 3, 1, 16, 14, 5, 9, 10, 10,
		                  14, 10, 18 ],
		            backgroundColor : "rgba(75, 192, 192, 0.2)", // 막대 그래프의 채우기 색상
		            borderColor : "rgba(75, 192, 192, 1)", // 막대 그래프의 테두리 색상
		            borderWidth : 1,

		         // 막대 그래프의 테두리 두께
		         },
		         {
		            label : "100~200만원 미만",
		            data : [ 13, 11, 6, 6, 2, 3, 4, 1, 21, 21, 12, 12, 11,
		                  23, 18, 18, 19 ],
		            backgroundColor : "rgba(255, 99, 132, 0.2)",
		            borderColor : "rgba(255, 99, 132, 1)",
		            borderWidth : 1
		         },
		         {
		            label : "200~300만원 미만",
		            data : [ 13, 22, 9, 10, 3, 10, 9, 4, 53, 45, 18, 39,
		                  30, 36, 36, 42, 69 ],
		            backgroundColor : "rgba(255, 205, 86, 0.2)",
		            borderColor : "rgba(255, 205, 86, 1)",
		            borderWidth : 1
		         },
		         {
		            label : "300~400만원 미만",
		            data : [ 23, 28, 11, 14, 5, 8, 6, 1, 54, 65, 19, 43,
		                  30, 44, 49, 48, 94 ],
		            backgroundColor : "rgba(54, 162, 235, 0.2)",
		            borderColor : "rgba(54, 162, 235, 1)",
		            borderWidth : 1
		         },
		         {
		            label : "400~500만원 미만",
		            data : [ 27, 27, 9, 10, 3, 7, 8, 3, 62, 60, 20, 38, 32,
		                  57, 46, 51, 106 ],
		            backgroundColor : "rgba(153, 102, 255, 0.2)",
		            borderColor : "rgba(153, 102, 255, 1)",
		            borderWidth : 1
		         },
		         {
		            label : "500~600만원 미만",
		            data : [ 23, 34, 7, 17, 4, 10, 5, 2, 80, 100, 22, 44,
		                  33, 54, 43, 52, 133 ],
		            backgroundColor : "rgba(255, 159, 64, 0.2)",
		            borderColor : "rgba(255, 159, 64, 1)",
		            borderWidth : 1
		         },
		         {
		            label : "600만원 이상",
		            data : [ 32, 51, 7, 25, 4, 11, 8, 3, 113, 134, 24, 45,
		                  26, 43, 61, 47, 235 ],
		            backgroundColor : "rgba(255, 0, 0, 0.5)",
		            borderColor : "rgba(255, 0, 0, 1)",
		            borderWidth : 1
		         } ]
		};

		// 그래프 생성
		var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
		   type : 'bar',
		   data : data,
		   options : {
		      plugins : {
		         title : {
		            display : true,
		            text : "1인_평균_여행지별_국내여행_지출액_만15세이상_전국민(가구소득)"
		         },
		      },
		      scales : {
		         y : {
		            beginAtZero : true
		         }
		      }
		   }
		});
		 */
</script>
		

	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="assets/js/material-dashboard.min.js?v=3.0.5"></script>

	<!-- bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>

	<!-- 배지훈 파일버튼 클릭 시 설명글,위치선택 버튼 나오는 자바스크립트 -->
	<script type="text/javascript">
	
	var openModal = function(filePath){
		console.log('들어옴?');
		filePath = filePath.replace('csv', 'jsp');
		filePath = filePath.replace('분류', '별');
		
		$("#modalIframe").attr("src", "test/"+filePath);
        $('#modalId').show();
	}
	
	
	
	// 1. btn-type을 클릭했을 때
	$('.btn-type').on('click',function(){
		// 2. ajax로 fileName 요청(클릭한 버튼의 이름 보내주기)
		var sendData = {
			data : $(this)[0].innerText
			}
		$.ajax({
			url : 'SelectButton.do',
			data : sendData,
			dataType : 'json',
			success : function(result){
				// 3. 성공했을 때 버튼들을 하나씩 추가해주기
				console.log(result);
				$('#scope').empty();
				for(var i =0;i<result.length;i++){
					$('#scope').append('<input type="button" onclick=openModal("'+result[i].file_name+'") name="fileName" value='+result[i].file_name+
							' class="btn btn-outline-secondary gradeClass" id="gradeBtn'+result[i].file_id+'">');
				}
			},
			error : function(){
				console.log('실패..');
			}
			
		})
		
	
	})
	

/* 	$(document).ready(function(){
	    // 소득구간별 버튼에 대한 이벤트 핸들러 작성
	    $(".incomeClass").click(function(){
	        var buttonId = $(this).attr("id");
	        var filePath;
	        if(buttonId === "incomeBtn1"){
	            filePath = "가구소득별/여행지별_국내여행_횟수(가구소득).jsp";
	        } else if(buttonId === "incomeBtn2") {
	            filePath = "가구소득별/여행지별_국내여행_지출액(가구소득).jsp";
	        } else if(buttonId === "incomeBtn3") {
	            filePath = "가구소득별/여행지별_관광여행_재방문_의향(가구소득).jsp";
	        } else {
	            // ...
	        }
	        $("#incomeIframe").attr("src", filePath);
	        $('#incomeModal').show();
	    });
	});
 */
</script>

<script type="text/javascript">
// 모달창 닫기 함수
function closeModal(){
		/* document.getElementByClassName("modalDiv")[0].style.display="none"; */
		document.getElementById("modalId").style.display="none";
	};
</script>




<!-- <script type="text/javascript">
	$(document).ready(function(){
		
		// 성별별 버튼에 대한 이벤트 핸들러 작성
		$(".familyPayClass").click(function(){
			var buttonId = $(this).attr("id");
			
			if(buttionId === "familyPayBtn25"){
				window.open('가구소득별/여행지별_국내여행_횟수(가구소득).jsp', '팝업 창 제목', 'width=1600, height=900');
			}
			else if(buttionId === "familyPayBtn1"){
				
				
			}
		})
	});
</script> -->



<!-- 차트 팝업 -->
<!-- <script type="text/javascript">
	function openPopup() {
		window.open('가구소득별/여행지별_국내여행_횟수(가구소득).jsp', '팝업 창 제목', 'width=1600, height=900');
	}
</script> -->

</body>
</html>