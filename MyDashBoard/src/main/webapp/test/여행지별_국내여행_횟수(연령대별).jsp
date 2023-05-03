<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_국내여행_횟수(연령대별)</title>
    <style>
    
     #chartContainer {
      display: flex;
      justify-content: left;
      margin-left: 4%;
      height: 600px;
    }
    
        .regionClass {
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

        h1 {
            text-align: center;
        }
        #myChart {
        width: auto;
        height: auto; 
        min-height: 300px;
        max-height: 600px;
        display: flex;
        justify-content: left;
      	margin-left: 4%;
      	height: 600px;
        align-items: center 
        }
        
        #regionButtons {
     	text-align: center;
   		 }	
   		 
   		 
    .savebox{
    margin-left: 630px;
    }
        
    </style>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
</head>

<body>


<div id="contentDiv">
<form onsubmit="return false" method="post">
    <h1>여행지별_국내여행_횟수(연령대별)</h1>
    <!-- <div style="text-align: center;"> -->
    <div id="chartContainer">
    <span id="regionButtons">
    <button class="regionClass" data-region="서울" id="seoulBtn" onclick="updateChart('서울')">서울</button>
        <button class="regionClass" data-region="부산" id="seoulBtn" onclick="updateChart('부산')">부산</button>
        <button class="regionClass" data-region="대구" id="daeguBtn" onclick="updateChart('대구')">대구</button>
        <button class="regionClass" data-region="인천" id="incheonBtn" onclick="updateChart('인천')">인천</button>
        <button class="regionClass" data-region="광주" id="gwangjuBtn" onclick="updateChart('광주')">광주</button>
        <button class="regionClass" data-region="대전" id="daejeonBtn" onclick="updateChart('대전')">대전</button>
        <button class="regionClass" data-region="울산" id="ulsanBtn" onclick="updateChart('울산')">울산</button>
        <button class="regionClass" data-region="세종" id="sejongBtn" onclick="updateChart('세종')">세종</button>
        <button class="regionClass" data-region="경기" id="gyeonggiBtn" onclick="updateChart('경기')">경기</button>
        <button class="regionClass" data-region="강원" id="gangwonBtn" onclick="updateChart('강원')">강원</button>
        <button class="regionClass" data-region="충북" id="chongbukBtn" onclick="updateChart('충북')">충북</button>
        <button class="regionClass" data-region="충남" id="chongnamBtn" onclick="updateChart('충남')">충남</button>
        <button class="regionClass" data-region="전북" id="jeonbukBtn" onclick="updateChart('전북')">전북</button>
        <button class="regionClass" data-region="전남" id="jeonnamBtn" onclick="updateChart('전남')">전남</button>
        <button class="regionClass" data-region="경북" id="gyongbukBtn" onclick="updateChart('경북')">경북</button>
        <button class="regionClass" data-region="경남" id="gyongnamBtn" onclick="updateChart('경남')">경남</button>
        <button class="regionClass" data-region="제주" id="jejuBtn" onclick="updateChart('제주')">제주</button>
    
    <!-- <select id="region-dropdown">
    <option value="" selected disabled>지역을 선택하세요</option>
    <option class="btn" data-region="서울" value="서울">서울</option>
    <option class="btn" data-region="부산" value="부산">부산</option>
    <option class="btn" data-region="대구" value="대구">대구</option>
    <option class="btn" data-region="인천" value="인천">인천</option>
    <option class="btn" data-region="광주" value="광주">광주</option>
    <option class="btn" data-region="대전" value="대전">대전</option>
    <option class="btn" data-region="울산" value="울산">울산</option>
    <option class="btn" data-region="세종" value="세종">세종</option>
    <option class="btn" data-region="경기" value="경기">경기</option>
    <option class="btn" data-region="강원" value="강원">강원</option>
    <option class="btn" data-region="충북" value="충북">충북</option>
    <option class="btn" data-region="충남" value="충남">충남</option>
    <option class="btn" data-region="전북" value="전북">전북</option>
    <option class="btn" data-region="전남" value="전남">전남</option>
    <option class="btn" data-region="경북" value="경북">경북</option>
    <option class="btn" data-region="경남" value="경남">경남</option>
    <option class="btn" data-region="제주" value="제주">제주</option>
  	</select> -->
    
    </span>
    <canvas id="myChart"></canvas>
    </div>
    <br>
    
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="저장명을 입력해주세요">
    <input type = "hidden" name = "fileName" value ="28">
    <input type = "hidden" name = "chartType" value ="line">
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
                labels: ["15~19세", "20대", "30대", "40대", "50대", "60대", "70세 이상"],
                datasets: [{
                    label: '방문횟수',
                    fill: true,
                    backgroundColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                    borderColor: ['rgba(152, 8, 8)'],
                    borderWidth: 1,
                    data: [20, 120, 380, 50, 180, 30, 43] // 1차원 형식으로 넣어줘야함(여기에 바로 데이터-2차원를 넣어주면 차트형식이 이상해짐)
                }]
            };


            
            
            // 차트 초기 설정
              var ctx = document.getElementById("myChart").getContext("2d");
            var myChart = new Chart(ctx, {
                type: "line",
                data: data,
                options: {
                    responsivre: true,
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true,
                            min: 0,
                            max: null
                        }
                    },
                    responsive: true,
                    title: {
                        display: true,
                        text: "여행지별_국내여행_횟수(연령대별)"
                    },
                    elements: {
                        point: {
                            radius: 10 // 점의 크기 설정
                        }
                    },
                    animations: {
                        tension: {
                            duration: 1000,
                            easing: 'linear',
                            from: 1,
                            to: 0,
                            loop: true
                        }
                    },
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });
            
       $('#region-dropdown').on('change', function () {
           var region = $(this).val();    
        
            
        // 버튼 클릭 이벤트 리스너
        // 버튼 id와 대응하는 데이터 인덱스를 객체 배열로 정의
        var chartData = [
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
        	console.log(chartData)
        // for문으로 버튼 이벤트 리스너 등록
    for (let i = 0; i < chartData.length; i++) {
            document.getElementById(chartData[i].id).addEventListener('click', function () {
            	console.log(chartData[i].id)
                updateChart(chartData[i].index); // 해당 버튼에 대응하는 데이터 인덱스로 차트 업데이트
            // 문제점 : chartData 배열은 잘 불러와지나 
            // script, body 순서 문제로 addEventListener를 부여할 DOM을 찾을 수 없는 오류가 납니다!
            // 해당 문제만 고민하시면 될 것 같습니다~
            
            });
        
         } 
      
            
               
        
        // 2차원의 데이터(원본형태)
        var clickData = [
            [809, 3537, 2719, 2327, 1957, 1187, 722], // 서울 수치
            [457, 2873, 839, 2057, 289, 846, 476], // 부산 수치
            [131, 839, 707, 814, 744, 509, 264], // 대구 수치
            [317, 2057, 1749, 2144, 1700, 857, 317], // 인천 수치
            [85, 289, 355, 424, 362, 201, 90], // 광주 수치
            [97, 846, 946, 930, 1025, 529, 229], // 대전 수치
            [103, 476, 1003, 859, 885, 627, 242], // 울산 수치
            [140, 360, 411, 435, 274, 120, 143], // 세종 수치
            [1980, 10679, 10872, 11091, 9898, 6262, 2618], // 경기 수치
            [646, 4544, 5283, 5853, 5063, 3328, 705], // 강원 수치
            [180, 1370, 1846, 1894, 2544, 1601, 711], // 충북 수치
            [473, 2811, 3800, 4631, 4235, 2311, 886], // 충남 수치
            [422, 2495, 2655, 2876, 3058, 1740, 592], // 전북 수치
            [698, 3736, 3632, 4218, 4043, 2854, 949], // 전남 수치
            [694, 3289, 4656, 4823, 5140, 2933, 1100], // 경북 수치
            [443, 3085, 4725, 5661, 5648, 3217, 730], // 경남 수치
            [174, 2261, 2740, 2500, 2024, 1159, 240] // 제주 수치
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
  })
</script>
</body>

</html>