<?php 

include 'models/databaseModel.php';

$headNews = getLatestArticle();

include 'views/home.phtml';