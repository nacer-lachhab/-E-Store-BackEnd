-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 16 oct. 2022 à 15:40
-- Version du serveur : 5.5.62
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `estore_angular`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `code` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `promotion` bit(1) NOT NULL,
  `qte` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`code`, `name`, `price`, `promotion`, `qte`) VALUES
(0x07a155ea9e8e4540ad57fd8676e73542, 'stylo', 25, b'1', 80),
(0x1062d80e8ef2425dab39e8a49b910885, 'kitman', 300, b'1', 150),
(0x127f303b325a4cd0bcf9c2ed8a2b1cc5, 'pc hp', 6500, b'1', 0),
(0x1c8bdea315f3492aa5062c94004ce943, 'braslets', 10, b'0', 15000),
(0x30d4064db88642fa8682ed56f173e470, 'chasette', 10, b'0', 1500),
(0x360a42fe7c23453c962c130f6148306d, 'briquet', 2, b'0', 800),
(0x36c82e2912654ace9c8a948284485a0e, 'montre', 225, b'1', 80),
(0x38206cc207474ff890d4401614d64aa1, 'lunette', 30, b'1', 150),
(0x4baa10440b5f4f5591e42aec3f543856, 'printer', 1500, b'1', 0),
(0x596efe7c7ed64b6d83942e707edbee01, 'bague', 15, b'0', 15000),
(0x6f8d6f507b0243449407745a07cd9316, 'spadrille', 22, b'1', 550),
(0x719359017f92402598476d656cda25f4, 'pc dell', 6000, b'0', 0),
(0x79bc105ff4094285bb514fc852202387, 'decor', 50, b'1', 190),
(0x88e53965c5554d44a6c29e13fa5d0b58, 'frfara', 100, b'1', 80),
(0x9d79aa2db7d14704902e2da71523cc07, 'pc azus', 6300, b'1', 0),
(0x9fb0d066ea774330841a4fcedb4452e8, 'kamija', 156666, b'0', 550),
(0xac69bc2a9cf74c96b53d0703132653fa, 'sachets', 1, b'0', 15000),
(0xb83d4f806a344ac594ac88d7d5c8ff03, 'chemise', 269, b'1', 550),
(0xb8b17239ca1c454f88fba9a0c6cf7e5c, 'livres', 225, b'1', 50),
(0xb9dae9661b134bb5a91b284556329e1e, 'smart phone', 5500, b'0', 0),
(0xbb514b1f4dd24652b006df31eb01c41b, 'frigo', 15600, b'1', 90),
(0xcb4a0fee6a0948bcafe55cac3c015603, 'radio', 150, b'1', 190),
(0xf869c2dabe3f4ca7b3d41748da5bffb1, 'chams', 69, b'1', 550);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
