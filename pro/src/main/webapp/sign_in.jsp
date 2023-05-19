<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String str_test ="";    
if(request.getAttribute("pw") != null){
	str_test=request.getAttribute("pw").toString();
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
	var text =<%=str_test%>
	
	if ( 1 == text) {
	   alert('등록되었습니다.');
	   location.href="login.jsp";
	} else if(0 == text) {
	   alert('등록 실패');
	   location.href="sign_in.jsp";
	} else {
	}
	</script>   
   
	<main class="form-signin w-100 m-auto">
	  <form method="get" action="Sign_in">
	    <img class="mb-4" src="assets/img/08.jpg" alt="" width="500" height="500">
	    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
	
	    <div class="form-floating">
	      <input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해 주세요">
	      <label for="floatingInput">ID</label>
	    </div>
	    
	    <div class="form-floating">
	      <input type="password" class="form-control" id="pw" name="pw" placeholder="Password">
	      <label for="floatingPassword">Password</label>
	    </div>
	    
	    <div class="form-floating">
	      <input type="text" class="form-control" id="id" name="Uid" placeholder="이름를 입력해 주세요">
	      <!-- jsp에서 Uid를 안던지고 있었음 꼭확인! -->
	      <label for="floatingInput">이름을 입력해 주세요</label>
	   	</div>
	    

	    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
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
