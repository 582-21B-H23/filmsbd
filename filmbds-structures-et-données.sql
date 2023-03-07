-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 09 déc. 2019 à 16:43
-- Version du serveur :  5.7.17
-- Version de PHP :  7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `filmsbd`
--
CREATE DATABASE IF NOT EXISTS `filmsbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `filmsbd`;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` mediumint(9) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `annee` year(4) NOT NULL,
  `duree` smallint(6) NOT NULL DEFAULT '90' COMMENT 'Durée en minutes',
  `synopis` mediumtext CHARACTER SET utf8mb4,
  `pays_id` tinyint(4) DEFAULT NULL COMMENT 'Pays de production principal du film',
  `genre_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `annee`, `duree`, `synopis`, `pays_id`, `genre_id`) VALUES
(1, 'No Country for Old Men', 2007, 122, 'A la frontière qui sépare le Texas du Mexique, les trafiquants de drogue ont depuis longtemps remplacé les voleurs de bétail. Lorsque Llewelyn Moss tombe sur une camionnette abandonnée, cernée de cadavres ensanglantés, il ne sait rien de ce qui a conduit à ce drame. Et quand il prend les deux millions de dollars qu\'il découvre à l\'intérieur du véhicule, il n\'a pas la moindre idée de ce que cela va provoquer...', 6, 2),
(2, 'La voie lactée', 1969, 98, 'Six mystères ou dogmes du catholicisme sont illustrés à travers deux vagabonds, Pierre et Jean, qui pour se faire un peu d\'argent se rendent à Saint-Jacques-de-Compostelle.', 1, 1),
(3, 'Barry Lyndon', 1975, 184, 'Au XVIIIe siècle en Irlande, à la mort de son père, le jeune Redmond Barry ambitionne de monter dans l\'échelle sociale. Il élimine en duel son rival,un officier britannique amoureux de sa cousine mais est ensuite contraint à l\'exil. Il s\'engage dans l\'armée britannique et part combattre sur le continent européen. Il déserte bientôt et rejoint l\'armée prussienne des soldats de Frederic II afin d\'échapper à la peine de mort. Envoyé en mission, il doit espionner un noble joueur, mène un double-jeu et se retrouve sous la protection de ce dernier. Introduit dans la haute société européenne, il parvient à devenir l\'amant d\'une riche et magnifique jeune femme, Lady Lyndon. Prenant connaissance de l\'adultère, son vieil époux sombre dans la dépression et meurt de dépit. Redmond Barry épouse Lady Lyndon et devient Barry Lyndon...', 9, 2),
(4, 'Il mio nome è Nessuno', 1973, 116, 'Jack Beauregard, légende de l\'Ouest, désire mettre un terme à sa carrière de pistolero et envisage de s\'embarquer pour l\'Europe. Mais un jeune admirateur, affirmant s\'appeler Personne, ne l\'entend pas de cette oreille. Il veut faire entrer Beauregard dans l\'Histoire en l\'amenant à combattre la Horde sauvage.', 10, 3),
(7, 'Au hasard Balthazar', 1966, 95, 'La vie de l\'âne Balthazar, plongé au milieu des drames humains et qui en meurt. \"Je voulais que l\'âne traverse un certain nombre de groupes humains qui représentent les vices de l\'humanité. Il fallait aussi, étant donné que la vie d\'un âne est très égale, très sereine, trouver un mouvement, une montée dramatique. C\'est à ce moment que j\'ai pensé à une fille, à la fille qui se perd.\"', 1, 2),
(8, '2001: A Space Odyssey', 1968, 149, 'A l\'aube de l\'Humanité, dans le désert africain, une tribu de primates subit les assauts répétés d\'une bande rivale, qui lui dispute un point d\'eau. La découverte d\'un monolithe noir inspire au chef des singes assiégés un geste inédit et décisif. Brandissant un os, il passe à l\'attaque et massacre ses adversaires. Le premier instrument est né.\r\nEn 2001, quatre millions d\'années plus tard, un vaisseau spatial évolue en orbite lunaire au rythme langoureux du \"Beau Danube Bleu\". A son bord, le Dr. Heywood Floyd enquête secrètement sur la découverte d\'un monolithe noir qui émet d\'étranges signaux vers Jupiter.', 9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `film_personne_metier`
--

CREATE TABLE `film_personne_metier` (
  `id` int(11) NOT NULL,
  `caractere` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'Nom du caractère joué par l''acteur ou l''actrice s''il y a lie',
  `personne_id` mediumint(9) DEFAULT NULL,
  `film_id` mediumint(9) DEFAULT NULL,
  `metier_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `film_personne_metier`
--

