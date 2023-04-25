<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selfmade Orange Dashboard_Log-in</title>
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
.login-header {
	background-color: rgb(243, 105, 19);
}

.position-relative.bg-gradient-primary.h-100.m-3.px-7.border-radius-lg.d-flex.flex-column.justify-content-center
	{
	background-size: contain;
}
</style>

</head>
<body class="">
	<div class="container position-sticky z-index-sticky top-0">
		<div class="row">
			<div class="col-12"></div>
		</div>
	</div>
	<main class="main-content  mt-0">
		<section>
			<div class="page-header min-vh-100">
				<div class="container">
					
						<div class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column">
							<div class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center" style="background-image: url('assets/img/우리의로고.png');">
							</div>
						</div>
						<div
							class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-5">
							<div class="card z-index-0 fadeIn3 fadeInBottom">
								<div
									class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
									<div
										class="login-header shadow-primary border-radius-lg py-3 pe-1">
										<h4
											class="text-white font-weight-bolder text-center mt-2 mb-0">로그인</h4>
										<div class="row mt-3"></div>
									</div>
								</div>
								<div class="card-body">
									<form role="form" class="text-start" action="Login.do"
										method="post">
										<div class="input-group input-group-outline my-3">
											<label class="form-label">아이디를 입력하세요.</label> <input
												type="text" class="form-control" name="id" minlength="5"
												maxlength="50">
										</div>
										<div class="input-group input-group-outline mb-3">
											<label class="form-label">비밀번호를 입력하세요.</label> <input
												type="password" class="form-control" name="pw">
										</div>

										<div class="text-center">
											<button type="submit"
												class="btn btn-lg bg-gradient-primary w-100 my-4 mb-2 "
												style="width: 350px">로그인</button>
										</div>
										<p class="mt-4 text-sm text-center">
											계정이 없으신가요? <a href="Gosign-up.do"
												class="text-primary text-gradient font-weight-bold">회원가입</a>
										</p>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			
		</section>
	</main>
	<!--   Core JS Files   -->
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
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