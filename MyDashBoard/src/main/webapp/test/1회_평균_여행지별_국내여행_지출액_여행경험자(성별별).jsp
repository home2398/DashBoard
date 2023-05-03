<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>1회_평균_여행지별_국내여행_지출액__여행경험자(성별분류)</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/chart.js">
  <style>
    #chartContainer {
      display: flex;
      justify-content: left;
      margin-left: 4%;
      height: 600px;
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

    #regionButtons {
      text-align: center;
    }

    h1 {
      text-align: center;
    }
    
    .savebox{
    margin-left: 630px;
    }
  </style>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
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
  <h1>1회_평균_여행지별_국내여행_지출액__여행경험자(성별분류)(단위 : 만원)</h1>
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
  <canvas id="chart"></canvas>
  </div>
  <br>
  <div class="savebox">
  	<input type="text" name="saveName"  placeholder="저장명을 입력해주세요">
    <input type = "hidden" name = "fileName" value ="9">
    <input type = "hidden" name = "chartType" value ="doughnut">
	<input type="hidden" name="region" value="" id="regionInput">
    <input type="submit" value="저장" id = "save">
    </div>
    </form>
    </div>
    
    <!-- 지역 버튼 눌렀을 때 버튼에 따라 지역값 넣는 함수 -->
	<script type="text/javascript" src="region.js"></script>
    
  <script>
  document.addEventListener("DOMContentLoaded", function () {
    // 데이터
    const data = {
      labels: ["남자", "여자"],
      datasets: [{
        data: [],
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
    };

    // 도넛 차트 생성 함수
    function createDonutChart(data) {
      return new Chart(document.getElementById('chart').getContext('2d'), {
        type: 'doughnut',
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

    // 초기에 도넛 차트 생성
    const chart = createDonutChart(data);

    // 지역 버튼 클릭 이벤트 핸들러
    $('#regionButtons button').on('click', function () {
      const region = $(this).data('region');// 클릭한 버튼의 data-region 속성값을 가져옴

      // region에 따라 데이터를 업데이트하고 차트를 그림
      switch (region) {
        case '서울':
          data.datasets[0].data = [80, 82];
          break;
        case '부산':
          data.datasets[0].data = [136, 141];
          break;
        case '대구':
          data.datasets[0].data = [96, 90];
          break;
        case '인천':
          data.datasets[0].data = [72, 70];
          break;
        case '광주':
          data.datasets[0].data = [80, 109];
          break;
        case '대전':
          data.datasets[0].data = [88, 76];
          break;
        case '울산':
          data.datasets[0].data = [74, 68];
          break;
        case '세종':
          data.datasets[0].data = [57, 56];
          break;
        case '경기':
          data.datasets[0].data = [58, 56];
          break;
        case '강원':
          data.datasets[0].data = [134, 135];
          break;
        case '충북':
          data.datasets[0].data = [89, 87];
          break;
        case '충남':
          data.datasets[0].data = [90, 90];
          break;
        case '전북':
          data.datasets[0].data = [94, 89];
          break;
        case '전남':
          data.datasets[0].data = [100, 99];
          break;
        case '경북':
          data.datasets[0].data = [88, 90];
          break;
        case '경남':
          data.datasets[0].data = [85, 86];
          break;
        case '제주':
          data.datasets[0].data = [492, 481];
          break;

        default:
          // 기본값은 임의의 데이터로 설정
          data.datasets[0].data = [Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100];
          break;
      }

      chart.update(); // 차트 업데이트
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
