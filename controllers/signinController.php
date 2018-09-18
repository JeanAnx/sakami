<?php 

include './models/databaseModel.php';

$newUser = [

	'firstname' => $_POST['firstname'],
	'lastname' => $_POST['lastname'],
	'email' => $_POST['email'],
	'birthdate' => $_POST['birthdate'],
	'address' => $_POST['address'],
	'zipCode' => $_POST['zipCode'],
	'city' => $_POST['city'],
	'phone' => $_POST['phone'],
	'pseudo' => $_POST['pseudo'],
	'password' => $_POST['password'],
];

var_dump($newUser);

createUser($newUser);




