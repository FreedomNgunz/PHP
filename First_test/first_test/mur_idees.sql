-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 20 mars 2018 à 23:24
-- Version du serveur :  10.1.29-MariaDB
-- Version de PHP :  7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mur_idees`
--

-- --------------------------------------------------------

--
-- Structure de la table `aime`
--

CREATE TABLE `aime` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `id_idee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aime`
--

INSERT INTO `aime` (`id`, `iduser`, `id_idee`) VALUES
(1, 3, 3),
(2, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `nom`, `email`, `pwd`) VALUES
(3, 'Freedom', 'free@gmail.com', '1234'),
(5, 'Future', 'Future@gmail.com', '12345'),
(7, 'King', 'king@gmail.com', '123'),
(9, 'Queen', 'Queen@gmail.com', '0000'),
(10, 'BadBitch', 'bad@gmail.com', '2222'),
(11, 'badboy', 'badboy@gmail.com', '1111');

-- --------------------------------------------------------

--
-- Structure de la table `idee`
--

CREATE TABLE `idee` (
  `id` int(11) NOT NULL,
  `idcompte` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `idee`
--

INSERT INTO `idee` (`id`, `idcompte`, `message`, `date`) VALUES
(3, 3, 'Blablablabal', '2018-03-16 09:29:04'),
(4, 3, 'eh bah on es ou la?', '2018-03-16 09:29:37'),
(5, 5, 'wtf!!! ce quoi le blem', '2018-03-16 09:30:40'),
(6, 7, 'be the best', '2018-03-16 09:41:05'),
(7, 3, 'je pense que les sont insensÃ©es de croire qu\'elles sont Ã©gales a l\'homme, elles sont plus superieures et l\'ont toujour Ã©tÃ©.', '2018-03-16 09:46:15'),
(8, 5, 'Quand les bandits sont au pouvoir, la place d\'un honnÃªte Homme est en prison.', '2018-03-16 09:49:06'),
(9, 10, 'si je pouvais lire dans les pensÃ©e des homme sa serai plus facile de savoir qui es en feux inutile de te faire un dessin mutshatsha!!!!!!!! ', '2018-03-16 10:04:18'),
(10, 9, 'je veux un homme qui prendra soin de moi riche ou pauvre ! ce la richesse du cÅ“ur que je cherche', '2018-03-16 10:09:15'),
(11, 11, 'je suis pas bon en code lol', '2018-03-16 10:11:46');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aime`
--
ALTER TABLE `aime`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`,`email`);

--
-- Index pour la table `idee`
--
ALTER TABLE `idee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aime`
--
ALTER TABLE `aime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `idee`
--
ALTER TABLE `idee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
