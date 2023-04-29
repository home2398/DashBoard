<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>여행지별_국내여행_횟수(가구원수)</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="chart-test.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<style>
	
	#myChart {
        display: flex;
        justify-content: center;
        height: 700px;
    }
    
  .region-button {
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
      background-color: cornsilk; /* 원하는 배경색으로 변경 */
      color: black;
  }

  h1 {
        text-align: center;
    }
</style>
<body>
<div id="contentDiv">
<form onsubmit="return false" method="post">
    <h1>여행지별_국내여행_횟수(가구원수)</h1>
    <div style="text-align: center;">
        <button class="region-button" value="서울">서울</button>
        <button class="region-button" value="부산">부산</button>
        <button class="region-button" value="대구">대구</button>
        <button class="region-button" value="인천">인천</button>
        <button class="region-button" value="광주">광주</button>
        <button class="region-button" value="대전">대전</button>
        <button class="region-button" value="울산">울산</button>
        <button class="region-button" value="세종">세종</button>
        <button class="region-button" value="경기">경기</button>
        <button class="region-button" value="강원">강원</button>
        <button class="region-button" value="충북">충북</button>
        <button class="region-button" value="충남">충남</button>
        <button class="region-button" value="전북">전북</button>
        <button class="region-button" value="전남">전남</button>
        <button class="region-button" value="경북">경북</button>
        <button class="region-button" value="경남">경남</button>
        <button class="region-button" value="제주">제주</button>
    </div>
    <br>
    <div>
        <canvas id="myChart"></canvas>
    </div>
    <input type="text" name="saveName"  placeholder="차트 이름을 입력하세요">
    <input type = "hidden" name = "fileName" value ="26">
    <input type="submit" value="저장" id = "save">
    </form>
    </div>
    
    <script>
    document.addEventListener("DOMContentLoaded", function () {
        // 데이터 정의
        var data = {
            labels: ["1인", "2인", "3인 이상"],
            datasets: [{
                label: "여행횟수",
                data: [],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)',
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                    'rgba(153, 102, 255, 0.5)',
                    'rgba(255, 159, 64, 0.5)',
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 206, 86, 0.5)',
                    'rgba(75, 192, 192, 0.5)',
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)',
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                ],
                borderWidth: 1
            }]
        };

        // 차트 생성
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'polarArea',
            data: data,
            options: {
            	responsive: true,
                maintainAspectRatio: false,
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
        // 버튼 클릭시 데이터 갱신
        $(".region-button").click(function () {
            // 선택한 지역의 데이터 가져오기
            var region = $(this).val();
            var regionData = [];

            switch(region) {
                case "서울":
                  regionData = [1830, 2157, 9272];
                  break;
                case "부산":
                  regionData = [1597, 1646, 6710];
                  break;
                case "대구":
                  regionData = [661, 1078, 2269];
                  break;
                case "인천":
                  regionData = [1244, 1664, 6234];
                  break;
                case "광주":
                  regionData = [315, 470, 1022];
                  break;
                case "대전":
                  regionData = [813, 961, 2829];
                  break;
                case "울산":
                  regionData = [663, 967, 2563];
                  break;
                case "세종":
                  regionData = [252, 348, 1283];
                  break;
                case "경기":
                  regionData = [6697, 9507, 37196];
                  break;
                case "강원":
                  regionData = [2746, 4694, 17982];
                  break;
                case "충북":
                  regionData = [1405, 2603, 6138];
                  break;
                case "충남":
                  regionData = [2439, 4434, 12274];
                  break;
                case "전북":
                  regionData = [1898, 3851, 8089];
                  break;
                case "전남":
                  regionData = [2321, 5385, 12424];
                  break;
                case "경북":
                  regionData = [2776, 5163, 14696];
                  break;
                case "경남":
                  regionData = [2771, 5845, 14892];
                  break;
                case "제주":
                  regionData = [1246, 2099, 7751];
                  break;
                default:
                  break;
              }

            // 데이터 업데이트
            myChart.data.datasets[0].data = regionData;
            myChart.update();
        });
        
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