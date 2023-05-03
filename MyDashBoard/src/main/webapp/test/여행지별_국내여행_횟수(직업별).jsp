<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_국내여행_횟수(직업별)</title>
    <style>
        .chart-container {
            width: auto;
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
    <h1>여행지별_국내여행_횟수(직업별)</h1>
    <div class="chart-container">
        <canvas id="barChart"></canvas>
    </div>
    <br>
    <div style="text-align: center;">
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
    </div>
    <div class="savebox">
    <input type="text" name="saveName"  placeholder="저장명을 입력해주세요">
    <input type = "hidden" name = "fileName" value ="29">
    <input type = "hidden" name = "chartType" value ="widthbar">
    <input type="hidden" name="region" value="" id="regionInput">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
    
	<!-- 지역 버튼 눌렀을 때 버튼에 따라 지역값 넣는 함수 -->
   <script type="text/javascript" src="region.js"></script>
   
    <script>
    	
        // 표 데이터
        const data = {
            labels: ["임금봉급근로자", "고용원있는사업주", "고용원없는자영업자", "무급가족 종사자", "전업주부", "학생", "기타"],
            datasets: [{
                label: '여행횟수',
                data: [],
                backgroundColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                borderColor: ['rgba(230, 126, 34, 0.2)', 'rgba(241, 196, 15, 0.2)', 'rgba(52, 152, 219, 0.2)', 'rgba(46, 204, 113, 0.2)', 'rgba(155, 89, 182, 0.2)', 'rgba(26, 188, 156, 0.2)', 'rgba(231, 76, 60, 0.2)'],
                borderWidth: 1
            }]
        };

        // 차트 옵션
        const options = {
            responsivre: true,
            maintainAspectRatio: false,
            indexAxis: 'y',
            scales: {
                x: {
                    beginAtZero: true,
                    max: null // y축 최댓값 설정
                }
            },
            plugins: {
                legend: {
                    display: false
                }
            }
        };

        // 바 차트 생성 함수
        function createBarChart(ctx, data, options) {
            return new Chart(ctx, {
                type: 'bar',
                data: data,
                options: options
            });
        }

        // 초기 차트 생성
        const ctx = document.getElementById('barChart').getContext('2d');
        const barChart = createBarChart(ctx, data, options);

        // 차트 업데이트 함수
        function updateChart(selectedRegion) {
            // 선택된 지역에 따른 데이터 업데이트
            const regionData = regionDataMap[selectedRegion];
            barChart.data.datasets[0].data = regionData;
            barChart.update(); // 차트 업데이트
        }

        // 선택된 지역에 따른 데이터 매핑
        const regionDataMap = {
            '서울': [7531, 332, 1877, 139, 1511, 1157, 713],
            '부산': [5927, 247, 1065, 94, 1253, 928, 439],
            '대구': [2151, 69, 777, 117, 211, 461, 221],
            '인천': [5501, 385, 1056, 50, 636, 1115, 398],
            '광주': [1026, 78, 378, 32, 101, 141, 52],
            '대전': [2782, 186, 679, 107, 275, 464, 110],
            '울산': [2588, 101, 569, 16, 296, 449, 176],
            '세종': [1089, 10, 255, 18, 237, 186, 88],
            '경기': [31726, 2116, 6798, 379, 3916, 6640, 1825],
            '강원': [14751, 1053, 4123, 230, 1260, 3217, 788],
            '충북': [5740, 287, 1844, 168, 420, 1200, 486],
            '충남': [11190, 404, 3175, 321, 1075, 2478, 504],
            '전북': [7844, 281, 2541, 364, 993, 1415, 400],
            '전남': [11113, 399, 4311, 503, 1475, 1837, 492],
            '경북': [10990, 921, 4864, 483, 1687, 2767, 922],
            '경남': [13234, 481, 4573, 412, 1296, 2947, 565],
            '제주': [6789, 493, 1431, 81, 630, 1396, 277]
        };
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
      </script>
</body>

</html>
