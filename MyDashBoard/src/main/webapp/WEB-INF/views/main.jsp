<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selfmade Orange Dashboard_Main</title>
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

<style>
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
   height: 200px;
}

.cpadding1 {
   padding-left: 80px !important;
}

.bsize {
   width: 10%;
}

.main-blank {
   background-color: white;
   height: 0.5%;
}

.pheader {
   font-family: 'GangwonEduPowerExtraBoldA';
   font-size: 4ch;
   font-style: italic;
   color: #FF8839;
   position: absolute;
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
      <div class="main-blank"></div>

      <hr class="horizontal light mt-0 mb-2">
      <div class="collapse navbar-collapse  w-auto "
         id="sidenav-collapse-main">
         <ul class="navbar-nav">
            <li class="nav-item"><a
               class="nav-link text-white active bg-gradient-primary"
               href="../pages/dashboard.html">
                  <div
                     class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                     <i class="material-icons opacity-10">dashboard</i>
                  </div> <span class="nav-link-text ms-1">Dashboard</span>
            </a></li>

            <li class="nav-item"><a class="nav-link text-white "
               href="mypage.jsp">
                  <div
                     class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                     <i class="material-icons opacity-10">person</i>
                  </div> <span class="nav-link-text ms-1">My page</span>
            </a></li>
            <li class="nav-item"><a class="nav-link text-white "
               href="sign-in.jsp">
                  <div
                     class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                     <i class="material-icons opacity-10">login</i>
                  </div> <span class="nav-link-text ms-1">Sign In</span>
            </a></li>
            <li class="nav-item"><a class="nav-link text-white "
               href="sign-up.jsp">
                  <div
                     class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                     <i class="material-icons opacity-10">assignment</i>
                  </div> <span class="nav-link-text ms-1">Sign Up</span>
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
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
               id="navbar">

               <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                  <ul class="navbar-nav  justify-content-end">
                     <c:if test="${empty User}">
                        <li class="nav-item d-flex align-items-center"><a
                           href="sign-in.jsp"
                           class="nav-link text-body font-weight-bold px-0"> <i
                              class="fa fa-user me-sm-1"></i> <span
                              class="d-sm-inline d-none">Log In</span>
                        </a></li>
                     </c:if>
                     <c:if test="${!empty User}">
                        <h6>${User.id}님환영합니다!</h6>
                        <li class="nav-item d-flex align-items-center"><a
                           href="GoLogout.do"
                           class="nav-link text-body font-weight-bold px-0"> <i
                              class="fa fa-user me-sm-1"></i> <span
                              class="d-sm-inline d-none">Log Out</span>
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


               </ul>
            </div>
         </div>
      </nav>
      <!-- End Navbar -->
      <div class="container-fluid py-4">
         <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <div class="card select-file1">
               <div class="card-header p-3 pt-2">
                  <div
                     class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                     <i class="material-icons opacity-10">weekend</i>
                  </div>
                  <div class="pt-1 cpadding1">
                     <p class="text-sm mb-0 text-capitalize">알고싶은 데이터를 클릭~~~???여기를
                        지울지 말지? 저 아이콘은 대체 어떻게 바꾸지ㅜ ㅜ</p>
                     <h4 class="mb-0">파일 선택하기</h4>
                  </div>
               </div>
               <%
                  Connection conn = null;
                  Statement stmt = null;
                  ResultSet rs = null;
                  try {
                     // 데이터베이스 연결
                     Class.forName("oracle.jdbc.driver.OracleDriver");
                     conn = DriverManager.getConnection("jdbc:oracle:thin:@project-db-stu.smhrd.com:1524:XE", "cgi_2_230419_4",
                     "smhrd4");

                     // SQL 쿼리 실행
                     stmt = conn.createStatement();
                     rs = stmt.executeQuery("SELECT 원본파일이름 as fileName FROM csv파일정보");

                     // ResultSet에서 데이터를 가져와서 출력
                     while (rs.next()) {

                        String fileName = rs.getString("fileName");
                  %>
               <div class="card-footer p-3 csize1">
                  <p class="mb-0">
                     <button onclick="explain1()"
                        class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast"><%=fileName%></button>
                  </p>
               </div>
               <!-- <button><%=fileName%></button> -->
               <%
                  }
                  } catch (SQLException e) {
                  e.printStackTrace();
                  } catch (ClassNotFoundException e) {
                  e.printStackTrace();
                  } finally {
                  // ResultSet, Statement, Connection 객체 닫기
                  if (rs != null) {
                  try {
                     rs.close();
                  } catch (SQLException e) {
                  }
                  }
                  if (stmt != null) {
                  try {
                     stmt.close();
                  } catch (SQLException e) {
                  }
                  }
                  if (conn != null) {
                  try {
                     conn.close();
                  } catch (SQLException e) {
                  }
                  }
                  }
                  %>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <div class="card select-file2">
               <div class="card-header p-3 pt-2 csize2">
                  <div class="pt-1 cpadding2">
                     <p class="text-sm mb-0 text-capitalize">여기는 지울지말지</p>
                     <h4 class="mb-0">이런저런 파일입니다/글자가 깨지는듯? 글씨체........h4는 조금 큰듯</h4>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="row">
         <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
            <div class="card">
               <div class="card-header p-3 pt-2">
                  <div
                     class="icon icon-lg icon-shape bg-gradient-success shadow-success text-center border-radius-xl mt-n4 position-absolute">
                     <i class="material-icons opacity-10">person</i>
                  </div>
                  <div class="pt-1 cpadding1">
                     <p class="text-sm mb-0 text-capitalize">궁금한 지역 클릭클릭!!! 여기도
                        지울지 말지! 아이콘은.......</p>
                     <h4 class="mb-0">지역 선택하기</h4>
                  </div>
               </div>
               <div class="card-footer p-3 csize3">
                  <p class="mb-0">
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">광주</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">서울</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">암튼</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">여기는</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">지역</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">버튼을</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">넣을</button>
                     <button class="btn bg-gradient-warning w-100 mb-0 toast-btn"
                        type="button" data-target="warningToast">거예요</button>
                  </p>
               </div>
            </div>
         </div>
      </div>
      <div class="row mt-4">
         <div class="col-lg-4 col-md-6 mt-4 mb-4">
            <div class="card z-index-2 ">
               <div
                  class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent">
                  <div
                     class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                     <div class="chart">
                        <!-- <canvas id="chart-bars" class="chart-canvas" height="170"></canvas>-->
                        <canvas id="myChart" height="170"></canvas>
                     </div>
                  </div>
               </div>
               <div class="card-body">
                  <h6 class="mb-0 ">Website Views</h6>
                  <p class="text-sm ">Last Campaign Performance</p>
                  <hr class="dark horizontal">
                  <div class="d-flex ">
                     <i class="material-icons text-sm my-auto me-1">schedule</i>
                     <p class="mb-0 text-sm">campaign sent 2 days ago</p>
                  </div>
               </div>
            </div>
         </div>


         <footer class="footer py-4  ">
            <div class="container-fluid">
               <div class="row align-items-center justify-content-lg-between">
                  <span><button
                        class="btn bg-gradient-danger w-100 mb-0 toast-btn bsize"
                        type="button" data-target="dangerToast">지금은 좀</button>
                     <button class="btn bg-gradient-danger w-100 mb-0 toast-btn bsize"
                        type="button" data-target="dangerToast">화가나니까</button>
                     <button class="btn bg-gradient-danger w-100 mb-0 toast-btn bsize"
                        type="button" data-target="dangerToast">빨간색😃</button></span>
               </div>
            </div>
         </footer>
      </div>
   </main>
   <div class="fixed-plugin">
      <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
         <i class="material-icons py-2">settings</i>
      </a>
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
   </div>
   <!--   Core JS Files   -->
   <script src="assets/js/core/popper.min.js"></script>
   <script src="assets/js/core/bootstrap.min.js"></script>
   <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
   <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
   <script src="assets/js/plugins/chartjs.min.js"></script>
   <script>
      //데이터
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

      var ctx = document.getElementById("chart-bars").getContext("2d");

      new Chart(ctx, {
         type : "bar",
         data : {
            labels : [ "M", "T", "W", "T", "F", "S", "S" ],
            datasets : [ {
               label : "Sales",
               tension : 0.4,
               borderWidth : 0,
               borderRadius : 4,
               borderSkipped : false,
               backgroundColor : "rgba(255, 255, 255, .8)",
               data : [ 50, 20, 10, 22, 50, 10, 40 ],
               maxBarThickness : 6
            }, ],
         },
         options : {
            responsive : true,
            maintainAspectRatio : false,
            plugins : {
               legend : {
                  display : false,
               }
            },
            interaction : {
               intersect : false,
               mode : 'index',
            },
            scales : {
               y : {
                  grid : {
                     drawBorder : false,
                     display : true,
                     drawOnChartArea : true,
                     drawTicks : false,
                     borderDash : [ 5, 5 ],
                     color : 'rgba(255, 255, 255, .2)'
                  },
                  ticks : {
                     suggestedMin : 0,
                     suggestedMax : 500,
                     beginAtZero : true,
                     padding : 10,
                     font : {
                        size : 14,
                        weight : 300,
                        family : "Roboto",
                        style : 'normal',
                        lineHeight : 2
                     },
                     color : "#fff"
                  },
               },
               x : {
                  grid : {
                     drawBorder : false,
                     display : true,
                     drawOnChartArea : true,
                     drawTicks : false,
                     borderDash : [ 5, 5 ],
                     color : 'rgba(255, 255, 255, .2)'
                  },
                  ticks : {
                     display : true,
                     color : '#f8f9fa',
                     padding : 10,
                     font : {
                        size : 14,
                        weight : 300,
                        family : "Roboto",
                        style : 'normal',
                        lineHeight : 2
                     },
                  }
               },
            },
         },
      });

      var ctx2 = document.getElementById("chart-line").getContext("2d");

      new Chart(ctx2, {
         type : "line",
         data : {
            labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
                  "Nov", "Dec" ],
            datasets : [ {
               label : "Mobile apps",
               tension : 0,
               borderWidth : 0,
               pointRadius : 5,
               pointBackgroundColor : "rgba(255, 255, 255, .8)",
               pointBorderColor : "transparent",
               borderColor : "rgba(255, 255, 255, .8)",
               borderColor : "rgba(255, 255, 255, .8)",
               borderWidth : 4,
               backgroundColor : "transparent",
               fill : true,
               data : [ 50, 40, 300, 320, 500, 350, 200, 230, 500 ],
               maxBarThickness : 6

            } ],
         },
         options : {
            responsive : true,
            maintainAspectRatio : false,
            plugins : {
               legend : {
                  display : false,
               }
            },
            interaction : {
               intersect : false,
               mode : 'index',
            },
            scales : {
               y : {
                  grid : {
                     drawBorder : false,
                     display : true,
                     drawOnChartArea : true,
                     drawTicks : false,
                     borderDash : [ 5, 5 ],
                     color : 'rgba(255, 255, 255, .2)'
                  },
                  ticks : {
                     display : true,
                     color : '#f8f9fa',
                     padding : 10,
                     font : {
                        size : 14,
                        weight : 300,
                        family : "Roboto",
                        style : 'normal',
                        lineHeight : 2
                     },
                  }
               },
               x : {
                  grid : {
                     drawBorder : false,
                     display : false,
                     drawOnChartArea : false,
                     drawTicks : false,
                     borderDash : [ 5, 5 ]
                  },
                  ticks : {
                     display : true,
                     color : '#f8f9fa',
                     padding : 10,
                     font : {
                        size : 14,
                        weight : 300,
                        family : "Roboto",
                        style : 'normal',
                        lineHeight : 2
                     },
                  }
               },
            },
         },
      });

      var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

      new Chart(ctx3, {
         type : "line",
         data : {
            labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
                  "Nov", "Dec" ],
            datasets : [ {
               label : "Mobile apps",
               tension : 0,
               borderWidth : 0,
               pointRadius : 5,
               pointBackgroundColor : "rgba(255, 255, 255, .8)",
               pointBorderColor : "transparent",
               borderColor : "rgba(255, 255, 255, .8)",
               borderWidth : 4,
               backgroundColor : "transparent",
               fill : true,
               data : [ 50, 40, 300, 220, 500, 250, 400, 230, 500 ],
               maxBarThickness : 6

            } ],
         },
         options : {
            responsive : true,
            maintainAspectRatio : false,
            plugins : {
               legend : {
                  display : false,
               }
            },
            interaction : {
               intersect : false,
               mode : 'index',
            },
            scales : {
               y : {
                  grid : {
                     drawBorder : false,
                     display : true,
                     drawOnChartArea : true,
                     drawTicks : false,
                     borderDash : [ 5, 5 ],
                     color : 'rgba(255, 255, 255, .2)'
                  },
                  ticks : {
                     display : true,
                     padding : 10,
                     color : '#f8f9fa',
                     font : {
                        size : 14,
                        weight : 300,
                        family : "Roboto",
                        style : 'normal',
                        lineHeight : 2
                     },
                  }
               },
               x : {
                  grid : {
                     drawBorder : false,
                     display : false,
                     drawOnChartArea : false,
                     drawTicks : false,
                     borderDash : [ 5, 5 ]
                  },
                  ticks : {
                     display : true,
                     color : '#f8f9fa',
                     padding : 10,
                     font : {
                        size : 14,
                        weight : 300,
                        family : "Roboto",
                        style : 'normal',
                        lineHeight : 2
                     },
                  }
               },
            },
         },
      });
   </script>

   <script>
      
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
</body>
</html>