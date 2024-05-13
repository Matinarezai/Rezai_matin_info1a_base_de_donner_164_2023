-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: rezai_matin_info1a_entreprise_164

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS rezai_matin_info1a_entreprise_164;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS rezai_matin_info1a_entreprise_164;

-- Utilisation de cette base de donnée

USE rezai_matin_info1a_entreprise_164;
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for rezai_matin_info1a_entreprise_164
CREATE DATABASE IF NOT EXISTS `rezai_matin_info1a_entreprise_164` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rezai_matin_info1a_entreprise_164`;

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_account_login
CREATE TABLE IF NOT EXISTS `t_account_login` (
  `id_account_login` int NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `fk_id_role` int DEFAULT NULL,
  `fk_id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id_account_login`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_account_login: ~8 rows (approximately)
INSERT INTO `t_account_login` (`id_account_login`, `username`, `password`, `fk_id_role`, `fk_id_utilisateur`) VALUES
	(1, 'jdupont', 'mdp123', 1, 1),
	(2, 'smartin', 'mdp456', 2, 2),
	(3, 'pblanc', 'mdp789', 3, 3),
	(4, 'mgarcia', 'mdp012', 1, 4),
	(5, 'aleclerc', 'mdp345', 2, 5),
	(6, 'jdupont2', 'mdp678', 1, 6),
	(7, 'smartin2', 'mdp901', 2, 1),
	(8, 'pblanc2', 'mdp234', 3, 2);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_account_role
CREATE TABLE IF NOT EXISTS `t_account_role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `nom_role` text,
  `droit_lecture` int DEFAULT NULL,
  `droit_ecriture` int DEFAULT NULL,
  `droit_demande` int DEFAULT NULL,
  `droit_demen_user` int DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_account_role: ~8 rows (approximately)
INSERT INTO `t_account_role` (`id_role`, `nom_role`, `droit_lecture`, `droit_ecriture`, `droit_demande`, `droit_demen_user`) VALUES
	(1, 'Administrateur', 1, 1, 1, 1),
	(2, 'Utilisateur', 1, 0, 1, 0),
	(3, 'Invité', 0, 0, 1, 0),
	(4, 'Super Utilisateur', 1, 1, 1, 0),
	(5, 'Chef de Projet', 1, 1, 0, 1),
	(6, 'Technicien', 1, 1, 1, 0),
	(7, 'Auditeur', 1, 0, 0, 0),
	(8, 'Chef de Département', 1, 1, 1, 1);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_account_session
