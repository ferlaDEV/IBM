<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<link rel="icon" type="imagem/png" href="/img/favicon.ico" />
	
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/styleLoginPacheco.css">

    <title>Login</title>
    
        	<style>
		#loading {
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 100;
  width: 100vw;
  height: 100vh;
/*   background-color: rgba(192, 192, 192, 0.5); */
  background-image: url("/img/loading.gif");
  background-repeat: no-repeat;
  background-position: center;
}
	</style>
</head>
<body>

	<div class="container">
		<br><br><br><br><br><br><br><br><br><br><br>
		<div class="row">
			<div id="loading"></div>
			<div class="col-4"></div>
			<div class="col-4">
				<div class="login" style="visibility: hidden">
 					<form class="form-signin" id="logform" action="/Post" method="post">
  						<input type="hidden" id="username" name="username" value="${user._id }"> 
  						<input type="hidden" id="password" name="password" value="${user.pass }">
 						<button type="submit" style="visibility: hidden" class="btn btn-outline-primary btn-lg btn-block">Logar com w3</button>
					</form> 
				</div>
			</div>
			<div class="col-4"></div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js" ></script>
<!-- 	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function(){
		var username = $('#username').val();
		if(username.length > 0){
		$('#logform').submit();
		}
		$(document).ajaxStart(function(){
		      $("#wait").css("display", "block");
		    });
		    $(document).ajaxComplete(function(){
		      $("#wait").css("display", "none");
		    });
		    $("button").click(function(){
		      $("#txt").load("demo_ajax_load.asp");
		    });
		});
	</script>

</body>
</html>