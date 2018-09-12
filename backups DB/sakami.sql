-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 12 sep. 2018 à 10:25
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sakami`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `subtitle`, `content`, `picture`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Coach Galvez \"très satisfait\" du recrutement', 'L\'entraîneur des Loups de Sakami fait le point sur l\'intersaison et les recrues venues renforcer l\'équipe', '\"Je trouve que nous avons fait du très bon boulot durant l\'intersaison. Après une saison satisfaisante, nous voulions renforcer notamment le secteur offensif. Avec les arrivées de Nicolas Amina et de Laurent Cherec, nos lignes offensives ont gagné en puissance. Cela devrait nous aider dans nos objectifs et notamment pour la qualification en playoffs\". ', 'https://image.noelshack.com/fichiers/2018/33/4/1534428010-1.jpg', 'Jean Annaix', '2018-08-16 09:18:11.000000', '2018-08-16 15:28:16.000000'),
(2, 'Les Loups reprennent le chemin de l\'entraînement', 'Après une terme bien méritée, les joueurs de Fabien Galvez sont de retour sur la glace', 'Tous les joueurs étaient présents pour la reprise, ce mardi. Aucun blessé n\'est à déplorer, alors que la saison débutera officiellement dans un mois. Toutes les recrues étaient aux côtés de Galvez pour découvrir les infrastructures et échanger avec leurs nouveaux coéquipiers.', 'https://image.noelshack.com/fichiers/2018/33/4/1534428015-2.jpg', 'Jean Annaix', '2018-08-17 11:21:15.000000', '2018-08-17 13:20:07.000000'),
(3, 'Alex Tremblay : \"On joue tous les matchs pour les gagner\"', 'Le défenseur des Loups de Sakami dévoile ses ambitions pour la saison qui s\'annonce', '\"C\'est très simple, il va falloir jouer chaque match pour le gagner\" : Alex Tremblay affiche la couleur pour cette nouvelle saison avec les Loups de Sakami. De là à penser que les Loups remporteront tous leurs matchs, il n\'y a qu\'un pas que nous ne franchirons pas. ', 'https://image.noelshack.com/fichiers/2018/33/4/1534428460-3.jpg', 'Jean Annaix', '2018-08-16 00:00:00.000000', '2018-08-16 00:00:00.000000'),
(4, 'Le programme de la pré-saison dévoilé !', 'Demandez le programme des matchs amicaux des Loups', 'Les rouge et bleu débuteront leur préparation par une opposition avec Saint-James. Ce seront ensuite les Buffles de Selaki qui s\'inviteront sur la glace des Loups. Enfin, le dernier match sera joué à Tetchiwan, face aux Castors.', 'https://image.noelshack.com/fichiers/2018/33/4/1534429742-4.jpg', 'Jean Annaix', '2018-08-17 12:00:00.000000', NULL),
(5, 'Nicolas Amina : \"hâte de débuter sous mon nouveau maillot\"', 'Transfuge de Saint-Pierre, l\'ailier espère réussir ses débuts avec les Loups de Sakami.', 'La mine réjouie, Nicolas Amina a pris part à son premier entraînement avec sa nouvelle équipe : \"j\'ai beaucoup aimé le discours du coach lorsque je l\'ai rencontré. Il m\'a parlé de hockey sur glace comme rarement un entraîneur ne l\'avait fait. Il m\'a vraiment convaincu d\'enfiler le chandail des Loups de Sakami\".', 'https://image.noelshack.com/fichiers/2018/33/4/1534429912-5.jpg', 'Jean Annaix', '2018-08-18 11:00:00.000000', NULL),
(6, 'Tristan Lespérance incertain pour le début de saison ? ', 'Le centre s\'est blessé légèrement à l\'épaule. ', 'Tristan Lespérance a dû écourter son entraînement aujourd\'hui. Une blessure a priori sans gravité mais qui pourrait le tenir absent de la glace pendant une à deux semaines. Le médecin du club évoque une légère luxation de l\'épaule droite. Lespérance devrait passer des examens complémentaires cette semaine pour en savoir plus sur la durée de son indisponibilité.', 'https://image.noelshack.com/fichiers/2018/33/4/1534430242-6.jpg', 'Jean Annaix', '2018-08-19 14:00:00.000000', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL DEFAULT 'https://sortitoutsi.net/uploads/face/90049267.png',
  `birthday` date DEFAULT NULL,
  `hand` varchar(255) NOT NULL,
  `height` float(10,2) NOT NULL,
  `weight` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `players`
--

INSERT INTO `players` (`id`, `firstname`, `lastname`, `position`, `picture`, `birthday`, `hand`, `height`, `weight`) VALUES
(1, 'Jean', 'Dubois', 'Gardien', 'https://sortitoutsi.net/uploads/face/90049267.png', '1986-03-14', 'Gaucher', 1.85, 78),
(2, 'Max', 'Desrosiers', 'Défenseur', 'https://sortitoutsi.net/uploads/face/90049267.png', '1988-04-28', 'Droitier', 2.01, 99),
(3, 'Antoine', 'Pacher', 'Défenseur', 'https://sortitoutsi.net/uploads/face/90049267.png', '1989-08-05', 'Gaucher', 1.88, 102),
(4, 'Alex', 'Tremblay', 'Défenseur', 'https://sortitoutsi.net/uploads/face/90049267.png', '1978-06-02', 'Droitier', 1.99, 106),
(5, 'John', 'Marshall', 'Défenseur', 'https://sortitoutsi.net/uploads/face/90049267.png', '1988-01-03', 'Droitier', 2.02, 99),
(6, 'Nicolas', 'Amina', 'Ailier', 'https://sortitoutsi.net/uploads/face/90049267.png', '1990-09-15', 'Droitier', 1.78, 85),
(7, 'Laurent', 'Cherec', 'Ailier', 'https://sortitoutsi.net/uploads/face/90049267.png', '1977-11-26', 'Gaucher', 1.82, 76),
(8, 'Tom', 'Hirieka', 'Gardien', 'https://sortitoutsi.net/uploads/face/90049267.png', '1986-04-21', 'Gaucher', 1.90, 95),
(9, 'Bertrand', 'Lejeune', 'Ailier', 'https://sortitoutsi.net/uploads/face/90049267.png', '1984-03-30', 'Droitier', 1.79, 74),
(10, 'Gilles', 'Forêt', 'Ailier', 'https://sortitoutsi.net/uploads/face/90049267.png', '1986-05-09', 'Droitier', 1.91, 70),
(11, 'Clovis', 'Jacquard', 'Centre', 'https://sortitoutsi.net/uploads/face/90049267.png', '1975-12-05', 'Gaucher', 1.92, 91),
(12, 'Tristan', 'Lespérance', 'Centre', 'https://sortitoutsi.net/uploads/face/90049267.png', '1972-09-21', 'Droitier', 1.75, 80),
(13, 'Fabien', 'Galvez', 'Entraîneur', 'https://sortitoutsi.net/uploads/face/90049267.png', '1987-10-08', 'Gaucher', 1.72, 65);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
