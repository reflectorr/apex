<%@page import="org.apache.tomcat.jakartaee.Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="testpro.LoginServlet"%>
<%@ page import="testpro.UserInfo"%>
<%@ page import="testpro.LogOut"%>

<!-- 임포트 너무많이 하지마셈 -->


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>한자공부를 열심히합시다.</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link href="css/NewFile.css" rel="stylesheet" />

<!-- <link href="css/siba.css" rel="stylesheet" /> -->
</head>

<!-- js, css를 따로 가져와서 쓰면 html or jsp파일 위아래에 인포트해야함
+ 따로 가져와서 쓸때 네이밍 규칙을 한번 확인해라 -->


<body>
	<nav class="navbar navbar-light bg-light static-top">
		<div class="container">
			<a class="navbar-brand" href="#!">한자공부 너무좋아</a>
			<%
			UserInfo sess_info = (UserInfo) session.getAttribute("info");
			LogOut Lout = new LogOut();

			if (sess_info == null) {
			%>
			<a class="btn btn-primary" href="login.jsp">로그인 하기</a> <a
				class="btn btn-primary" href="sign_in.jsp">가입 하기</a>
			<%
			} else {
			%>
			<h1><%=sess_info.getUname()%>님 환영합니다 반가워요
			</h1>
			<a class="btn btn-primary" href="LogOut">로그 아웃</a>
			<%
			}
			%>
		
	</nav>

	<!-- 헤더 이미지, 글자-->
 	<header class="masthead">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="text-center text-white">
					<h1 class="mb-5">한자공부 열심히 해라</h1>
					</div>
				</div>
			</div>
		</div>
	</header> 



	<!-- 한자공부, 시험 드롭박스 -->
	  <section class="features-icons bg-light text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-window m-auto text-primary"></i></div>
                            <h3>한자 공부하기</h3>
                            <p class="lead mb-0">공부열심히하세용</p>
                            <div id="main">
				        	<ul>  
				              <li><a href="chi_c?rating=8급">8급</a></li>
				              <li><a href="chi_c?rating=7급">7급</a></li>
				              <li><a href="chi_c?rating=6급">6급</a></li>
				              <li><a href="chi_c?rating=5급">5급</a></li>
				              <li><a href="chi_c?rating=4급">4급</a></li>
				              <li><a href="chi_c?rating=4급">3급</a></li>
				            </ul>
		          		</div>
                        </div>
                    </div>
         
                    <div class="col-lg-6">
                        <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                            <div class="features-icons-icon d-flex"><i class="bi-terminal m-auto text-primary"></i></div>
                            <h3>한자 시험보기</h3>
                            <p class="lead mb-0">시험도 매일보는거다</p>
                            <div id="main">
				        	<ul>  
				              <li><a href="chi_Test?rating=8급">8급</a></li>
				              <li><a href="chi_Test?rating=7급">7급</a></li>
				              <li><a href="chi_Test?rating=6급">6급</a></li>
				              <li><a href="chi_Test?rating=5급">5급</a></li>
				              <li><a href="chi_Test?rating=4급">4급</a></li>
				              <li><a href="chi_Test?rating=3급">3급</a></li>
				            </ul>
		          		</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	
	
	<!-- Footer-->
	<footer class="footer bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-start my-auto">
					<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2022. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-end my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item me-4"><a
							href="https://www.facebook.com/profile.php?id=100007202250842"><i
								class="bi-facebook fs-3"></i></a></li>
						<li class="list-inline-item me-4"><a
							href="https://www.youtube.com/channel/UC5jgX1E4TCeBC4tj6hlLWWg"><i
								class="bi-youtube fs-3"></i></a></li>
						<li class="list-inline-item"><a
							href="https://www.instagram.com/otakukimoi_/"><i
								class="bi-instagram fs-3"></i></a></li>
					</ul>
				</div>
			</div>
		</div>



	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<script src="js/jsf.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
