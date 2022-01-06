-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db:3306
-- Généré le : ven. 17 sep. 2021 à 13:27
-- Version du serveur : 10.6.4-MariaDB-1:10.6.4+maria~focal
-- Version de PHP : 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `app_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `camionneurs`
--

CREATE TABLE `camionneurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `camionneurs`
--

INSERT INTO `camionneurs` (`id`, `nom`, `prenom`, `mdp`, `createdAt`, `updatedAt`) VALUES
(1, 'Chadli', 'Adel', 'motdepasse', '2021-09-17 13:12:38', '2021-09-17 13:12:38'),
(2, 'McDoom', 'Cantin', 'motdepasse', '2021-09-17 13:12:38', '2021-09-17 13:12:38'),
(3, 'McDo', 'Joris', 'motdepasse', '2021-09-17 13:12:38', '2021-09-17 13:12:38');

-- --------------------------------------------------------

--
-- Structure de la table `camions`
--

CREATE TABLE `camions` (
  `id` int(11) NOT NULL,
  `immatriculation` varchar(9) DEFAULT NULL,
  `poidsMax` int(5) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `camions`
--

INSERT INTO `camions` (`id`, `immatriculation`, `poidsMax`, `createdAt`, `updatedAt`) VALUES
(1, 'BG-213-XD', 3500, '2021-09-17 13:14:53', '2021-09-17 13:14:53'),
(2, 'GG-666-OK', 3500, '2021-09-17 13:14:53', '2021-09-17 13:14:53'),
(3, 'TG-213-AK', 3500, '2021-09-17 13:14:53', '2021-09-17 13:14:53');

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `arrive` datetime DEFAULT NULL,
  `depart` datetime DEFAULT NULL,
  `nbPoulet` int(4) DEFAULT NULL,
  `vide` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idCamionneur` int(11) DEFAULT NULL,
  `idCamion` int(11) DEFAULT NULL,
  `idEntrepotDepart` int(11) DEFAULT NULL,
  `idEntrepotArrive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `arrive`, `depart`, `nbPoulet`, `vide`, `createdAt`, `updatedAt`, `idCamionneur`, `idCamion`, `idEntrepotDepart`, `idEntrepotArrive`) VALUES
(1, '2021-09-17 13:23:29', '2021-09-17 13:23:29', 0, 1, '2021-09-17 13:23:29', '2021-09-17 13:23:29', 1, 1, 1, 2),
(2, '2021-09-17 13:23:29', '2021-09-17 13:23:29', 500, 0, '2021-09-17 13:23:29', '2021-09-17 13:23:29', 2, 2, 2, 1),
(3, '2021-09-17 13:23:29', '2021-09-17 13:23:29', 100, 0, '2021-09-17 13:23:29', '2021-09-17 13:23:29', 3, 3, 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `entrepots`
--

CREATE TABLE `entrepots` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `ville` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entrepots`
--

INSERT INTO `entrepots` (`id`, `nom`, `ville`, `createdAt`, `updatedAt`) VALUES
(1, 'Amazon', 'LeBlanc-Mesnil', '2021-09-17 13:18:08', '2021-09-17 13:18:08'),
(2, 'Carrefour', 'Rueil-Malmaison', '2021-09-17 13:18:08', '2021-09-17 13:18:08'),
(3, 'Leroy Merlin', 'Brunoy', '2021-09-17 13:18:08', '2021-09-17 13:18:08');

-- --------------------------------------------------------

--
-- Structure de la table `temperatures`
--

CREATE TABLE `temperatures` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `temperature` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `idCourse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `temperatures`
--

INSERT INTO `temperatures` (`id`, `date`, `temperature`, `createdAt`, `updatedAt`, `idCourse`) VALUES
(1, '2021-09-17 13:25:28', '1', '2021-09-17 13:25:28', '2021-09-17 13:25:28', 1),
(2, '2021-09-17 13:25:28', '3', '2021-09-17 13:25:28', '2021-09-17 13:25:28', 2),
(3, '2021-09-17 13:25:28', '2', '2021-09-17 13:25:28', '2021-09-17 13:25:28', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `camionneurs`
--
ALTER TABLE `camionneurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `camions`
--
ALTER TABLE `camions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCamionneur` (`idCamionneur`),
  ADD KEY `idCamion` (`idCamion`),
  ADD KEY `idEntrepotDepart` (`idEntrepotDepart`),
  ADD KEY `idEntrepotArrive` (`idEntrepotArrive`);

--
-- Index pour la table `entrepots`
--
ALTER TABLE `entrepots`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temperatures`
--
ALTER TABLE `temperatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCourse` (`idCourse`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `camionneurs`
--
ALTER TABLE `camionneurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `camions`
--
ALTER TABLE `camions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `entrepots`
--
ALTER TABLE `entrepots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `temperatures`
--
ALTER TABLE `temperatures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`idCamionneur`) REFERENCES `camionneurs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`idCamion`) REFERENCES `camions` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_3` FOREIGN KEY (`idEntrepotDepart`) REFERENCES `entrepots` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_ibfk_4` FOREIGN KEY (`idEntrepotArrive`) REFERENCES `entrepots` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `temperatures`
--
ALTER TABLE `temperatures`
  ADD CONSTRAINT `temperatures_ibfk_1` FOREIGN KEY (`idCourse`) REFERENCES `courses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
