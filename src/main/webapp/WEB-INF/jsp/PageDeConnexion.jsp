<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Connexion</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">


</head>
<body>
	<div class="container">
		<form>
			<h1>ENI-Enchères</h1>
			<input type="email" placeholder="Email" required><br> <input
				type="password" placeholder="Mot de passe" required><br>
			<input type="button" value="Connexion"> <input
				type="checkbox" name="remember"> Se souvenir de moi<br>
			<a href="MotDePasseOublié">Mot de passe oublié</a>
		</form>
		<div>
			<a href="inscription"
				class="btn btn-outline-primary btn-block w-75 ml-5 mt-2 btn-xl">Créer
				un compte</a>

		</div>

		<div class="drop drop-1"></div>
		<div class="drop drop-2"></div>
		<div class="drop drop-3"></div>
		<div class="drop drop-4"></div>
		<div class="drop drop-5"></div>
	</div>
</body>
</html>