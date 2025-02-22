-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 nov. 2023 à 14:03
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `billet`
--

-- --------------------------------------------------------

--
-- Structure de la table `aeroport`
--

CREATE TABLE `aeroport` (
  `Id_aeroport` int(11) NOT NULL,
  `Nom_de_l_aéroport` varchar(50) DEFAULT NULL,
  `code_iata` varchar(50) DEFAULT NULL,
  `Id_Villes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aeroport`
--

INSERT INTO `aeroport` (`Id_aeroport`, `Nom_de_l_aéroport`, `code_iata`, `Id_Villes`) VALUES
(1, 'Aéroport John F. Kennedy', 'AA', 1),
(2, 'Aéroport international de Washington-Dulles', 'DL', 2),
(3, 'Aéroport dHeathrow', 'UA', 3),
(4, 'Aéroport Charles de Gaulle', 'BA', 4),
(5, 'Aeroport Berlin-Brandebourg', 'AF', 5),
(6, 'Aéroport international dAbou Dabi', 'LH', 6),
(7, 'Aéroport international de Hamad', 'EK', 7),
(8, 'Aéroport de Singapour Changi', 'QR', 8),
(9, 'Aéroport international de Hong Kong', 'SQ', 9),
(10, 'Aéroport de Canberra', 'CX', 10);

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `Id_Agences` int(11) NOT NULL,
  `Nom_de_l_agence` varchar(50) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Numéro_de_téléphone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`Id_Agences`, `Nom_de_l_agence`, `Adresse`, `Numéro_de_téléphone`) VALUES
(1, 'Agence paris', '35 jean moulin, Paris', 123),
(2, 'Agence Washington', '456 Elm Street, Washington', 234),
(3, 'Agence Londres', '789 Oak Street, Londres', 345);

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE `avion` (
  `Id_Avion` int(11) NOT NULL,
  `Numéro_d_identification` varchar(50) DEFAULT NULL,
  `Modèle_de_l_avion` varchar(50) NOT NULL,
  `Capacité` int(11) NOT NULL,
  `Modél_de_l_avion` varchar(50) DEFAULT NULL,
  `Id_Compagnier_a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`Id_Avion`, `Numéro_d_identification`, `Modèle_de_l_avion`, `Capacité`, `Modél_de_l_avion`, `Id_Compagnier_a`) VALUES
(1, 'ABC123', 'Boeing 897', 400, 'Boeing', 4),
(2, 'XYZ789', 'Airbus B340', 550, 'Airbus', 2),
(3, '123DEF', 'Boeing 769', 200, 'Boeing', 1),
(4, '456GHI', 'Airbus A314', 150, 'Airbus', 3),
(5, 'JKL321', 'Boeing 747', 300, 'Boeing', 5);

-- --------------------------------------------------------

--
-- Structure de la table `bagages`
--

CREATE TABLE `bagages` (
  `Id_Bagages` int(11) NOT NULL,
  `Numero_de_bagage` varchar(50) DEFAULT NULL,
  `poids` decimal(15,2) NOT NULL,
  `Id_Passagers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bagages`
--

INSERT INTO `bagages` (`Id_Bagages`, `Numero_de_bagage`, `poids`, `Id_Passagers`) VALUES
(1, 'BAG001', 15.50, 1),
(2, 'BAG002', 20.00, 2),
(3, 'BAG003', 10.20, 3),
(4, 'BAG004', 18.80, 4),
(5, 'BAG005', 0.00, 5),
(6, 'BAG006', 14.70, 6),
(7, 'BAG007', 22.10, 7),
(8, 'BAG008', 19.40, 8),
(9, 'BAG009', 16.00, 9),
(10, 'BAG010', 13.50, 10);

-- --------------------------------------------------------

--
-- Structure de la table `billet_de_réservation`
--

CREATE TABLE `billet_de_réservation` (
  `Id_Vols` int(11) NOT NULL,
  `Id_Classes1` int(11) NOT NULL,
  `Id_Passagers` int(11) NOT NULL,
  `Id_Facture` int(11) NOT NULL,
  `Id_Mode_de_paiement_` int(11) NOT NULL,
  `Numéro_de_réservation` varchar(50) DEFAULT NULL,
  `Siége` varchar(50) DEFAULT NULL,
  `Porte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `billet_de_réservation`
--

INSERT INTO `billet_de_réservation` (`Id_Vols`, `Id_Classes1`, `Id_Passagers`, `Id_Facture`, `Id_Mode_de_paiement_`, `Numéro_de_réservation`, `Siége`, `Porte`) VALUES
(1, 2, 10, 10, 2, 'RES010', 'Siège 10J', '1H'),
(1, 3, 1, 1, 1, 'RES001', 'Siège 1A', '1A'),
(1, 3, 2, 2, 3, 'RES002', 'Siège 2B', '2B'),
(2, 3, 8, 8, 1, 'RES008', 'Siège 8H', '2T'),
(3, 1, 3, 3, 3, 'RES003', 'Siège 3C', '1K'),
(3, 1, 9, 9, 2, 'RES009', 'Siège 9I', '2G'),
(3, 2, 7, 7, 1, 'RES007', 'Siège 7G', '1Y'),
(4, 1, 4, 4, 1, 'RES004', 'Siège 4D', '2M'),
(4, 2, 6, 6, 2, 'RES006', 'Siège 6F', '1Z'),
(5, 1, 5, 5, 1, 'RES005', 'Siège 5E', '2P');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `Id_Classes1` int(11) NOT NULL,
  `Tarif` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`Id_Classes1`, `Tarif`) VALUES
