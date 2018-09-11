<?php 

require_once 'models/databaseModel.php';

$playerId = $_GET['id'];

$dataBase = new dataBase();
$thePlayer = $dataBase->getPlayerById($playerId);


include 'views/playerView.phtml';
