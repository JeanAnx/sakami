<?php 

require 'models/databaseModel.php';

var_dump($_POST);

$theFan = getUserByEmail($_POST['email']);
$_SESSION = $theFan;

var_dump($_SESSION);

if (!empty($theFan)) {

	echo '<div class="alert alert-success" role="alert">
	  Vous êtes bien connecté(e) !
	</div>';

	} else {

		echo '<div class="alert alert-danger" role="alert">
	  La connexion a échoué !
	</div>';
	}


