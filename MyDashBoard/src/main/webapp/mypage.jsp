<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Selfmade Orange Dashboard_mypage
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.5" rel="stylesheet" />
  <!-- Nepcha Analytics (nepcha.com) -->
  <!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR.-->
  <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>


  <style>

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
/* 얘 이름 아직  */
@font-face {
  font-family: 'GangwonEduHyeonokT_OTFMediumA';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduHyeonokT_OTFMediumA.woff') format('woff');
  font-weight: normal;
  font-style: normal;
}


/* 마이페이지 글씨 */
.my_page {
  font-family: 'GangwonEduPowerExtraBoldA';
  font-size:xx-large;
  margin-right: 0.25rem !important;
  color: #FF8839;
}

/* 맨위 대시보드 영어 글씨 */
.Dashboard {
  font-family: 'GangwonEduPowerExtraBoldA';
  font-size: 4ch;
  font-style: italic;
  color: #FF8839;
  position: absolute;
}


/* 왼쪽아이콘 */
.material-icons{
  color: orange;
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

/* 왼쪽 항목 글씨들 */
.navbar-nav {
  font-family: 'GangwonEdu_OTFBoldA';
  font-size: larger !important;
}

/* 왼쪽 항목 글씨들 */
.ms-1 {
  font-size: large;
  margin-left: 0.25rem !important;
}

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



.collection1 {
  font-size: x-large !important;
}

/* 챠트 1번 */
.bg-gradient-primary1 {
  background-image: linear-gradient(195deg, #FB7D00 0%, #FB7D00 100%) ;
}

/* 챠트3번 */
.bg-gradient-dark {
  background-image: linear-gradient(195deg, #FF8930 0%, #FF8930 100%);
}

/* 왼쪽 검정색 */
.bg-gradient-dark1 {
  background-image: linear-gradient(195deg, #42424a 0%, #42424a 100%);
  /* height: 95%; */
}



/* 왼쪽 글씨 마우스로 올리면 */
.nav-item:hover {
  background-image: linear-gradient(195deg, #FFDBB7 0%, #FFDBB7 100%);
}

/* 맨위 오른쪽 사람 이모티콘 */
.me-sm-1 {
  color: #EC6602;
  margin-right: 0.25rem !important;
}

/* 맨위 오른쪽 사람 이모티콘 옆 sing in */
.d-none {
  color: #EC6602;
}

/* 차트 맨위 상단 */
.mb-01 {
  margin-bottom: 0 !important;
  font-family:'GangwonEduPowerExtraBoldA';
  font-size: x-large;
}

.container-fluid{
  --bs-gutter-x: 1.5rem;
  --bs-gutter-y: 0;
  width: 100%;
  padding-right: calc(var(--bs-gutter-x) * .5);
  padding-left: calc(var(--bs-gutter-x) * .5);
  margin-right: auto;
  margin-left: auto;
}

/* 챠트 2번째 글 */
/* .text-sm {
  line-height: 1.5;
} */

/* 챠트 2번째 글 */
.text-sm1 {
  font-family: 'GangwonEdu_OTFBoldA';
  font-size: xx-large;
  line-height: 1.5;
}

/* 차트 태그 */
.mb-02 {
  margin-bottom: 0 !important;
}

/* 차트 태그 */
.text-sm2 {
  font-family: 'GangwonEduHyeonokT_OTFMediumA';
  font-size: xx-large;
  line-height: 1.5;
}

/* **님 환영합니다! */
.navbar-main {
  font-family: 'GangwonEduPowerExtraBoldA';
  color: #EC6602;
  font-size: x-large;
  transition: box-shadow 0.25s ease-in, background-color 0.25s ease-in;
}

/* **님 환영합니다! */
.pe-md-3 {
  font-weight: bold;
  color: #EC6602 ;
  padding-right: 1rem !important;
  position: static;
}

/* signin */
.signin {
  font-family: 'GangwonEduPowerExtraBoldA';
  font-size: x-large;
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

/* 사진. 마이페이지 중간 흰색 줄 */
.blank {
  background-color: white;
  height: 3%;
}

/* 챠트1번쨰 배경(?) */
.bg-gradient-primary {
  background-image: linear-gradient(195deg, #FDD995 0%, #FDD995 100%);
}

/* 챠트2번째 */
.bg-gradient-success {
  background-image: linear-gradient(195deg, #FFAC84 0%, #FFAC84 100%);
}

/* 챠트3번 */
.bg-gradient-dark {
  background-image: linear-gradient(195deg, #FF8930 0%, #FF8930 100%);
}

.mx-4 {
  margin-right: 2rem !important;
  margin-left: 1rem !important;
}
  

.px-0 {
  padding-right: 1.0rem !important;
  padding-left: 1.0rem !important;
}  


.material-icons2 {
  font-family: 'Material Icons Round';
  color: orange;
  font-weight: normal;
  font-style: normal;
  
  font-size: xx-large !important;
  
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


  </style>

</head>

<body class="g-sidenav-show  ">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 bg-gradient-dark1" id="sidenav-main">
    <div class="logolarge">
      <img src="assets/img/로고확대.PNG" alt="main_logo" width="250" height="100">
    </div>
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <div class="blank"></div>
      <a class="navbar-brand m-01" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard " target="_blank">
        <!-- <img class="logo" src="../../material-dashboard-master/assets/img/로고.png" alt="main_logo" > -->
        <span class="my_page font-weight-bold  " id="my_page">마이페이지<span>
          <!-- 원래 class 명 : ms-1 font-weight-bold text-white -->
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <!-- <div class="input-group input-group-outline">
        <label class="form-label">Type here...</label>
        <input type="text"  class="form-control">
      </div> -->
      <ul class="navbar-nav" >
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary1sidenav-collapse-main" href="pages/dashboard.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <span class="material-icons opacity-10">dashboard</span>
            </div>
            <span class="nav-link-text ms-1">관광여행숙박시설</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="pages/tables.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <!-- <i class="material-icons opacity-10">table_view</i> -->
            </div>  
            <span class="nav-link-text ms-1">선택했던 차트1</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="pages/billing.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <!-- <i class="material-icons opacity-10">receipt_long</i> -->
            </div>
            <span class="nav-link-text ms-1">선택했던 차트2</span>
          </a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-white " href="pages/notifications.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">notifications</i>
            </div>
            <span class="nav-link-text ms-1">관광 당일여행</span>
          </a>
        </li>

        <li class="nav-item">
            <a class="nav-link text-white " href="pages/billing.html">
              <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="material-icons opacity-10">receipt_long</i>
              </div>
              <span class="nav-link-text ms-1">관광 숙박여행</span>
            </a>
          </li>
        
        <li class="nav-item">
          <a class="nav-link text-white " href="pages/profile.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">person</i>
            </div>
            <span class="nav-link-text ms-1">My page</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="pages/sign-in.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">login</i>
            </div>
            <span class="nav-link-text ms-1">Sign In</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="pages/sign-up.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">assignment</i>
            </div>
            <span class="nav-link-text ms-1">Sign Up</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="sidenav-footer position-absolute w-100 bottom-0 ">
      <!-- <div class="logo">
      <img src="../../material-dashboard-master/assets/img/로고.png" alt="main_logo" width="250" height="350">
    </div> -->
    <div class="bg-gradient-dark1 shadow-dark border-radius-lg py-3 pe-1">
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="sign-in navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
       <!-- <span class="container-fluid py-1 px-3"></span>  -->
        <nav aria-label="breadcrumb">
          <!-- <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Dashboard</li>
          </ol> -->
          <span class="Dashboard">Dashboard</span>
        </nav>
        <span class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar"></span>
          <span class="ms-md-auto pe-md-3 d-flex align-items-center"></span> 
            
            **님 환영합니다!


        </div>
          <ul class="signin navbar-nav1 justify-content-end">
            
            <li class="nav-item d-flex align-items-center">
              <a href="pages/sign-in.html" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none">Sign In</span>
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            
            
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
    
      <div class="row mt-4">
        <div class="col-lg-4 col-md-6 mt-4 mb-4">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-01 ">Website Views</h6>
              <p class="text-sm1 ">Last Campaign Performance</p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons2 text-sm my-auto me-1">schedule</i>
                <p class="mb-02 text-sm2"> campaign sent 2 days ago </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 mt-4 mb-4">
          <div class="card z-index-2  ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-01 "> Daily Sales </h6>
              <p class="text-sm1 "> (<span class="font-weight-bolder">+15%</span>) increase in today sales. </p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons2 text-sm my-auto me-1">schedule</i>
                <p class="mb-02 text-sm2"> updated 4 min ago </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mt-4 mb-3">
          <div class="card z-index-2 ">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
              <div class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1">
                <div class="chart">
                  <canvas id="chart-line-tasks" class="chart-canvas" height="170"></canvas>
                </div>
              </div>
            </div>
            <div class="card-body">
              <h6 class="mb-01 ">Completed Tasks</h6>
              <p class="text-sm1 ">Last Campaign Performance</p>
              <hr class="dark horizontal">
              <div class="d-flex ">
                <i class="material-icons2 text-sm my-auto me-1">schedule</i>
                <p class="mb-02 text-sm2">just updated</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row mb-4">
          <div class="col-lg-4 col-md-6 mt-4 mb-4">
            <div class="card z-index-2 ">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                  <div class="chart">
                    <canvas id="chart-bars" class="chart-canvas"height="170"></canvas>
                  </div>
                </div>
              </div>
              <div class="card-body"> 
                <h6 class="mb-01 ">Website Views</h6>
                <p class="text-sm1 ">Last Campaign Performance</p>
                <hr class="dark horizontal">
                <div class="d-flex ">
                  <i class="material-icons2 text-sm my-auto me-1">schedule</i>
                  <p class="mb-02 text-sm2"> campaign sent 2 days ago </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 mt-4 mb-4">
            <div class="card z-index-2  ">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                <div class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
                  <div class="chart">
                    <canvas id="chart-line" class="chart-canvas" height="170"></canvas>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <h6 class="mb-01 "> Daily Sales </h6>
                <p class="text-sm1 "> (<span class="font-weight-bolder">+15%</span>) increase in today sales. </p>
                <hr class="dark horizontal">
                <div class="d-flex ">
                  <i class="material-icons2 text-sm my-auto me-1">schedule</i>
                  <p class="mb-02 text-sm2"> updated 4 min ago </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 mt-4 mb-3">
            <div class="card z-index-2 ">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                <div class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1">
                  <div class="chart">
                    <canvas id="chart-line-tasks" class="chart-canvas" height="170"></canvas>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <h6 class="mb-01 ">Completed Tasks</h6>
                <p class="text-sm1 ">Last Campaign Performance</p>
                <hr class="dark horizontal">
                <div class="d-flex ">
                  <i class="material-icons2 text-sm my-auto me-1">schedule</i>
                  <p class="mb-02 text-sm2">just updated</p>
                </div>
              </div>
            </div>
          </div>  




          
        
        <div class="col-lg-4 col-md-6">
          




        </div>
      </div>
      <footer class="footer py-4  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            여기에 공간이 있어요!
            
          </div>
        </div>
      </footer>
    </div>
  </main>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="material-icons1 py-2">settings</i>
    </a>
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Material UI Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
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
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark1" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-dark px-3 mb-2 active" data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="mt-3 d-flex">
          <h6 class="mb-0">Navbar Fixed</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
          </div>
        </div>
        <hr class="horizontal dark my-3">
        <div class="mt-2 d-flex">
          <h6 class="mb-0">Light / Dark</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
        <hr class="horizontal dark my-sm-4">
        <a class="btn bg-gradient-info w-100" href="https://www.creative-tim.com/product/material-dashboard-pro">Free Download</a>
        <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard">View documentation</a>
        <div class="w-100 text-center">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="https://twitter.com/intent/tweet?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/material-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div>
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
    var ctx = document.getElementById("chart-bars").getContext("2d");

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["M", "T", "W", "T", "F", "S", "S"],
        datasets: [{
          label: "Sales",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          backgroundColor: "orange",
          data: [50, 20, 10, 22, 50, 10, 40],
          maxBarThickness: 6
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'white'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });


    var ctx2 = document.getElementById("chart-line").getContext("2d");

    new Chart(ctx2, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Mobile apps",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [50, 40, 300, 320, 500, 350, 200, 230, 500],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

    new Chart(ctx3, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Mobile apps",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#f8f9fa',
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });
  </script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.min.js?v=3.0.5"></script>
</body>

</html>