<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>ENI ENCHERES</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/main.css">
</head>

<body>
	<div id="body" class="mx-auto mt-5 ">

		<header id="header-connexion">
			<div class="text-right mr-2 mb-4 mt-1">
				<!-- options utilisateur -->
				<a href="inscription">S'inscrire</a> | <a href="Connexion">Se
					connecter</a>
			</div>

			<h1>ENI-ENCHERES</h1>
			<br>
			<br>

			<div>
				<h4>Bienvenue sur notre site d'enchères en ligne !</h4>
				<h5>Connectez-vous ou inscrivez-vous pour commencer à enchérir
					sur vos articles préférés.</h5>
			</div>

		</header>
		<main>
			<!-- création de la liste des enchères -->
		</main>
		<br>
		<br>
		<h5>Liste des enchères :</h5>
		<br>

		<div class="container">
			<div class="row mx-auto" id="row-categories">
				<div
					class="d-flex align-items-end mb-5 bd-highlight text-center w-100">
					<div class="flex-fill bd-highlight mx-1">
						<div class="form-group mb-0">
							<label for="category-select">Catégorie :</label> <select
								class="form-control" id="category-select">
								<option>Toutes</option>
								<option>Informatique</option>
								<option>Ameublement</option>
								<option>Vêtement</option>
								<option>Sport&Loisir</option>
							</select>
						</div>
					</div>
					<!-- Création de la barre de recherche avec bootstrap -->
					<div class="flex-fill bd-highlight mx-1">
						<div class="form-group mb-0">
							<label for="search-input">Rechercher :</label> <input type="text"
								class="form-control" id="search-input"
								placeholder="Le nom de l'article contient...">
						</div>
					</div>
					<div class="flex-fill bd-highlight mx-1">
						<button type="button" class="btn btn-primary btn-block">Rechercher</button>
					</div>
				</div>
			</div>

			<div class="d-flex justify-content-between">
				<!-- Insertion des images -->
				<div class="d-flex">
					<img src="images/pc.jpg" alt="Pc gamer pour travailler"
						width="150px">
					<p class="ml-2">
						<a href="#">Pc gamer pour travailler</a><br> Prix : 210
						points<br> Fin de l'enchère : 10/08/2018<br> Vendeur :
						Jojo44
					</p>

				</div>
				<div class="d-flex">
					<img src="images/rocket.jpg" alt="Rocket stove pour riz et pâtes"
						width="150px">
					<p class="ml-2">
						<a href="#">Rocket stove pour riz et pâtes</a><br> Prix : 185
						points<br> Fin de l'enchère : 10/08/2018<br> Vendeur :
						NineJea
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
<footer class="text-center mt-5 mb-2 w-100"> Copyright ENI -
	projet enchères </footer>
</html>