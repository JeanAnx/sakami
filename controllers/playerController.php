<?php 

require_once 'models/databaseModel.php';

$playerId = $_GET['id'];

$thePlayer = getPlayerById($playerId);

include 'views/playerView.phtml';
