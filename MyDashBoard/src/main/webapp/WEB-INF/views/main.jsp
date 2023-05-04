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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>
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
   background-color: rgba(0, 0, 0, 0.4); /* 배경색과 투명도 설정 */
}

/* 모달창 콘텐츠 스타일 */
.modal-content-div {
   background-color: #fefefe;
   margin: 2% auto; /* 모달창이 화면 중앙에 위치하도록 설정 */
   margin-left: 15%;
   padding: 10px;
   border: 1px solid #888;
   width: 1600px;
   height: 900px;
   position: fixed;
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

.closeSpan:hover, .closeSpan:focus {
   color: black;
   text-decoration: none;
   cursor: pointer;
}

/* 두꺼운 폰트 */
@font-face {
   font-family: 'GangwonEduPowerExtraBoldA';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduPowerExtraBoldA.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}
/* 관광여행숙박시설... 이런애들 폰트 */
@font-face {
   font-family: 'GangwonEdu_OTFBoldA';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}
/* 챠트 진한거  */
@font-face {
   font-family: 'GangwonEduHyeonokT_OTFMediumA';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduHyeonokT_OTFMediumA.woff')
      format('woff');
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
.material-icons {
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

.nav-link {
   font-color: #EC6602;
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
   color: #EC6602;
   transition: box-shadow 0.25s ease-in, background-color 0.25s ease-in;
}

/* **님 환영합니다! */
.pe-md-3 {
   font-weight: bold;
   color: #EC6602;
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
.navbar-nav1 { -
   -bs-nav-link-padding-x: 0; -
   -bs-nav-link-padding-y: 0.5rem; -
   -bs-nav-link-font-weight:; -
   -bs-nav-link-color: var(- -bs-navbar-color); -
   -bs-nav-link-hover-color: var(- -bs-navbar-hover-color); -
   -bs-nav-link-disabled-color: var(- -bs-navbar-disabled-color);
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

.person {
   color: #3C3C3C;
}

.log-out {
   color: #3C3C3C;
}
/* 마우스 포인터 */
html {
   cursor: url(assets/img/cursor.png), auto
}

/* 메인페이지 차트 선택창 */
.box {
   flex: 1; /* 각 박스들이 동일한 높이로 나열되게 하기 위해 flex 속성 사용 */
   margin: 10px;
   background-color: white;
   box-sizing: border-box;
   padding: 10px;
   position: relative;
   width: 1550px;
   height: 250px;
}

/*메인 3개창 전체*/
.container {
   display: flex;
   flex-direction: column;
   /* 박스들을 세로로 한 줄씩 나열하기 위해 flex-direction 속성 사용 */
   height: auto; /* flex 컨테이너의 높이 설정 */
   max-width: 1600px;
}

/*대시보드 설명*/
#typing-text {
   white-space: pre-wrap; /* pre-wrap으로 변경 */
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
}

/*대시보드 설명창 그림*/
.mainimg {
   opacity: 0.1;
   top: 0;
   left: 0;
   width: 100%;
   height: 250px;
   object-fit: cover;
}

/*대시보드 사용법 설명 그림*/
.mainimg2 {
   opacity: 1;
   top: 0;
   left: 0;
   width: auto;
   height: auto;
   object-fit: cover;
}

/*좌측 메뉴바*/
#sidenav-main {
   height: 990px
}

/*CSS : 시계를 꾸미는 부분*/
.Clock {
   width: 235px;
   text-align: center;
   color: #f4f4f4;
   background-color: linear-gradient(195deg, #42424a 0%, #191919 100%);
   padding-top: 5px;
}

#Clock {
   color: #F0C420;
   font-size: 24px;
}

#Clockday {
   color: #F0C420;
}

/* 달력 */
.sec_cal {
   width: 160px;
   margin: 0 auto;
   font-family: "NotoSansR";
}

.sec_cal .cal_nav {
   display: flex;
   justify-content: center;
   align-items: center;
   font-weight: 700;
   font-size: 30px;
   line-height: 70px;
}

.sec_cal .cal_nav .year-month {
   width: 300px;
   text-align: center;
   line-height: 1;
}

.sec_cal .cal_nav .nav {
   display: flex;
   border: 1px solid #333333;
   border-radius: 5px;
}

.sec_cal .cal_nav .go-prev, .sec_cal .cal_nav .go-next {
   display: block;
   width: 50px;
   height: 78px;
   font-size: 0;
   display: flex;
   justify-content: center;
   align-items: center;
}

.sec_cal .cal_nav .go-prev::before, .sec_cal .cal_nav .go-next::before {
   content: "";
   display: block;
   width: 20px;
   height: 20px;
   border: 3px solid #ffffff;
   border-width: 3px 3px 0 0;
   transition: border 0.1s;
}

.sec_cal .cal_nav .go-prev:hover::before, .sec_cal .cal_nav .go-next:hover::before
   {
   border-color: #ed2a61;
}

.sec_cal .cal_nav .go-prev::before {
   transform: rotate(-135deg);
}

.sec_cal .cal_nav .go-next::before {
   transform: rotate(45deg);
}

.sec_cal .cal_wrap {
   padding-top: 40px;
   position: relative;
   margin: 0 auto;
}

.sec_cal .cal_wrap .days {
   display: flex;
   margin-bottom: 20px;
   padding-bottom: 20px;
   border-bottom: 1px solid #ddd;
}

.sec_cal .cal_wrap::after {
   top: 368px;
}

.sec_cal .cal_wrap .day {
   display: flex;
   align-items: center;
   justify-content: center;
   width: calc(100%/ 7);
   text-align: left;
   color: #999;
   font-size: 12px;
   text-align: center;
   border-radius: 5px
}

.current.today {
   background: rgb(242, 242, 242);
}

.sec_cal .cal_wrap .dates {
   display: flex;
   flex-flow: wrap;
   height: 290px;
}

.sec_cal .cal_wrap .day:nth-child(7n -1) {
   color: #3c6ffa;
}

.sec_cal .cal_wrap .day:nth-child(7n) {
   color: #ed2a61;
}

.sec_cal .cal_wrap .day.disable {
   color: #ddd;
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
         <div class="main-blank"></div>



         <a class="navbar-brand m-01"> <span
            class="main_page font-weight-bold " id="main_page">메인페이지<span></a>
      </div>
      <hr class="horizontal light mt-0 mb-2">
      <div class="collapse navbar-collapse  w-auto "
         id="sidenav-collapse-main">
         <ul class="navbar-nav">
            <li class="nav-item"><a
               class="nav-link text-white active bg-gradient-primary1sidenav-collapse-main"
               href="GoMain.do">
                  <div
                     class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                     <span class="material-icons opacity-10">dashboard</span>
                  </div> <span class="nav-link-text ms-1">Dashboard</span>
            </a></li>
            <li class="nav-item"><a class="nav-link text-white"
               href="Mychart.do">
                  <div
                     class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                     <i class="material-icons opacity-10">person</i>
                  </div> <span class="nav-link-text ms-1">마이페이지</span>
            </a></li>

         </ul>
         <div class="Clock">
            <div id="Clock">00:00</div>
            <div id="Clockday">00/00/00</div>
         </div>
         <div class="sec_cal">
            <div class="cal_nav">
               <a href="javascript:;" class="nav-btn go-prev">prev</a>
               <div class="year-month" style="color: white;"></div>
               <a href="javascript:;" class="nav-btn go-next">next</a>
            </div>
            <div class="cal_wrap">
               <div class="days">
                  <div class="day">월</div>
                  <div class="day">화</div>
                  <div class="day">수</div>
                  <div class="day">목</div>
                  <div class="day">금</div>
                  <div class="day">토</div>
                  <div class="day">일</div>
               </div>
               <div class="dates"></div>
            </div>
         </div>
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
            <span class="pheader">Main</span> <span
               class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
               id="navbar"></span> <span
               class="ms-md-auto pe-md-3 d-flex align-items-center"></span>
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
                  <span>${User.nickname}님 환영합니다!</span>
                  <li class="nav-item d-flex align-items-center"><a
                     href="GoLogout.do"
                     class="nav-link text-body font-weight-bold px-0"> <i
                        class="person fa fa-user me-sm-1"></i> <span
                        class="log-out d-sm-inline d-none">Log Out</span>
                  </a></li>
               </c:if>
         </div>

         <li class="nav-item d-xl-none ps-3 d-flex align-items-center"><a
            href="javascript:;" class="nav-link text-body p-0"
            id="iconNavbarSidenav">
               <div class="sidenav-toggler-inner">

                  <i class="sidenav-toggler-line"></i> <i
                     class="sidenav-toggler-line"></i> <i class="sidenav-toggler-line"></i>
               </div>
         </a></li>

      </nav>
      <!-- End Navbar -->
      <div class="container">
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
                        <button id="genderShowType" type="button"
                           class="btn btn-primary btn-type">성별별</button>
                        <!-- </div> -->
                        <!-- 연령대별 버튼 선택 -->
                        <!-- <div class="csvType"> -->
                        <button id="ageShowType" type="button"
                           class="btn btn-primary btn-type">연령대별</button>
                        <!-- </div> -->

                        <!-- 직업별 버튼 선택 -->
                        <!-- <div class="csvType"> -->
                        <button id="jobShowType" type="button"
                           class="btn btn-primary btn-type">직업별</button>


                        <!-- 학력별 버튼 선택 -->
                        <!-- <div class="csvType"> -->
                        <button id="gradeShowType" type="button"
                           class="btn btn-primary btn-type">학력별</button>
                        <!-- </div> -->

                        <!-- 가구소득별 버튼 선택 -->
                        <!-- <div class="csvType"> -->
                        <button id="familyPayShowType" type="button"
                           class="btn btn-primary btn-type">가구소득별</button>
                        <!-- </div> -->

                        <!-- 가구원수별 버튼 선택 -->
                        <!-- <div class="csvType"> -->
                        <button id="familyCntShowType" type="button"
                           class="btn btn-primary btn-type">가구원수별</button>
                        <!-- </div> -->

                        <div id="scope"></div>

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
         <div class="box">
            <img class="mainimg" src="assets/img/메인.jpg" alt="대시보드 그림">
            <h4 id="typing-text"
               style="font-size: 30px; text-align: center; line-height: 70px; display: inline-block; width: 80%;"></h4>
         </div>

         <div class="box">
            <img src='assets/img/DashBoard 확인.gif' alt='설명.gif'>
         </div>
      </div>
   </main>


   <!--   Core JS Files   -->
   <script src="assets/js/core/popper.min.js"></script>
   <script src="assets/js/core/bootstrap.min.js"></script>
   <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
   <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
   <script src="assets/js/plugins/chartjs.min.js"></script>
   
   <script>
        $(document).ready(function () {
            calendarInit();
        });

        function calendarInit() {
            /*
                달력 렌더링 할 때 필요한 정보 목록 
            
                현재 월(초기값 : 현재 시간)
                금월 마지막일 날짜와 요일
                전월 마지막일 날짜와 요일
            */

            // 날짜 정보 가져오기
            var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
            var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct 표준시 도출
            var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
            var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)

            var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
            // 달력에서 표기하는 날짜 객체


            var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
            var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
            var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

            // kst 기준 현재시간
            // console.log(thisMonth);

            // 캘린더 렌더링
            renderCalender(thisMonth);

            function renderCalender(thisMonth) {

                // 렌더링을 위한 데이터 정리
                currentYear = thisMonth.getFullYear();
                currentMonth = thisMonth.getMonth();
                currentDate = thisMonth.getDate();

                // 이전 달의 마지막 날 날짜와 요일 구하기
                var startDay = new Date(currentYear, currentMonth, 0);
                var prevDate = startDay.getDate();
                var prevDay = startDay.getDay();

                // 이번 달의 마지막날 날짜와 요일 구하기
                var endDay = new Date(currentYear, currentMonth + 1, 0);
                var nextDate = endDay.getDate();
                var nextDay = endDay.getDay();

                // console.log(prevDate, prevDay, nextDate, nextDay);

                // 현재 월 표기
                $('.year-month').text(currentYear + '.' + (currentMonth + 1));

                // 렌더링 html 요소 생성
                calendar = document.querySelector('.dates')
                calendar.innerHTML = '';

                // 지난달
                for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
                    calendar.innerHTML = calendar.innerHTML + '<div class="day prev disable">' + i + '</div>'
                }
                // 이번달
                for (var i = 1; i <= nextDate; i++) {
                    calendar.innerHTML = calendar.innerHTML + '<div class="day current">' + i + '</div>'
                }
                // 다음달
                for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
                    calendar.innerHTML = calendar.innerHTML + '<div class="day next disable">' + i + '</div>'
                }

                // 오늘 날짜 표기
                if (today.getMonth() == currentMonth) {
                    todayDate = today.getDate();
                    var currentMonthDate = document.querySelectorAll('.dates .current');
                    currentMonthDate[todayDate - 1].classList.add('today');
                }
            }

            // 이전달로 이동
            $('.go-prev').on('click', function () {
                thisMonth = new Date(currentYear, currentMonth - 1, 1);
                renderCalender(thisMonth);
            });

            // 다음달로 이동
            $('.go-next').on('click', function () {
                thisMonth = new Date(currentYear, currentMonth + 1, 1);
                renderCalender(thisMonth);
            });
        }
    </script>
    
    <script>
        function Clock() {
            var date = new Date();
            var YYYY = String(date.getFullYear());
            var MM = String(date.getMonth() + 1);
            var DD = Zero(date.getDate());
            var hh = Zero(date.getHours());
            var mm = Zero(date.getMinutes());
            var ss = Zero(date.getSeconds());
            var Week = Weekday();

            Write(YYYY, MM, DD, hh, mm, ss, Week);
            //시계에 1의 자리 수가 나올때 0을 넣어주는 함수 (ex : 1초 -> 01초)

            function Zero(num) {
                return (num < 10 ? '0' + num : '' + num);
            }

            //요일을 추가해주는 함수
            function Weekday() {
                var Week = ['일', '월', '화', '수', '목', '금', '토'];
                var Weekday = date.getDay();
                return Week[Weekday];
            }


            //시계부분을 써주는 함수
            function Write(YYYY, MM, DD, hh, mm, ss, Week) {
                var Clockday = document.getElementById("Clockday");
                var Clock = document.getElementById("Clock");
                Clockday.innerText = YYYY + '/' + MM + '/' + DD + '(' + Week + ')';
                Clock.innerText = hh + ':' + mm + ':' + ss;
            }
        }

        setInterval(Clock, 1000); //1초(1000)마다 Clock함수를 재실행 한다
    </script>
    
    <script>
    const text =
        "안녕하세요. S에 방문하신 것을 환영합니다.​\n이 대시보드는 예비 관광사업자들을 위한 대시보드입니다.​ 여러분의 사업 번창을 기원합니다.​\n 대시보드 사용법은 아래 내용을 참조 바랍니다.";

      let i = 0;

      function typingEffect() {
        if (i < text.length) {
          const typingText = document.getElementById("typing-text");
          const char = text.charAt(i);

          if (char === "S") {
            // 스타일 적용
            typingText.innerHTML +=
              '<span style="font-size: 40px; color: #f39c12;">SelfMade Orange DashBoard</span>';
          } else {
            typingText.innerHTML += char;
          }

          i++;
          setTimeout(typingEffect, 40); // 타이핑 속도 조절 (40ms마다 한 글자씩)
        }
      }

      typingEffect();
      </script>
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
      var openModal = function(filePath) {
         console.log('들어옴?');
         filePath = filePath.replace('csv', 'jsp');
         filePath = filePath.replace('분류', '별');

         $("#modalIframe").attr("src", "test/" + filePath);
         $('#modalId').show();
      }

      // 1. btn-type을 클릭했을 때
      $('.btn-type')
            .on(
                  'click',
                  function() {
                     // 2. ajax로 fileName 요청(클릭한 버튼의 이름 보내주기)
                     var sendData = {
                        data : $(this)[0].innerText
                     }
                     $
                           .ajax({
                              url : 'SelectButton.do',
                              data : sendData,
                              dataType : 'json',
                              success : function(result) {
                                 console.log(result);
                                 $('#scope').empty();
                                 // 1. 차트명을 담을 변수 선언
                                 var chartNames = [];
                                 for (var i = 0; i < result.length; i++) {
                                    // 2. 버튼 추가
                                    $('#scope')
                                          .append(
                                                '<input type="button" onclick=openModal("'
                                                      + result[i].file_name
                                                      + '") name="fileName" value='
                                                      + result[i].file_name
                                                      + ' class="btn btn-outline-secondary gradeClass" id="gradeBtn'
                                                      + result[i].file_id
                                                      + '">');
                                    // 3. 차트명 추가
                                    chartNames
                                          .push(result[i].file_name);
                                 }
                                 // 4. 추가된 차트명들을 네비바에 추가
                                 $(
                                       '.collapse navbar-collapse w-auto ps')
                                       .empty();
                                 for (var i = 0; i < chartNames.length; i++) {
                                    $(
                                          '.collapse navbar-collapse w-auto ps')
                                          .append(
                                                '<li>'
                                                      + chartNames[i]
                                                      + '</li>');
                                 }
                              },

                           })

                  })

      /*    $(document).ready(function(){
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
      function closeModal() {
         /* document.getElementByClassName("modalDiv")[0].style.display="none"; */
         document.getElementById("modalId").style.display = "none";
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