INSERT INTO `film_personne_metier` (`id`, `caractere`, `personne_id`, `film_id`, `metier_id`) VALUES
(1, NULL, 11, 1, 1),
(2, NULL, 12, 1, 1),
(3, NULL, 13, 4, 1),
(4, 'Ed Tom Bell', 14, 1, 4),
(5, 'Carla Jean Moss', 15, 1, 4),
(6, NULL, 16, 2, 1),
(7, NULL, 17, 2, 3),
(8, 'La vierge Marie', 18, 2, 4),
(9, 'Le marquis de Sade', 19, 2, 4),
(10, NULL, 20, 3, 1),
(11, NULL, 20, 8, 1),
(12, NULL, 21, 4, 3),
(13, 'Nessuno', 22, 4, 4),
(14, NULL, 23, 7, 1),
(15, 'Dr. Dave Bowman', 24, 8, 4),
(16, 'Elena', 25, 8, 4);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` tinyint(4) NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `titre`, `description`) VALUES
(1, 'Comédie', NULL),
(2, 'Drame', NULL),
(3, 'Western', NULL),
(4, 'Thriller', NULL),
(5, 'Film d\'action', NULL),
(6, 'Film fantastique', NULL),
(7, 'Science-fiction', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `metier`
--

CREATE TABLE `metier` (
  `id` tinyint(4) NOT NULL,
  `titre` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `metier`
--

INSERT INTO `metier` (`id`, `titre`) VALUES
(4, 'Acteur'),
(10, 'Assistant photo'),
(8, 'Caméraman'),
(9, 'Directeur photo'),
(6, 'Ingénieur son'),
(1, 'Metteur en scène'),
(7, 'Monteur'),
(2, 'Producteur'),
(3, 'Scénariste'),
(5, 'Soi-même');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` tinyint(4) NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `continent` enum('Amérique du Nord','Amérique du Sud','Antarctique','Asie','Europe','Afrique','Océanie') CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`, `continent`) VALUES
(12, 'Afrique du Sud', 'Afrique'),
(5, 'Allemagne', 'Europe'),
(2, 'Canada', 'Amérique du Nord'),
(7, 'Égypte', 'Afrique'),
(4, 'Espagne', 'Europe'),
(6, 'États-Unis d\'Amérique', 'Amérique du Nord'),
(1, 'France', 'Europe'),
(10, 'Italie', 'Europe'),
(8, 'Japon', 'Asie'),
(3, 'Mexique', 'Amérique du Sud'),
(9, 'Royaume-Uni', 'Europe'),
(11, 'Sénégal', 'Afrique');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` mediumint(9) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `sexe` enum('M','F') CHARACTER SET utf8mb4 DEFAULT NULL,
  `ddn` date DEFAULT NULL,
  `pays_id` tinyint(4) DEFAULT NULL COMMENT 'Pays de nationalité de la personne.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `sexe`, `ddn`, `pays_id`) VALUES
(11, 'Coen', 'Ethan', 'M', '1957-09-21', 6),
(12, 'Coen', 'Joel', 'M', '1954-11-19', 6),
(13, 'Valerii', 'Tonino ', 'M', '1934-05-20', 10),
(14, 'Jones', 'Tommy Lee', 'M', '1946-09-15', 6),
(15, 'Macdonald', 'Kelly', 'F', '1976-02-23', 9),
(16, 'Buñuel', 'Luis', 'M', '1900-02-22', 4),
(17, 'Carrière', 'Jean-Claude', 'M', '1931-09-18', 1),
(18, 'Scob', 'Edith', 'F', '1937-10-21', 1),
(19, 'Piccoli', 'Michel', 'M', '1925-12-27', 1),
(20, 'Kubrick', 'Stanley', 'M', '1928-07-26', 9),
(21, 'Leone ', 'Sergio', 'M', '1929-01-03', 10),
(22, 'Hill', 'Terence', 'M', '1939-05-29', 10),
(23, 'Bresson', 'Robert', 'M', '1901-09-25', 1),
(24, 'Dullea', 'Keir', 'M', '1936-05-30', 6),
(25, 'Tyzack', 'Margaret', 'F', '1931-09-09', 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_id` (`pays_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Index pour la table `film_personne_metier`
--
ALTER TABLE `film_personne_metier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caractere` (`caractere`,`film_id`,`personne_id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `personne_id` (`personne_id`),
  ADD KEY `metier_id` (`metier_id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `metier`
--
ALTER TABLE `metier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`,`continent`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_id` (`pays_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `film_personne_metier`
--
ALTER TABLE `film_personne_metier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `metier`
--
ALTER TABLE `metier`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Contraintes pour la table `film_personne_metier`
--
ALTER TABLE `film_personne_metier`
  ADD CONSTRAINT `film_personne_metier_ibfk_1` FOREIGN KEY (`personne_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `film_personne_metier_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `film_personne_metier_ibfk_3` FOREIGN KEY (`metier_id`) REFERENCES `metier` (`id`);

--
-- Contraintes pour la table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `personne_ibfk_1` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
