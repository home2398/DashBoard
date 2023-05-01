<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="chart-test.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>

  <style>
  	/* 마우스 포인터 */
	html{cursor: url(assets/img/cursor.png), auto}
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
}

/* 왼쪽 아이콘 */
.material-icons {
  color: orange;
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

/* 톱니바퀴모양 아이콘 */
.material-icons1 {
  color: #EC6602;
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
  font-family: 'GangwonEdu_OTFBoldA';
  font-size: large;
  margin-left: 0.25rem !important;
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

/* 맨위 오른쪽 사람 이모티콘*/
.me-sm-1 {
  color:#3C3C3C;
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

/* 태그 왼쪽 시계 아이콘 */
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

/* 제일 위 오른쪽 log out 글씨 */
.navbar-nav1 {
font-family: 'GangwonEduPowerExtraBoldA';
font-color: #3C3C3C;
font-size: x-large;
transition: box-shadow 0.25s ease-in, background-color 0.25s ease-in;
}

.pheader {
   font-family: 'GangwonEduPowerExtraBoldA';
   font-size: 4ch;
   font-style: italic;
   color: #FF8839;
   position: float;
}

.person{
color:#3C3C3C;
}  

.log-out {
color:#3C3C3C;
}

  </style>

</head>

<body class="g-sidenav-show  ">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 bg-gradient-dark1" id="sidenav-main">
    <div class="logolarge">
      <img src="assets/img/logo.png" alt="main_logo" width="250" height="100">
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
    <div class="input-group input-group-outline">
        <label class="form-label">Type here...</label>
        <input type="text"  class="form-control">
      </div>
    <hr class="horizontal light mt-0 mb-2">
    <!-- <button id="csvBasket">담기목록</button> -->
    
 
     <!-- <div class="collapse navbar-collapse w-auto ps" id="sidenav-collapse-main">
       <ul class="navbar-nav" >
          <li class="nav-item">
             <a class="nav-link text-white active bg-gradient-primary1sidenav-collapse-main">
                <span class="nav-link-text ms-1" id="csvBasket">
                   
                </span>
             </a>
          </li>
       </ul>
    </div>  -->
    <!-- 담기목록 버튼 -->
  <ul class="navbar-nav" id="csvBasket" >
   <li class="nav-item">
    <a class="nav-link text-white active bg-gradient-primary1sidenav-collapse-main">
     <span class="material-icons opacity-10">dashboard</span>
     <span class="nav-link-text ms-1">담기목록</span>
        <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">  
       </div>
    </a>
   </li>
  </ul>
  
<!-- 메인페이지 버튼 -->
  <div id="csvList">
  </div>
  

    
    
    <div class="collapse navbar-collapse w-auto ps" id="sidenav-collapse-main">
      <div class="input-group input-group-outline">
      </div>
     <div id="csvBasket">
      <ul class="navbar-nav" >
      <li class="nav-item">
          <a class="nav-link text-white" href="GoMain.do">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">person</i>
            </div>
            <span class="nav-link-text ms-1">메인페이지</span>
          </a>
        </li>
      </ul>
    </div>
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
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
         id="navbarBlur" data-scroll="true">
        <div class="container-fluid py-1 px-3">
          <span class="pheader">Dash board</span>
          <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
               id="navbar">
               
           <div class="ms-md-auto pe-md-3 d-flex align-items-center">
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
                     <i class="person fa fa-user me-sm-1"> </i> <span
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
          

            </div>
        </div>
    </nav>
	<main>
		<div>
			<canvas id="Mychart" style = "height:700px;"></canvas>
		</div>
	</main>
   
  <!--   Core JS Files   -->
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
  <!-- 운비쌤이 지운 구간 -->
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
  
  <script type="text/javascript">
	document.addEventListener("DOMContentLoaded", function () {
     $("#csvBasket").on("click", function(){
        alert("넘어옴?")
        var sendData = {
           data : $(this)[0].innerText
           }
        console.log("센드데이터"+sendData);
        $.ajax({
         url : "SelectMyCsvList.do",
         data : sendData,
         dataType : "json",
         success : function(list){
        	// list안에 지역까지 포함되게 만들기
            // 성공했을 때 회원관심파일내역 보여주기
            console.log(list);
            $("#csvList").empty();
            for(var i =0; i<list.length; i++){
               $("#csvList").append('<input type="button" id = "'+list[i].file_path+'" class = "MyCsvName" name="MyCsvName" value="'+list[i].save_name+'"><br>');
            }
            /*//////////////////////////////////////////////ajax 안에 ajax 통신//////////////////////////////////////////////////////////*/
            $('.MyCsvName').on('click',function(){	
         	   // 차트 데이터 경로가져오기
         	   var pathData = $(this).attr('id');
         	   // 차트 종류 ---> 수정
         	   var chartType = 'doughnut';
         	   // 지역명 가져오기 ---> 수정
         	   var region = '부산';
         	   // 외부에 있는 파일 읽어올 때 path 값 변경 로직(server.xml ---> Context 태그를 추가해놨으니 다른 사람도 똑같이 적용할 것)
         	   pathData = pathData.replace('C:/Users/smhrd/Desktop/project2/csv','');
         	   $.ajax({
         		url : pathData,
         		dataType : 'text',
         		success : function(response){
         			data = makeChartData(response);
         			var listData = [];
         			var labelList = [];
         			
         			// 진짜 차트 영역 데이터 구하기
         			var i = 0;
         			for(i = 0; i < data[0].length; i++){
         				if(data[0][i] === region){
        	         		break;
         				}
         			}
         			
         			// label영역 데이터 구하기
         			for(var j = 1; j< data.length-1; j++){
         				labelList.push(data[j][1]);
         				listData.push(data[j][i]);
         			}
         			
         			
         			const chart = createChart(chartType, labelList, listData);
         		}
         	   })
            })
         },
         error : function(){
            console.log("실패!!!!!!!!!!!!");
         }
        })
     });
     /*////////////////////////////////////////////////////////////////////////////////////////////////////////*/
     
     
     /*////////////////////////////////////////////차트 생성하기 함수////////////////////////////////////////////////////////////*/
     function createChart(chartType, label, receive_data) {
    	 const data = {
    		      labels: label,
    		      datasets: [{
    		        data: receive_data,
    		        backgroundColor: [
    		          'rgba(255, 99, 132, 0.75)',
    		          'rgba(54, 162, 235, 0.75)',
    		          'rgba(255, 206, 86, 0.75)',
    		          'rgba(75, 192, 192, 0.75)',
    		          'rgba(153, 102, 255, 0.75)',
    		          'rgba(255, 159, 64, 0.75)',
    		          'rgba(94, 232, 129, 0.75)'
    		        ],
    		        borderWidth: 0
    		      }]
    		    }
    	 
       return new Chart(document.getElementById('Mychart').getContext('2d'), {
         type: chartType, // 디비에서 값 조회해서 변경될 수도 있음
         data: data,
         plugins: [ChartDataLabels],
         options: {
           responsive: true,
           maintainAspectRatio: false,
           legend: {
             position: 'right',
             labels: {
               boxWidth: 12
             }
           },
           plugins: {
             datalabels: {
               formatter: (value, context) => {
                 return context.chart.data.labels[context.dataIndex]
               }
             }
           }
         }
       });
     }
     
     /*////////////////////////////////////////////////////////////////////////////////////////////////////////*/
     
     // csv파일을 읽어서 변환해주는 코드//////////////////////////////////////////////////////////////////////////////////
      function makeChartData(allData) {
            // 1. 한 줄씩 끊어주기
            var allTextLines = allData.split(/\r\n|\n/);
            // 2. column명 읽어오기
            var columnHeading = allTextLines[0].split(',');
            console.log(columnHeading);
            console.log(allTextLines);
            // 3. 최종 데이터 담을 배열 생성
            var finalData = [];
            // 4. 배열에 column명 제외하고 읽어서 집어넣기
            for(var i = 0; i < allTextLines.length; i++){
                finalData.push(allTextLines[i].split(','));
            }
            return finalData;
        }
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////  
        
	})
  </script>
</body>

</html>