(1, 12.00),
(2, 25.00),
(3, 65.00);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `Id_Clients` int(11) NOT NULL,
  `Nom_de_la_société` varchar(50) DEFAULT NULL,
  `Nom_` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Adresse_de_facturation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`Id_Clients`, `Nom_de_la_société`, `Nom_`, `Prenom`, `Adresse_de_facturation`) VALUES
(1, 'Nettoyeuk', 'Smith', 'John', '123 Company moulin, paris'),
(2, 'Infowor', 'Johnson', 'Mary', '456 Business Avenue, Washington'),
(3, 'Briclin', 'Brown', 'David', '789 Corporate Lane, Londres');

-- --------------------------------------------------------

--
-- Structure de la table `compagnier_a`
--

CREATE TABLE `compagnier_a` (
  `Id_Compagnier_a` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `Pays_d_origine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `compagnier_a`
--

INSERT INTO `compagnier_a` (`Id_Compagnier_a`, `nom`, `Pays_d_origine`) VALUES
(1, 'American Airlines', 'États-Unis'),
(2, 'Delta Air Lines', 'États-Unis'),
(3, 'United Airlines', 'États-Unis'),
(4, 'British Airways', 'Royaume-Uni'),
(5, 'Air France', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `Id_Facture` int(11) NOT NULL,
  `Numéro_de_facture` varchar(50) DEFAULT NULL,
  `Montant_total` decimal(15,2) NOT NULL,
  `Dates_d_émission` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`Id_Facture`, `Numéro_de_facture`, `Montant_total`, `Dates_d_émission`) VALUES
(1, 'FAC2023001', 500.00, '2023-11-08'),
(2, 'FAC2023002', 600.00, '2023-11-09'),
(3, 'FAC2023003', 750.00, '2023-11-15'),
(4, 'FAC2023004', 450.00, '2023-11-01'),
(5, 'FAC2023005', 700.00, '2023-11-19'),
(6, 'FAC2023006', 550.00, '2023-11-28'),
(7, 'FAC2023007', 800.00, '2023-11-02'),
(8, 'FAC2023008', 680.00, '2023-11-04'),
(9, 'FAC2023009', 720.00, '2023-11-24'),
(10, 'FAC2023010', 900.00, '2023-11-17');

-- --------------------------------------------------------

--
-- Structure de la table `gère`
--

CREATE TABLE `gère` (
  `Id_Facture` int(11) NOT NULL,
  `Id_Clients` int(11) NOT NULL,
  `Id_Agences` int(11) NOT NULL,
  `Numéro_du_document` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gère`
--

INSERT INTO `gère` (`Id_Facture`, `Id_Clients`, `Id_Agences`, `Numéro_du_document`) VALUES
(1, 1, 1, 101),
(2, 2, 2, 102),
(3, 3, 3, 103),
(4, 3, 1, 104),
(5, 1, 2, 105),
(6, 2, 1, 106),
(7, 2, 3, 107),
(8, 2, 3, 108),
(9, 1, 2, 109),
(10, 3, 1, 110);

-- --------------------------------------------------------

--
-- Structure de la table `mode_de_paiement_`
--

CREATE TABLE `mode_de_paiement_` (
  `Id_Mode_de_paiement_` int(11) NOT NULL,
  `MoDePaiment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mode_de_paiement_`
--

INSERT INTO `mode_de_paiement_` (`Id_Mode_de_paiement_`, `MoDePaiment`) VALUES
(1, 'CB'),
(2, 'ESPECE'),
(3, 'CHEQUE');

-- --------------------------------------------------------

--
-- Structure de la table `passagers`
--

CREATE TABLE `passagers` (
  `Id_Passagers` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prénom` varchar(50) NOT NULL,
  `Numéro_de_téléphone` bigint(20) DEFAULT NULL,
  `Adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `passagers`
--

INSERT INTO `passagers` (`Id_Passagers`, `Nom`, `Prénom`, `Numéro_de_téléphone`, `Adresse`) VALUES
(1, 'Doe', 'Jane', 1234567890, '123 Main Street, New York'),
(2, 'Smith', 'John', 2147483647, '456 Elm Street, Washington'),
(3, 'karim', 'Mary', 78949012, '789 Oak Street, Londres'),
(4, 'dlmi,', 'David', 7890123, '101 Maple Avenue, Paris'),
(5, 'klomp', 'Linda', 8901234, '202 Oak Lane, Berlin'),
(6, 'Martiez', 'Carlos', 9012345, '303 Pine Road, Abou Dabi'),
(7, 'slim', 'Wei', 7893456, '404 Cedar Street, Doha'),
(8, 'paul', 'Min-Ji', 1234567, '505 Redwood Lane, Singapour'),
(9, 'lampo', 'Rajesh', 2345678, '606 Birch Road, Hong Kong'),
(10, 'maurice', 'Seong-Ho', 123490, '707 Elm Street, Canberra');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `Id_Personnel` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prénom` varchar(50) NOT NULL,
  `Poste` varchar(50) NOT NULL,
  `Numéro_de_licence` decimal(15,2) DEFAULT NULL,
  `Expérience_en_heure_de_vol` int(11) NOT NULL,
  `Id_Compagnier_a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`Id_Personnel`, `Nom`, `Prénom`, `Poste`, `Numéro_de_licence`, `Expérience_en_heure_de_vol`, `Id_Compagnier_a`) VALUES
(1, 'Eljahi', 'Samir', 'Chef de cabine', 12345.67, 1000, 1),
(2, 'Martin', 'Bob', 'Agent de bord', 54321.67, 800, 1),
(3, 'Lefevre', 'Clara', 'Hôtesse', 98765.43, 1200, 1),
(4, 'Zoukchi', 'Zouhir', 'Pilote de ligne', 45678.90, 1500, 1),
(5, 'Dufour', 'Eva', 'Copilote', 56789.01, 1200, 1),
(6, 'Charpentier', 'Fiona', 'Chef de cabine', 22345.67, 1200, 2),
(7, 'Leroy', 'Gilles', 'Agent de bord', 64321.67, 1000, 2),
(8, 'Roux', 'Hélène', 'Hôtesse', 78765.43, 1500, 2),
(9, 'Tachrift', 'karim', 'Pilote de ligne', 35678.90, 1800, 2),
(10, 'Leclerc', 'Jasmine', 'Copilote', 46789.01, 1500, 2),
(11, 'Masgar', 'Widad', 'Chef de cabine', 32345.67, 800, 3),
(12, 'Perrin', 'Laura', 'Agent de bord', 74321.67, 1200, 3),
(13, 'Roy', 'Marianne', 'Hôtesse', 88765.43, 1000, 3),
(14, 'Bernard', 'Nicolas', 'Pilote de ligne', 25678.90, 1200, 3),
(15, 'Lemoine', 'Olivia', 'Copilote', 36789.01, 1000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `Id_Villes` int(11) NOT NULL,
  `Nom_de_la_ville` varchar(50) NOT NULL,
  `Code_postal` varchar(50) NOT NULL,
  `Pays` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`Id_Villes`, `Nom_de_la_ville`, `Code_postal`, `Pays`) VALUES
(1, 'New York', '10001', 'États-Unis'),
(2, 'Washington', '20001', 'États-Unis'),
(3, 'Londres', 'SW1A 1AA', 'Royaume-Uni'),
(4, 'Paris', '75001', 'France'),
(5, 'Berlin', '10117', 'Allemagne'),
(6, 'Abou Dabi', '00000', 'Émirats arabes unis'),
(7, 'Doha', '00000', 'Qatar'),
(8, 'Singapour', '178598', 'Singapour'),
(9, 'Hong Kong', '00000', 'Hong Kong'),
(10, 'Canberra', '2601', 'Australie');

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

CREATE TABLE `vols` (
  `Id_Vols` int(11) NOT NULL,
  `Numéro_de_vol` varchar(50) DEFAULT NULL,
  `Heure_de_départ` datetime NOT NULL,
  `Heure_d_arrivée` datetime NOT NULL,
  `tarif` decimal(15,2) NOT NULL,
  `Id_Personnel` int(11) NOT NULL,
  `Id_Personnel_1` int(11) NOT NULL,
  `Id_aeroport_départ` int(11) NOT NULL,
  `Id_aeroport_Arrive` int(11) NOT NULL,
  `Id_Avion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vols`
--

INSERT INTO `vols` (`Id_Vols`, `Numéro_de_vol`, `Heure_de_départ`, `Heure_d_arrivée`, `tarif`, `Id_Personnel`, `Id_Personnel_1`, `Id_aeroport_départ`, `Id_aeroport_Arrive`, `Id_Avion`) VALUES
(1, 'AJ4976', '2023-11-08 08:00:00', '2023-11-08 10:30:00', 500.00, 1, 2, 1, 2, 1),
(2, 'DL4359', '2023-04-09 09:30:00', '2023-04-09 12:00:00', 450.00, 3, 4, 3, 4, 2),
(3, 'UA8264', '2023-07-13 10:15:00', '2023-07-13 12:45:00', 550.00, 5, 6, 5, 6, 3),
(4, 'BA4027', '2023-01-15 11:00:00', '2023-01-15 13:30:00', 700.00, 7, 8, 7, 8, 4),
(5, 'AF5689', '2023-02-08 12:30:00', '2023-02-08 15:00:00', 740.00, 9, 10, 9, 10, 5),
(6, 'LH4965', '2023-06-03 14:00:00', '2023-06-03 16:30:00', 250.00, 4, 5, 4, 7, 3),
(7, 'EV4935', '2023-02-08 15:45:00', '2023-02-08 18:15:00', 1800.00, 14, 15, 8, 2, 1),
(8, 'QR8746', '2023-07-18 17:00:00', '2023-07-18 19:30:00', 613.00, 15, 14, 7, 4, 3),
(9, 'SM2946', '2023-12-04 18:30:00', '2023-12-04 21:00:00', 750.00, 9, 10, 3, 6, 5),
(10, 'CT4798', '2023-11-24 20:15:00', '2023-11-24 22:45:00', 642.00, 9, 10, 7, 1, 4),
(11, 'QD6418', '2023-01-04 21:45:00', '2023-01-04 00:15:00', 700.00, 10, 9, 9, 4, 1),
(12, 'KL1212', '2023-11-05 23:00:00', '2023-11-05 02:30:00', 1650.00, 14, 15, 7, 5, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aeroport`
--
ALTER TABLE `aeroport`
  ADD PRIMARY KEY (`Id_aeroport`),
  ADD UNIQUE KEY `Id_Villes` (`Id_Villes`),
  ADD UNIQUE KEY `Nom_de_l_aéroport` (`Nom_de_l_aéroport`),
  ADD UNIQUE KEY `code_iata` (`code_iata`);

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`Id_Agences`),
  ADD UNIQUE KEY `Nom_de_l_agence` (`Nom_de_l_agence`),
  ADD UNIQUE KEY `Adresse` (`Adresse`),
  ADD UNIQUE KEY `Numéro_de_téléphone` (`Numéro_de_téléphone`);

--
-- Index pour la table `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`Id_Avion`),
  ADD UNIQUE KEY `Numéro_d_identification` (`Numéro_d_identification`),
  ADD KEY `Id_Compagnier_a` (`Id_Compagnier_a`);

--
-- Index pour la table `bagages`
--
ALTER TABLE `bagages`
  ADD PRIMARY KEY (`Id_Bagages`),
  ADD UNIQUE KEY `Numero_de_bagage` (`Numero_de_bagage`),
  ADD KEY `Id_Passagers` (`Id_Passagers`);

--
-- Index pour la table `billet_de_réservation`
--
ALTER TABLE `billet_de_réservation`
  ADD PRIMARY KEY (`Id_Vols`,`Id_Classes1`,`Id_Passagers`,`Id_Facture`,`Id_Mode_de_paiement_`),
  ADD KEY `Id_Classes1` (`Id_Classes1`),
  ADD KEY `Id_Passagers` (`Id_Passagers`),
  ADD KEY `Id_Facture` (`Id_Facture`),
  ADD KEY `Id_Mode_de_paiement_` (`Id_Mode_de_paiement_`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`Id_Classes1`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`Id_Clients`),
  ADD UNIQUE KEY `Nom_de_la_société` (`Nom_de_la_société`),
  ADD UNIQUE KEY `Nom_` (`Nom_`),
  ADD UNIQUE KEY `Adresse_de_facturation` (`Adresse_de_facturation`);

--
-- Index pour la table `compagnier_a`
--
ALTER TABLE `compagnier_a`
  ADD PRIMARY KEY (`Id_Compagnier_a`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`Id_Facture`),
  ADD UNIQUE KEY `Numéro_de_facture` (`Numéro_de_facture`);

--
-- Index pour la table `gère`
--
ALTER TABLE `gère`
  ADD PRIMARY KEY (`Id_Facture`,`Id_Clients`,`Id_Agences`),
  ADD KEY `Id_Clients` (`Id_Clients`),
  ADD KEY `Id_Agences` (`Id_Agences`);

--
-- Index pour la table `mode_de_paiement_`
--
ALTER TABLE `mode_de_paiement_`
  ADD PRIMARY KEY (`Id_Mode_de_paiement_`);

--
-- Index pour la table `passagers`
--
ALTER TABLE `passagers`
  ADD PRIMARY KEY (`Id_Passagers`),
  ADD UNIQUE KEY `Numéro_de_téléphone` (`Numéro_de_téléphone`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`Id_Personnel`),
  ADD UNIQUE KEY `Numéro_de_licence` (`Numéro_de_licence`),
  ADD KEY `Id_Compagnier_a` (`Id_Compagnier_a`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`Id_Villes`);

--
-- Index pour la table `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`Id_Vols`),
  ADD UNIQUE KEY `Numéro_de_vol` (`Numéro_de_vol`),
  ADD KEY `Id_Personnel` (`Id_Personnel`),
  ADD KEY `Id_Personnel_1` (`Id_Personnel_1`),
  ADD KEY `Id_aeroport_départ` (`Id_aeroport_départ`),
  ADD KEY `Id_aeroport_Arrive` (`Id_aeroport_Arrive`),
  ADD KEY `Id_Avion` (`Id_Avion`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aeroport`
--
ALTER TABLE `aeroport`
  ADD CONSTRAINT `aeroport_ibfk_1` FOREIGN KEY (`Id_Villes`) REFERENCES `villes` (`Id_Villes`);

--
-- Contraintes pour la table `avion`
--
ALTER TABLE `avion`
  ADD CONSTRAINT `avion_ibfk_1` FOREIGN KEY (`Id_Compagnier_a`) REFERENCES `compagnier_a` (`Id_Compagnier_a`);

--
-- Contraintes pour la table `bagages`
--
ALTER TABLE `bagages`
  ADD CONSTRAINT `bagages_ibfk_1` FOREIGN KEY (`Id_Passagers`) REFERENCES `passagers` (`Id_Passagers`);

--
-- Contraintes pour la table `billet_de_réservation`
--
ALTER TABLE `billet_de_réservation`
  ADD CONSTRAINT `billet_de_réservation_ibfk_1` FOREIGN KEY (`Id_Vols`) REFERENCES `vols` (`Id_Vols`),
  ADD CONSTRAINT `billet_de_réservation_ibfk_2` FOREIGN KEY (`Id_Classes1`) REFERENCES `classes` (`Id_Classes1`),
  ADD CONSTRAINT `billet_de_réservation_ibfk_3` FOREIGN KEY (`Id_Passagers`) REFERENCES `passagers` (`Id_Passagers`),
  ADD CONSTRAINT `billet_de_réservation_ibfk_4` FOREIGN KEY (`Id_Facture`) REFERENCES `facture` (`Id_Facture`),
  ADD CONSTRAINT `billet_de_réservation_ibfk_5` FOREIGN KEY (`Id_Mode_de_paiement_`) REFERENCES `mode_de_paiement_` (`Id_Mode_de_paiement_`);

--
-- Contraintes pour la table `gère`
--
ALTER TABLE `gère`
  ADD CONSTRAINT `gère_ibfk_1` FOREIGN KEY (`Id_Facture`) REFERENCES `facture` (`Id_Facture`),
  ADD CONSTRAINT `gère_ibfk_2` FOREIGN KEY (`Id_Clients`) REFERENCES `clients` (`Id_Clients`),
  ADD CONSTRAINT `gère_ibfk_3` FOREIGN KEY (`Id_Agences`) REFERENCES `agences` (`Id_Agences`);

--
-- Contraintes pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD CONSTRAINT `personnel_ibfk_1` FOREIGN KEY (`Id_Compagnier_a`) REFERENCES `compagnier_a` (`Id_Compagnier_a`);

--
-- Contraintes pour la table `vols`
--
ALTER TABLE `vols`
  ADD CONSTRAINT `vols_ibfk_1` FOREIGN KEY (`Id_Personnel`) REFERENCES `personnel` (`Id_Personnel`),
  ADD CONSTRAINT `vols_ibfk_2` FOREIGN KEY (`Id_Personnel_1`) REFERENCES `personnel` (`Id_Personnel`),
  ADD CONSTRAINT `vols_ibfk_3` FOREIGN KEY (`Id_aeroport_départ`) REFERENCES `aeroport` (`Id_aeroport`),
  ADD CONSTRAINT `vols_ibfk_4` FOREIGN KEY (`Id_aeroport_Arrive`) REFERENCES `aeroport` (`Id_aeroport`),
  ADD CONSTRAINT `vols_ibfk_5` FOREIGN KEY (`Id_Avion`) REFERENCES `avion` (`Id_Avion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
