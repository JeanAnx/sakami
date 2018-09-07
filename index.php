<?php 

//On démarre la session
session_start();

require 'views/header.phtml';
 

//On inclut le contrôleur s'il existe et s'il est spécifié
if (!empty($_GET['page']) && is_file('controllers/'.$_GET['page'].'Controller.php'))
{
        include 'controllers/'.$_GET['page'].'Controller.php';
}

else

{
        include 'controllers/homeController.php';
}
  
require 'views/footer.phtml';
