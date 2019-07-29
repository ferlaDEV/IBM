<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/styleLogin.css">

    <title>Login</title>
</head>
<body>

	<div class="container">
		<br><br><br><br><br><br><br><br><br><br><br>
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div class="login">
 					<form action="/Entrar" method="POST">
 						<input type="hidden" id="code" name="user" value="ferla" >
 						<input type="hidden" id="code" name="password" value="9720" >
						<button type="submit" class="btn btn-outline-primary btn-lg btn-block">Logar com w3</button>
					</form> 
				</div>
			</div>
			<div class="col-4"></div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>