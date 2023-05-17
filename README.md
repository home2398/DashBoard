# CoreProject
## 🔗한국관광현황대시보드(팀명 : 파채(파이썬이 채고야)
![image](https://user-images.githubusercontent.com/122069364/236148720-324152f6-eb7f-4378-b865-625e04a3f25a.png)

## 📜 서비스 소개
- 서비스명 : 한국 관광 현황 대시보드
- 서비스 내용 : 관광 사업자를 위한, 관광 관련 데이터를 통한 나만의 대시보드 제작 서비스

## 📅 프로젝트 기간
- 2023.04.20 ~ 2023.05.04

## 🛠 기술 및 도구
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
            <img src="https://img.shields.io/badge/Python-A22846?style=for-the-badge&logo=Python&logoColor=white"/>
            <img src="https://img.shields.io/badge/jsp/servlet-2C2255?style=for-the-badge&logo=jsp/servlet&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>라이브러리</td>
        <td>
            <img src="https://img.shields.io/badge/BootStrap-7952B3?style=for-the-badge&logo=BootStrap&logoColor=white"/>
            <img src="https://img.shields.io/badge/Chart.js-FFCD00?style=for-the-badge&logo=Chart.js&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://img.shields.io/badge/VSCode-007ACC?style=for-the-badge&logo=VisualStudioCode&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/Oracle 11g-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>

## ⭐ 주요기능
- CSV파일 데이터 시각화
- 지역별 선택 기능
- 마이페이지 차트 저장 기능

## ⚙ 시스템 아키텍처(구조)
![image](https://user-images.githubusercontent.com/122069364/236710392-c19f524f-46d9-47d1-a730-c4983ff22e04.png)

## 📌 서비스 흐름도(유스케이스)
![image](https://user-images.githubusercontent.com/122069364/236710560-716a8a76-1db6-469d-8b2b-9d9f9d2c976c.png)

## 📌 ERD
![image](https://user-images.githubusercontent.com/122069364/236710611-2f391930-233b-4c9e-97cc-922c41047b50.png)

## ⌨ 개발 내용
### 1. 데이터 확보 방법
![image](https://user-images.githubusercontent.com/122069364/236710795-95d1230b-f441-4cbb-8f06-0516b75973d0.png)
### 2. 결측치 확인
![image](https://user-images.githubusercontent.com/122069364/236710861-dc31521e-c0ae-49d0-b78b-76f572cd017f.png)
### 3. 데이터 차트 구현
![image](https://user-images.githubusercontent.com/122069364/236710932-2fc21692-12d7-43be-9d21-260dc7124d9d.png)
### 4. 회원가입 및 로그인 화면 구현
![image](https://user-images.githubusercontent.com/122069364/236711038-556e7193-8d11-46d0-adc8-9af6a28fbc1f.png)
### 5. 메인페이지 대시보드 구현
![image](https://user-images.githubusercontent.com/122069364/236710969-86500522-d1b0-4d5e-95a0-f8eae9ebdaa0.png)
### 6. 마이페이지 개인별 대시보드 구현
![image](https://user-images.githubusercontent.com/122069364/236711130-dca0c03d-fa1b-4d2b-9cd6-1514fc5d39c7.png)

## 👨‍👨‍👧‍👦 팀원 소개
![image](https://user-images.githubusercontent.com/122069364/236711273-d63060c5-8ae5-4790-9521-ad547dad8994.png)

## 🏀 트러블슈팅
- 문제 1 : chart JS 기능 지식부족으로 인한 구현의 어려움
  해결방안 : 구글링 및 유튜브, chat GPT 활용
- 문제2 : 각 데이터의 수치별 차트 선택의 어려움
  해결방안 : 통계 데이터 활용방안 관련 논문 및 chart JS 공식문서 참고
- 문제 3 : 마이 페이지 구현(저장명 클릭시 저장했던 차트 띄우기)의 어려움
  해결방안 : 자바스크립트 코드 재구성 및 리팩토링