CREATE TABLE IF NOT EXISTS `t_account_session` (
  `id_session` int NOT NULL AUTO_INCREMENT,
  `fk_id_account_login` int DEFAULT NULL,
  `status` text,
  `timeout` int DEFAULT NULL,
  `session_token` text,
  PRIMARY KEY (`id_session`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_account_session: ~8 rows (approximately)
INSERT INTO `t_account_session` (`id_session`, `fk_id_account_login`, `status`, `timeout`, `session_token`) VALUES
	(1, 1, 'Actif', 1800, 'ABC123'),
	(2, 2, 'Inactif', 0, 'DEF456'),
	(3, 3, 'Actif', 3600, 'GHI789'),
	(4, 4, 'Inactif', 0, 'JKL012'),
	(5, 5, 'Actif', 900, 'MNO345'),
	(6, 1, 'Actif', 7200, 'PQR678'),
	(7, 2, 'Inactif', 0, 'STU901'),
	(8, 3, 'Actif', 3600, 'VWX234');

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_departement
CREATE TABLE IF NOT EXISTS `t_departement` (
  `id_departement` int NOT NULL AUTO_INCREMENT,
  `nom_departement` text,
  PRIMARY KEY (`id_departement`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_departement: ~8 rows (approximately)
INSERT INTO `t_departement` (`id_departement`, `nom_departement`) VALUES
	(1, 'Informatique'),
	(2, 'Ressources Humaines'),
	(3, 'Comptabilité'),
	(4, 'Marketing'),
	(5, 'Direction'),
	(6, 'Service Client'),
	(7, 'Logistique'),
	(8, 'Communication');

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_groupe
CREATE TABLE IF NOT EXISTS `t_groupe` (
  `id_groupe` int NOT NULL AUTO_INCREMENT,
  `nom_groupe` text,
  PRIMARY KEY (`id_groupe`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_groupe: ~8 rows (approximately)
INSERT INTO `t_groupe` (`id_groupe`, `nom_groupe`) VALUES
	(1, 'Développeurs'),
	(2, 'Comptabilité'),
	(3, 'Ressources Humaines'),
	(4, 'Marketing'),
	(5, 'Direction'),
	(6, 'Service Client'),
	(7, 'Informatique'),
	(8, 'Logistique');

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_licence
CREATE TABLE IF NOT EXISTS `t_licence` (
  `id_licence` int NOT NULL AUTO_INCREMENT,
  `nom_licence` text,
  `date_de_debut` date DEFAULT NULL,
  `date_de_fin` date DEFAULT NULL,
  `numero_licence` text,
  `prix` double DEFAULT NULL,
  `nombre_licence` int DEFAULT '1',
  PRIMARY KEY (`id_licence`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_licence: ~8 rows (approximately)
INSERT INTO `t_licence` (`id_licence`, `nom_licence`, `date_de_debut`, `date_de_fin`, `numero_licence`, `prix`, `nombre_licence`) VALUES
	(1, 'Microsoft Office', '2022-01-01', '2023-01-01', '123456', 200, 5),
	(2, 'Adobe Creative Cloud', '2022-02-01', '2023-02-01', '654321', 300, 3),
	(3, 'Autodesk AutoCAD', '2022-03-01', '2023-03-01', '789456', 500, 2),
	(4, 'McAfee AntiVirus', '2022-04-01', '2023-04-01', '741852', 50, 10),
	(5, 'Oracle Database', '2022-05-01', '2023-05-01', '963258', 1000, 1),
	(6, 'VMware Workstation', '2022-06-01', '2023-06-01', '258963', 400, 2),
	(7, 'Symantec Endpoint Protection', '2022-07-01', '2023-07-01', '147258', 100, 5),
	(8, 'SAP Business One', '2022-08-01', '2023-08-01', '369852', 1500, 1);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_lien_groupe
CREATE TABLE IF NOT EXISTS `t_lien_groupe` (
  `id_lien_groupe` int NOT NULL AUTO_INCREMENT,
  `fk_id_groupe` int DEFAULT NULL,
  `fk_id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id_lien_groupe`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_lien_groupe: ~8 rows (approximately)
INSERT INTO `t_lien_groupe` (`id_lien_groupe`, `fk_id_groupe`, `fk_id_utilisateur`) VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 1, 4),
	(5, 2, 5),
	(6, 3, 2),
	(7, 1, 3),
	(8, 3, 1);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_lien_licences
CREATE TABLE IF NOT EXISTS `t_lien_licences` (
  `id_lien_licences` int NOT NULL AUTO_INCREMENT,
  `fk_id_licence` int DEFAULT NULL,
  `fk_id_utilisateur` int DEFAULT NULL,
  PRIMARY KEY (`id_lien_licences`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_lien_licences: ~8 rows (approximately)
INSERT INTO `t_lien_licences` (`id_lien_licences`, `fk_id_licence`, `fk_id_utilisateur`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 2, 3),
	(4, 3, 4),
	(5, 4, 5),
	(6, 4, 2),
	(7, 5, 3),
	(8, 6, 1);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_localisation
CREATE TABLE IF NOT EXISTS `t_localisation` (
  `id_localisation` int NOT NULL AUTO_INCREMENT,
  `numero_rue` text,
  `NPA` int DEFAULT NULL,
  `ville` text,
  `nom_bureau` text,
  `etage` int DEFAULT NULL,
  `id_pays` int DEFAULT NULL,
  PRIMARY KEY (`id_localisation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_localisation: ~8 rows (approximately)
INSERT INTO `t_localisation` (`id_localisation`, `numero_rue`, `NPA`, `ville`, `nom_bureau`, `etage`, `id_pays`) VALUES
	(1, 'Rue de la Gare 10', 1000, 'Lausanne', 'Bureau 101', 1, 1),
	(2, 'Avenue des Acacias 25', 1200, 'Genève', 'Bureau 201', 2, 2),
	(3, 'Rue du Château 12', 2000, 'Neuchâtel', 'Bureau 301', 3, 3),
	(4, 'Rue des Alpes 6', 1000, 'Lausanne', 'Bureau 102', 1, 1),
	(5, 'Chemin des Vignes 22', 1200, 'Genève', 'Bureau 202', 2, 2),
	(6, 'Rue du Marché 3', 2000, 'Neuchâtel', 'Bureau 302', 3, 3),
	(7, 'Rue de la Poste 8', 1009, 'Pully', 'Bureau 103', 1, 1),
	(8, 'Avenue de la Gare 7', 1003, 'Lausanne', 'Bureau 203', 2, 1);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_marque
CREATE TABLE IF NOT EXISTS `t_marque` (
  `id_marque` int NOT NULL AUTO_INCREMENT,
  `nom_marque` text,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_marque: ~5 rows (approximately)
INSERT INTO `t_marque` (`id_marque`, `nom_marque`) VALUES
	(1, 'Dell'),
	(2, 'HP'),
	(3, 'Epson'),
	(4, 'Seagate'),
	(5, 'Logitech');

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_materiel
CREATE TABLE IF NOT EXISTS `t_materiel` (
  `id_materiel` int NOT NULL AUTO_INCREMENT,
  `type` text,
  `garantie` int DEFAULT NULL,
  `numero_serie` text,
  `prix` double DEFAULT NULL,
  `date_de_achat` date DEFAULT NULL,
  `commentaire` text,
  `id_modele` int DEFAULT NULL,
  `id_marque` int DEFAULT NULL,
  `id_utilisateur` int DEFAULT NULL,
  `id_composant` int DEFAULT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_materiel: ~8 rows (approximately)
INSERT INTO `t_materiel` (`id_materiel`, `type`, `garantie`, `numero_serie`, `prix`, `date_de_achat`, `commentaire`, `id_modele`, `id_marque`, `id_utilisateur`, `id_composant`) VALUES
	(1, 'Ordinateur portable', 2, '123456', 1200, '2022-01-15', 'Bon état général', 1, 1, 1, NULL),
	(2, 'Imprimante', 1, '654321', 200, '2022-02-28', 'Doit être réparée', 2, 2, 2, 1),
	(3, 'Scanner', 3, '789456', 400, '2022-03-10', 'Très peu utilisé', 3, 1, 3, NULL),
	(4, 'Projecteur', 2, '741852', 800, '2022-04-05', 'Livré avec une télécommande', 4, 3, 2, NULL),
	(5, 'Smartphone', 1, '963258', 1000, '2022-05-18', 'Neuf dans sa boîte', 5, 2, 1, NULL),
	(6, 'Tablette', 2, '258963', 600, '2022-06-30', 'Écran légèrement rayé', 6, 1, 3, NULL),
	(7, 'Disque dur externe', 1, '147258', 150, '2022-07-25', 'Capacité de 2 To', 7, 4, 2, NULL),
	(8, 'Webcam', 1, '369852', 50, '2022-08-12', 'Facile à installer', 8, 5, 3, NULL);

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_modele
CREATE TABLE IF NOT EXISTS `t_modele` (
  `id_modele` int NOT NULL AUTO_INCREMENT,
  `nom_modele` text,
  PRIMARY KEY (`id_modele`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_modele: ~0 rows (approximately)
INSERT INTO `t_modele` (`id_modele`, `nom_modele`) VALUES
	(1, 'Inspiron 15'),
	(2, 'OfficeJet Pro 6960'),
	(3, 'CanoScan LiDE 300'),
	(4, 'EB-S41'),
	(5, 'iPhone 13 Pro'),
	(6, 'Galaxy Tab A'),
	(7, 'Expansion Desktop'),
	(8, 'C920');

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_pays
CREATE TABLE IF NOT EXISTS `t_pays` (
  `id_pays` int NOT NULL AUTO_INCREMENT,
  `nom_pays` text,
  PRIMARY KEY (`id_pays`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_pays: ~0 rows (approximately)
INSERT INTO `t_pays` (`id_pays`, `nom_pays`) VALUES
	(1, 'Suisse'),
	(2, 'France'),
	(3, 'Belgique'),
	(4, 'Canada'),
	(5, 'Espagne'),
	(6, 'Allemagne'),
	(7, 'Italie'),
	(8, 'Japon');

-- Dumping structure for table rezai_matin_info1a_entreprise_164.t_utilisateur
CREATE TABLE IF NOT EXISTS `t_utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` text,
  `prenom` text,
  `date_naiss` date DEFAULT NULL,
  `email` text,
  `adress` text,
  `numero_telephone` text,
  `etat` text,
  `id_localisation` int DEFAULT NULL,
  `id_departement` int DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table rezai_matin_info1a_entreprise_164.t_utilisateur: ~0 rows (approximately)
INSERT INTO `t_utilisateur` (`id_utilisateur`, `nom`, `prenom`, `date_naiss`, `email`, `adress`, `numero_telephone`, `etat`, `id_localisation`, `id_departement`) VALUES
	(7, 'Dupont', 'Jean', '1990-01-01', 'jean.dupont@mail.com', 'Rue de la Gare 10', '0761234567', 'Actif', 1, 1),
	(8, 'Martin', 'Sophie', '1985-05-15', 'sophie.martin@mail.com', 'Avenue des Acacias 25', '0796512382', 'Actif', 1, 1),
	(9, 'Girard', 'Claire', '1992-08-20', 'claire.girard@mail.com', 'Rue de la Fontaine 8', '0789987654', 'Inactif', 2, 2),
	(10, 'Lopez', 'Manuel', '1980-06-17', 'manuel.lopez@mail.com', 'Chemin des Sauges 12', '0794561230', 'Actif', 3, 1),
	(11, 'Muller', 'Lucie', '1976-02-10', 'lucie.muller@mail.com', 'Avenue des Roses 10', '0777894561', 'Actif', 1, 3),
	(12, 'Bertrand', 'Thomas', '1995-11-25', 'thomas.bertrand@mail.com', 'Rue des Moulins 5', '0777001122', 'Inactif', 2, 2),
	(13, 'Boucher', 'Marie', '1988-03-15', 'marie.boucher@mail.com', 'Rue du Commerce 22', '0767854321', 'Actif', 3, 1),
	(14, 'Lefort', 'Antoine', '1974-12-28', 'antoine.lefort@mail.com', 'Rue du Lac 3', '0789789876', 'Actif', 1, 3),
	(15, 'Benoit', 'Sophie', '1989-04-19', 'sophie.benoit@mail.com', 'Avenue des Champs 8', '0791234567', 'Inactif', 2, 2),
	(16, 'Clement', 'Julien', '1991-07-14', 'julien.clement@mail.com', 'Chemin de la Forêt 12', '0784561230', 'Actif', 3, 1),
	(17, 'Deschamps', 'Emilie', '1979-11-08', 'emilie.deschamps@mail.com', 'Rue des Platanes 10', '0777894561', 'Actif', 1, 3),
	(18, 'Durand', 'Laure', '1996-09-02', 'laure.durand@mail.com', 'Rue de la Paix 5', '0777001122', 'Inactif', 2, 2),
	(19, 'Giraud', 'Marcel', '1987-02-26', 'marcel.giraud@mail.com', 'Avenue des Acacias 22', '0767854321', 'Actif', 3, 1),
	(20, 'Hubert', 'Sophie', '1973-05-21', 'sophie.hubert@mail.com', 'Chemin des Chênes 3', '0789789876', 'Actif', 1, 3),
	(21, 'Laroche', 'Lucie', '1993-12-19', 'lucie.laroche@mail.com', 'Rue du Temple 8', '0791234567', 'Inactif', 2, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
