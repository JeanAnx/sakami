<?php

class dataBase {


	private function openDatabase() {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=loupsdesgh798.mysql.db;dbname=loupsdesgh798' , $user , $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		$db->exec('SET NAMES UTF8');

	}

	public function getPlayers() {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=localhost;dbname=loupsdesgh798' , $user , $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		$db->exec('SET NAMES UTF8');

		$sql = "SELECT * FROM players";

		$statement = $db->query($sql, \PDO::FETCH_ASSOC);

		$players = [];

		foreach ($statement as $row) {
			$players[] = $row;
		}

		return $players;

	}

	public function getPlayerById($playerId) {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=localhost;dbname=loupsdesgh798' , $user , $pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		$db->exec('SET NAMES UTF8');

		$sql = "SELECT * FROM players WHERE `id` = '$playerId'";

		$statement = $db->query($sql, \PDO::FETCH_ASSOC);

		foreach ($statement as $row) {
			$thePlayer = $row;
		}

		return $thePlayer;

	}

	public function getArticles() {

		$user = 'root';
		$pass = 'm12gi8gefxJWJRGs';
		$db = new PDO('mysql:host=localhost;dbname=loupsdesgh798' , $user , $pass);
		$db->exec('SET NAMES UTF8');

		$sql = "SELECT * FROM articles ORDER BY `created_at` DESC";

		$statement = $db->query($sql, \PDO::FETCH_ASSOC);

		$articles = [];

		foreach ($statement as $row) {
			$articles[] = $row;
		}

		return $articles;


	}

}