<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>여행지별_국내여행_횟수(학력별)</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
</head>
<style>

	#pieChart {
        display: flex;
        justify-content: center;
        height: 700px;
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
        background-color: cornsilk; /* 원하는 배경색으로 변경 */
        color: black;
    }

    h1 {
        text-align: center;
    }
</style>
<body>
  <h1>여행지별_국내여행_횟수(학력별)</h1>
  <div class="chart-container">
      <canvas id="pieChart"></canvas>
  </div>
  <br>
  <div id="regionButtons" style="text-align: center;">
    <button data-region="서울">서울</button>
    <button data-region="부산">부산</button>
    <button data-region="대구">대구</button>
    <button data-region="인천">인천</button>
    <button data-region="광주">광주</button>
    <button data-region="대전">대전</button>
    <button data-region="울산">울산</button>
    <button data-region="세종">세종</button>
    <button data-region="경기">경기</button>
    <button data-region="강원">강원</button>
    <button data-region="충북">충북</button>
    <button data-region="충남">충남</button>
    <button data-region="전북">전북</button>
    <button data-region="전남">전남</button>
    <button data-region="경북">경북</button>
    <button data-region="경남">경남</button>
    <button data-region="제주">제주</button>
</div>
  <script>
    // 표 데이터
    const data = {
      labels: ["초졸 이하", "중학교", "고등학교", "대학교이상"],
      datasets: [{
          label: '여행 횟수',
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
          borderColor: 'rgba(75, 192, 192, 1)',
          borderWidth: 0
      }]
  };

  // 차트 생성 함수
  function createPieChart(data) {
    return new Chart(document.getElementById('pieChart').getContext('2d'), {
        type: 'pie',
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
const chart = createPieChart(data);

// 지역 버튼 클릭 이벤트 핸들러
$('#regionButtons button').on('click', function () {
  const region = $(this).data('region'); // 클릭한 버튼의 data-region 속성값을 가져옴

  // region에 따라 데이터를 업데이트하고 차트를 그림
  switch (region) {
    case '서울':
        data.datasets[0].data = [225, 462, 3694, 8879];
        break;
    case '부산':
        data.datasets[0].data = [169, 266, 2702, 6815];
        break;
    case '제주':
        data.datasets[0].data = [37, 179, 2589, 8292];
        break;
    case '대구':
        data.datasets[0].data = [152, 208, 1350, 2297];
        break;
    case '인천':
        data.datasets[0].data = [154, 157, 2673, 6159];
        break;
    case '광주':
        data.datasets[0].data = [42, 81, 599, 1086];
        break;
    case '대전':
        data.datasets[0].data = [91, 159, 1442, 2910];
        break;
    case '울산':
        data.datasets[0].data = [69, 252, 1416, 2457];
        break;
    case '세종':
        data.datasets[0].data = [0, 111, 480, 1292];
        break;
    case '경기':
        data.datasets[0].data = [611, 1359, 18454, 32976];
        break;
    case '강원':
        data.datasets[0].data = [182, 476, 8342, 16422];
        break;
    case '충북':
        data.datasets[0].data = [197, 495, 4131, 5324];
        break;
    case '충남':
        data.datasets[0].data = [193, 716, 7225, 11012];
        break;
    case '전북':
        data.datasets[0].data = [360, 504, 4560, 8414];
        break;
    case '전남':
        data.datasets[0].data = [488, 863, 7216, 11563];
        break;
    case '경북':
        data.datasets[0].data = [499, 1035, 7475, 13624];
        break;
    case '경남':
        data.datasets[0].data = [417, 993, 8850, 13248];
        break;
    default:
        // 기본값은 임의의 데이터로 설정
        data.datasets[0].data = [Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100, Math.random() * 100];
        break;
  }
  
  
  chart.update(); // 차트 업데이트
        });
  </script>
</body>
</html>