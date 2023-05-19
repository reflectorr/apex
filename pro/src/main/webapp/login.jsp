<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String logErr ="";    
if(request.getAttribute("info") != null){
	logErr=request.getAttribute("info").toString();
}
%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>한자공부를 열심히합시다.</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
    
    
    
    <script>
	var text =<%=logErr%>
	
	if ( 1 == text) {
	   alert('로그인성공');
	   location.href="index.jsp";
	} else if(0 == text) {
	   alert('아이디, 비밀번호를 다시 확인하세요');
	   location.href="login.jsp";
	} else {
	}
	</script>   
    
    
    
    
   
	<main class="form-signin w-100 m-auto">
	  <form method="get" action="LoginServlet">
	    <img class="mb-4" src="assets/img/12341234.jpg" alt="" width="500" height="500">
	    <h1 class="h3 mb-3 fw-normal">Please Login in</h1>
	
	    <div class="form-floating">
	      <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해 주세요">
	      <label for="floatingInput">ID</label>
	    </div>
	    <div class="form-floating">
	      <input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
	      <label for="floatingPassword">Password</label>
	    </div>
	
	    <div class="checkbox mb-3">
	      <label>
	        <input type="checkbox" value="remember-me"> Remember me
	      </label>
	    </div>
	    <button class="w-100 btn btn-lg btn-primary" type="submit">log in</button>
	  </form>
	</main>
    
    
    
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
