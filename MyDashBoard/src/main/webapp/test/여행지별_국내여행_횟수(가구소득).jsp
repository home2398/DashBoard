<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_국내여행_횟수(가구소득)</title>

    <style>
/* .chart-container {
            width: 80%;
            margin: 0 auto;,
 } */

 #chartContainer {
      display: flex;
      justify-content: left;
      margin-left: 4%;
      height: 600px;
    }
 
     #regionButtons {
      text-align: center;
    }
    
    
    button {
      width: 100px;
      border: 0;
      outline: none;
      font-size: 15px;
      margin: 1px;
      background: rgb(243, 156, 18);
      color: white;
      padding: 5px;
      cursor: pointer;
      border-radius: 5px;
    }

    button:hover {
      background-color: cornsilk;
      /* 원하는 배경색으로 변경 */
      color: black;
    }
    
    
 
        /* .btn-container {
            width: 80%;
            margin: 20px auto;
            text-align: center;
        } */

       /*  .btn {
            border: 0;
            outline: none;
            font-size: 20px;
            margin: 10px;
            background: rgb(243, 156, 18);
            color: white;
            padding: 10px;
            cursor: pointer;
            border-radius: 10px;
        } */

        h1{
            text-align: center;
        }
        
    .savebox{
    margin-left: 630px;
    margin-top: 140px;
    }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
<div id="contentDiv">
<form onsubmit="return false" method="post">
    <h1>여행지별_국내여행_횟수(가구소득)</h1>
   <!--  <div class="chart-container"> -->
      
    <!-- <div class="btn-container"> -->
    <div id="chartContainer">
     <span id="regionButtons">
        <button class="regionClass" data-region="서울" id="seoulBtn">서울</button>
	    <button class="regionClass" data-region="부산" id="busanBtn">부산</button>
	    <button class="regionClass" data-region="대구" id="daeguBtn">대구</button>
	    <button class="regionClass" data-region="인천" id="incheonBtn">인천</button>
	    <button class="regionClass" data-region="광주" id="gwangjuBtn">광주</button>
	    <button class="regionClass" data-region="대전" id="daejeonBtn">대전</button>
	    <button class="regionClass" data-region="울산" id="ulsanBtn">울산</button>
	    <button class="regionClass" data-region="세종" id="sejongBtn">세종</button>
	    <button class="regionClass" data-region="경기" id="gyeonggiBtn">경기</button>
	    <button class="regionClass" data-region="강원" id="gangwonBtn">강원</button>
	    <button class="regionClass" data-region="충북" id="chongbukBtn">충북</button>
	    <button class="regionClass" data-region="충남" id="chongnamBtn">충남</button>
	    <button class="regionClass" data-region="전북" id="jeonbukBtn">전북</button>
	    <button class="regionClass" data-region="전남" id="jeonnamBtn">전남</button>
	    <button class="regionClass" data-region="경북" id="gyongbukBtn">경북</button>
	    <button class="regionClass" data-region="경남" id="gyongnamBtn">경남</button>
	    <button class="regionClass" data-region="제주" id="jejuBtn">제주</button>
      </span>
    <canvas id="myChart" width="50" height="25"></canvas>
    </div>
    <br>
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="저장명을 입력해주세요">
    <input type = "hidden" name = "fileName" value ="25">
    <input type = "hidden" name = "chartType" value ="bar">
	<input type="hidden" name="region" value="" id="regionInput">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
    
    <!-- 지역 버튼 눌렀을 때 버튼에 따라 지역값 넣는 함수 -->
	<script type="text/javascript" src="region.js"></script>
    
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // 통계 데이터
            var data = {
                labels: ["100만원 미만", "100~200만원 미만", "200~300만원 미만", "300~400만원 미만", "400~500만원 미만", "500~600만원 미만", "600만원 이상"],
                datasets: [{
                    label: '지출액',
                    backgroundColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                    borderColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                    borderWidth: 1,
                    data: [20, 120, 400, 50, 180, 30, 43] // 1차원 형식으로 넣어줘야함(여기에 바로 데이터-2차원를 넣어주면 차트형식이 이상해짐)
                }]
            };

            // 차트 생성
            var ctx = document.getElementById('myChart').getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: data,
                options: {
                    scales: {
                        y: {
                            max: null,
                            grid: {
                                display: false
                            }
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });

            // 버튼 클릭 이벤트 리스너
            // 버튼 id와 대응하는 데이터 인덱스를 객체 배열로 정의
            const chartData = [
                { id: 'seoulBtn', index: 0 },
                { id: 'busanBtn', index: 1 },
                { id: 'daeguBtn', index: 2 },
                { id: 'incheonBtn', index: 3 },
                { id: 'gwangjuBtn', index: 4 },
                { id: 'daejeonBtn', index: 5 },
                { id: 'ulsanBtn', index: 6 },
                { id: 'sejongBtn', index: 7 },
                { id: 'gyeonggiBtn', index: 8 },
                { id: 'gangwonBtn', index: 9 },
                { id: 'chongbukBtn', index: 10 },
                { id: 'chongnamBtn', index: 11 },
                { id: 'jeonbukBtn', index: 12 },
                { id: 'jeonnamBtn', index: 13 },
                { id: 'gyongbukBtn', index: 14 },
                { id: 'gyongnamBtn', index: 15 },
                { id: 'jejuBtn', index: 16 }
            ];

            
            
            // for문으로 버튼 이벤트 리스너 등록
            for (let i = 0; i < chartData.length; i++) {
                document.getElementById(chartData[i].id).addEventListener('click', function () {
                    updateChart(chartData[i].index); // 해당 버튼에 대응하는 데이터 인덱스로 차트 업데이트
                });
            }

            // 2차원의 데이터(원본형태)
            var clickData = [
                [246, 588, 1124, 2412, 2974, 2720, 3196],
                [219, 356, 1329, 2009, 1770, 2039, 2232],
                [163, 312, 563, 1018, 791, 640, 520],
                [142, 301, 934, 1691, 1496, 1960, 2619],
                [77, 112, 253, 489, 255, 308, 314],
                [110, 211, 643, 901, 932, 882, 926],
                [117, 257, 709, 825, 840, 667, 778],
                [71, 41, 345, 376, 409, 329, 311],
                [867, 1751, 6152, 8953, 9851, 11561, 14265],
                [270, 629, 2285, 4220, 4253, 6283, 7482],
                [209, 480, 1398, 2090, 2209, 1871, 1889],
                [273, 609, 2627, 4043, 4063, 3654, 3876],
                [375, 591, 2066, 3153, 2929, 2549, 2173],
                [421, 861, 2615, 4762, 4652, 3817, 3002],
                [475, 1060, 2633, 5325, 4727, 3678, 4736],
                [430, 1004, 3377, 5852, 5101, 4337, 3408],
                [161, 204, 808, 1710, 1845, 2269, 4100]
            ];
            
            // updateChart 함수 정의
            function updateChart(index) {
                // 데이터 업데이트
                myChart.data.datasets[0].data = clickData[index];
                myChart.update(); // 차트 업데이트
            }
            $('#save').on('click',function(){
            	
            	$.ajax({
            		url : '/MyDashBoard/Mycheck.do',
            		data : $('form').serialize(),
            		success:function(){
            			console.log($('#contentDiv'));
            			$('#contentDiv')[0].innerHTML = '<h1>저장되었습니다.</h1>';
            		}
            	})
            })
        })
    </script>
</body>

</html>