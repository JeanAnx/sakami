<?php

class dataBase {

	public function openDatabase() {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=localhost;dbname=sakami' , $user , $pass);
		$db->exec('SET NAMES UTF8');

	}

	public function getPlayers() {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=localhost;dbname=sakami' , $user , $pass);
		$db->exec('SET NAMES UTF8');

		$sql = "SELECT * FROM players";

		$statement = $db->query($sql, \PDO::FETCH_ASSOC);

		$players = [];

		foreach ($statement as $row) {
			$players[] = $row;
		}

		return $players;

	}

	public function getArticles() {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=localhost;dbname=sakami' , $user , $pass);
		$db->exec('SET NAMES UTF8');

		$sql = "SELECT * FROM articles";

		$statement = $db->query($sql, \PDO::FETCH_ASSOC);

		$articles = [];

		foreach ($statement as $row) {
			$articles[] = $row;
		}

		return $articles;


	}

}