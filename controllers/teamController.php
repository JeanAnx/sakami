<?php 

include 'bootstrap.php';

$database = new database();
$players = $database->getPlayers();

include 'views/teamView.phtml';

