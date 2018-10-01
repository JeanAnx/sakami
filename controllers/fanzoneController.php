<?php 

require 'models/databaseModel.php';

if (!isset($_SESSION['id'])) {

	include 'views/loginView.phtml';

	} else {

		include 'views/profileView.phtml';
	}




