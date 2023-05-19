<%@page import="org.apache.tomcat.jakartaee.Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="testpro.LoginServlet"%>
<%@ page import="testpro.UserInfo"%>
<%@ page import="testpro.LogOut"%>
<%@ page import="testpro.chi_c" %>
<%@ page import="testpro.Chinese" %>
<%@ page import="java.util.List" %>

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

<%
List<Chinese> chi = (List<Chinese>) request.getAttribute("chi");
%>


<body>
		<nav class="navbar navbar-light bg-light static-top">
			<div class="container">
				<a class="navbar-brand" href="index.jsp"><%=request.getParameter("rating") %></a>
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
	
	
        <section class="features-icons bg-light text-center">
            <div class="container">
              
                    
                    
          	   <%for(int i=0; i<chi.size()/5; i++) { %>
          	   <div class="row">                    
                             <%for(int j= 0; j < 5; j++)  { %>
 
                        		<div class="features-icons-item mx-auto col-lg-2"> 
	                             	<h1><%=chi.get((i*5)+j).getChi()%></h1>
	                          		<h4>뜻:</<h4><%=chi.get((i*5)+j).getMean()%>
	                          		<br>                          		
	                          		<h4>음:</<h4><%=chi.get((i*5)+j).getSound()%>
	                          		<br>
	                          	</div>
                   				
                          		<% }%>

                 </div>
                    <%} %>

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
