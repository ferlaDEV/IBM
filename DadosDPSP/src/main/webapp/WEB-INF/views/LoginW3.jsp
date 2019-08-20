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
	<link rel="stylesheet" href="css/styleLogin.css">

    <title>Login</title>
</head>
<body>

	<div class="container">
		<br><br><br><br><br><br>
		 <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
  			<div class="alert alert-danger" role="alert">
    			<c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
    			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    				<span aria-hidden="true">&times;</span>
  				</button>
  			</div>
		</c:if>
		<br><br><br><br><br>
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4">
				<div class="login">
 					<form class="form-signin" action="/AuthW3" method="POST">
<!-- 						<a href="https://us-south.appid.cloud.ibm.com/oauth/v4/9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68/authorization?client_id=5f79b33f-41aa-4c0b-8638-054c46439673&tenantId=9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68&scope=openid&redirect_uri=https://dpspteam.mybluemix.net/AuthW3&response_type=code"><button type="button" class="btn btn-outline-primary btn-lg btn-block">Logar com w3</button></a> -->
						<a href="https://us-south.appid.cloud.ibm.com/oauth/v4/afd561bf-ab79-4867-a98b-511e2e5ad41d/authorization?client_id=9582ffdf-1331-4e2b-907f-c381883d8e35&tenantId=afd561bf-ab79-4867-a98b-511e2e5ad41d&scope=openid&redirect_uri=https://dpspteam.mybluemix.net/AuthW3&response_type=code"><button type="button" class="btn btn-outline-primary btn-lg btn-block">Logar com w3</button></a>
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

</body>
</html>