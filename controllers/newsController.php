<?php 

include 'bootstrap.php';

$dataBase = new dataBase();
$articles = $dataBase->getArticles();

include 'views/newsView.phtml';
