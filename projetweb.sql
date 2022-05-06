-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 06 mai 2022 à 12:35
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `autre`
--

CREATE TABLE `autre` (
  `Nom` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `appartenance` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `autre`
--

INSERT INTO `autre` (`Nom`, `image`, `appartenance`, `id`) VALUES
('Makino', 'makino.jpg', 'barmen', 6),
('Higuma', 'higuma.jpg', 'Bandit', 7),
('Kuina', 'kuina.jpg', 'ami d\'enfance de Zoro', 8),
('Kaya', 'kaya.webp', 'Médecin', 9),
('Merry', 'merry.jpg', 'Bateau de l\'équipage au chapeau de paille', 10);

-- --------------------------------------------------------

--
-- Structure de la table `collection`
--

CREATE TABLE `collection` (
  `Type` varchar(255) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Image` text NOT NULL,
  `Numéro` varchar(255) NOT NULL,
  `Prix` varchar(255) NOT NULL,
  `Site` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `collection`
--

INSERT INTO `collection` (`Type`, `Nom`, `Image`, `Numéro`, `Prix`, `Site`, `id`) VALUES
('Livre', 'Romance Dawn A l\'aube d\'une grande aventure', 'tome1.jpg', '1', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723488527/?_encoding=UTF8&pd_rd_w=lja2U&pf_rd_p=c5f1cc28-9183-45fd-860f-c83188e695b0&pf_rd_r=A38M3KZ69CS3N8E91MSM&pd_rd_r=2c0666da-66f3-43c4-bf2b-3fe81c431827&pd_rd_wg=sGVF9&ref_=pd_gw_ci_mcx_mr_hp_atf_m', 1),
('Livre', 'Luffy versus la bande à Baggy', 'tome2.jpg', '2', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489892/?_encoding=UTF8&pd_rd_w=Slf8I&pf_rd_p=c5f1cc28-9183-45fd-860f-c83188e695b0&pf_rd_r=QSE8MZW0YTBEMKDNYNP7&pd_rd_r=afacd9d9-578d-4d91-b674-8c50d17330c9&pd_rd_wg=qS5Zf&ref_=pd_gw_ci_mcx_mr_hp_atf_m', 2),
('Livre', 'Une vérité qui blesse', 'tome3.jpg', '3', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489906/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=15DKRSX2SSGII&keywords=one+piece+tome+3&qid=1651586281&s=books&sprefix=one+piece+tome+3%2Cstripbooks%2C172&sr=1-1', 3),
('Livre', 'Attaque au clair de lune', 'tome4.jpg', '4', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489914/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3FO63TKV36D4O&keywords=one+piece+tome+4&qid=1651586293&s=books&sprefix=one+piece+tome+4%2Cstripbooks%2C172&sr=1-1', 4),
('Livre', 'Pour qui sonne le Glas', 'tome5.jpg', '5', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489922/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=DBO17NPVCTTT&keywords=one+piece+tome+5&qid=1651586305&s=books&sprefix=one+piece+tome+%2Cstripbooks%2C172&sr=1-1', 5),
('Livre', 'Le Serment', 'tome6.jpg', '6', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489930/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3L913JD3LLOP0&keywords=one+piece+tome+6&qid=1651586317&s=books&sprefix=one+piece+tome+5%2Cstripbooks%2C227&sr=1-1', 6),
('Livre', 'Vieux Machin', 'tome7.jpg', '7', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489949/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1O3G3S02RDVNQ&keywords=one+piece+tome+7&qid=1651586335&s=books&sprefix=one+piece+tome+7%2Cstripbooks%2C166&sr=1-1', 7),
('Livre', '\"Je ne mourrais pas !\"', 'tome8.jpg', '8', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723489957/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=27LNDWQUM6P01&keywords=one+piece+tome+8&qid=1651586348&s=books&sprefix=one+piece+tome+7%2Cstripbooks%2C126&sr=1-1', 8),
('Livre', 'Une jeune fille en pleurs', 'tome9.jpg', '9', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Larmes/dp/2723492532/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2KJPM5N2JIJYU&keywords=one+piece+tome+9&qid=1651586359&s=books&sprefix=one+piece+tome+8%2Cstripbooks%2C159&sr=1-1\r\n', 9),
('Livre', 'Ok, Let\'s Stand Up !', 'tome10.jpg', '10', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-STAND/dp/2723492559/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2TX4E8BLUP3WL&keywords=one+piece+tome+10&qid=1651586375&s=books&sprefix=one+piece+tome+10%2Cstripbooks%2C178&sr=1-1', 10),
('Livre', 'Le pire brigand de tout East Blue', 'tome11.jpg', '11', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-bandit/dp/2723492567/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=ZKQL021KI4AZ&keywords=tome+11+one+piece&qid=1651659469&s=books&sprefix=tome+11+one+piece%2Cstripbooks%2C155&sr=1-1', 11),
('Livre', 'Et ainsi débuta la légende', 'tome12.jpg', '12', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-l%C3%A9gende/dp/2723492575/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2M8PMD4THXAND&keywords=tome+12+one+piece&qid=1651659527&s=books&sprefix=tome+12+one+piece%2Cstripbooks%2C131&sr=1-1', 12),
('Livre', 'Tiens bon !', 'tome13.jpg', '13', '6.90€', 'https://www.amazon.fr/One-piece-13-Eiichiro-Oda/dp/2723492583/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=28E5PANC2SXH2&keywords=tome+13+one+piece&qid=1651659572&s=books&sprefix=tome+13+one+piece%2Cstripbooks%2C178&sr=1-1', 13),
('Livre', 'Instinct', 'tome14.jpg', '14', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Instinct/dp/2723492591/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2YJ2CZXZOBJOT&keywords=tome+14+one+piece&qid=1651659635&s=books&sprefix=tome+1+one+piece%2Cstripbooks%2C144&sr=1-1', 14),
('Livre', 'Droit devant !', 'tome15.jpg', '15', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-devant/dp/2723492605/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=16WVJ54NF5BM3&keywords=tome+15+one+piece&qid=1651659705&s=books&sprefix=tome+15+one+piece%2Cstripbooks%2C130&sr=1-1', 15),
('Livre', 'Successeurs', 'tome16.jpg', '16', '6.90€', 'https://www.amazon.fr/One-piece-16-Eiichiro-Oda/dp/2723494721/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=18TCDGJHUOOTQ&keywords=tome+16+one+piece&qid=1651659973&s=books&sprefix=tome+16+one+piece%2Cstripbooks%2C141&sr=1-1', 16),
('Livre', 'Les cerisiers d\'Hiluluk', 'tome17.jpg', '17', '6.90€', 'https://www.amazon.fr/One-Piece-originale-cerisiers-dHiluluk/dp/272349473X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2E72V78XNG0WF&keywords=tome+17+one+piece&qid=1651660090&s=books&sprefix=tome+17+one+piece%2Cstripbooks%2C142&sr=1-1', 17),
('Livre', 'Ace entre en scène', 'tome18.jpg', '18', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-entre/dp/2723494748/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1K2MT7YBNJYZR&keywords=tome+18+one+piece&qid=1651660533&s=books&sprefix=tome+18+one+piece%2Cstripbooks%2C307&sr=1-1', 18),
('Livre', 'Rébellion', 'tome19.jpg', '19', '6.90€', 'https://www.amazon.fr/s?k=tome+19+one+piece&i=stripbooks&__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=QUHI7SNP5RQW&sprefix=tome+19+one+piece%2Cstripbooks%2C140&ref=nb_sb_noss_1', 19),
('Livre', 'Bataille décisive à Alubarna', 'tome20.jpg', '20', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Utupia/dp/2723494772/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2685ID5HMOPMP&keywords=tome+21+one+piece&qid=1651660951&s=books&sprefix=tome+21+one+piece%2Cstripbooks%2C146&sr=1-1', 20),
('Livre', 'Utopia', 'tome21.jpg', '21', '6.90€', 'https://www.amazon.fr/s?k=tome+21+one+piece&i=stripbooks&__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2685ID5HMOPMP&sprefix=tome+21+one+piece%2Cstripbooks%2C146&ref=nb_sb_noss_1', 21),
('Livre', 'Hope !', 'tome22.jpg', '22', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Hope/dp/2723494780/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3FRTLP9Y9AZ0L&keywords=tome+22+one+piece&qid=1651661262&s=books&sprefix=tome+22+one+piece%2Cstripbooks%2C155&sr=1-1', 22),
('Livre', 'L\'aventure de Vivi', 'tome23.jpg', '23', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Laventure/dp/2723494799/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1HZH3H0L18PSU&keywords=tome+23+one+piece&qid=1651661328&s=books&sprefix=tome+23+one+piece%2Cstripbooks%2C157&sr=1-1', 23),
('Livre', 'Croire en ses rêves', 'tome24.jpg', '24', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Croire/dp/2723494802/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2IMN5TPCV1NSW&keywords=tome+24+one+piece&qid=1651661366&s=books&sprefix=tome+24+one+piece%2Cstripbooks%2C160&sr=1-1', 24),
('Livre', 'L\'homme qui valait 100 millions', 'tome25.jpg', '25', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-millions/dp/2723494810/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2G8FH1HBFP661&keywords=tome+25+one+piece&qid=1651661402&s=books&sprefix=tome+25+one+piece%2Cstripbooks%2C150&sr=1-1', 25),
('Livre', 'Aventure sur l\'île de Dieu', 'tome26.jpg', '26', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Aventure/dp/2723494829/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3CTX0OPNX5OCR&keywords=tome+26+one+piece&qid=1651661477&s=books&sprefix=tome+26+one+piece%2Cstripbooks%2C155&sr=1-1', 26),
('Livre', 'Prélude', 'tome27.jpg', '27', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Pr%C3%A9lude/dp/2723494837/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=MGJ9NB3G41OM&keywords=tome+27+one+piece&qid=1651661528&s=books&sprefix=tome+27+one+piece%2Cstripbooks%2C175&sr=1-1', 27),
('Livre', 'Wiper le démon furieux', 'tome28.jpg', '28', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-furieux/dp/2723494845/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=24DECKUQ6TN27&keywords=tome+28+one+piece&qid=1651661558&s=books&sprefix=tome+28+one+piece%2Cstripbooks%2C146&sr=1-1', 28),
('Livre', 'Oratorio', 'tome29.jpg', '29', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Oratorio/dp/2723494853/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2FIOBYP7MC69R&keywords=tome+29+one+piece&qid=1651661592&s=books&sprefix=tome+29+one+piece%2Cstripbooks%2C156&sr=1-1', 29),
('Livre', 'Capriccio', 'tome30.jpg', '30', '6.90€', 'https://www.amazon.fr/One-piece-30-Eiichiro-Oda/dp/2723494861/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=8BRP0MKW6L4Y&keywords=tome+30+one+piece&qid=1651661629&s=books&sprefix=tome+30+one+piece%2Cstripbooks%2C165&sr=1-1', 30),
('Livre', 'Nous sommes là', 'tome31.jpg', '31', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-sommes/dp/272349859X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2K9SLU4GEV9KT&keywords=tome+31+one+piece&qid=1651661683&s=books&sprefix=tome+31+one+piece%2Cstripbooks%2C147&sr=1-1', 31),
('Livre', 'Love Song', 'tome32.jpg', '32', '6.90€', 'https://www.amazon.fr/One-piece-32-Eiichiro-Oda/dp/2723498603/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=10PN4DG58PH5Y&keywords=tome+32+one+piece&qid=1651661720&s=books&sprefix=tome+32+one+piece%2Cstripbooks%2C140&sr=1-1', 32),
('Livre', 'Davy Back Fight !!', 'tome33.jpg', '33', '6.90€', 'https://www.amazon.fr/One-piece-33-Eiichiro-Oda/dp/2723498611/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=DO65B4DQ0722&keywords=tome+33+one+piece&qid=1651661784&s=books&sprefix=tome+33+one+piece%2Cstripbooks%2C138&sr=1-1', 33),
('Livre', 'Water Seven, la cité sur l\'eau', 'tome34.jpeg', '34', '6.90€', 'https://www.amazon.fr/One-piece-34-Eiichiro-Oda/dp/272349862X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1ULUQMZ2WFCJP&keywords=tome+34+one+piece&qid=1651661830&s=books&sprefix=tome+34+one+piece%2Cstripbooks%2C146&sr=1-1', 34),
('Livre', 'Capitaine', 'tome35.jpg', '35', '6.90€', 'https://www.amazon.fr/One-piece-35-Eiichiro-Oda/dp/2723498638/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1FAZZ3IXWAL80&keywords=tome+35+one+piece&qid=1651661877&s=books&sprefix=tome+35+one+piece%2Cstripbooks%2C151&sr=1-1', 35),
('Livre', 'Justice', 'tome36.jpg', '36', '6.90€', 'https://www.amazon.fr/One-Piece-Originale-Eiichiro-Oda/dp/2723498646/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2FA1G4ZSQZ6WD&keywords=tome+36+one+piece&qid=1651661928&s=books&sprefix=tome+36+one+piece%2Cstripbooks%2C183&sr=1-1', 36),
('Livre', 'Monsieur Tom', 'tome37.jpg', '37', '6.90€', 'https://www.amazon.fr/One-piece-37-Eiichiro-Oda/dp/2723498654/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1W6V3CJRQ8WI7&keywords=tome+37+one+piece&qid=1651661968&s=books&sprefix=tome+37+one+piece%2Cstripbooks%2C151&sr=1-1', 37),
('Livre', 'Rocketman !', 'tome38.jpg', '38', '6.90€', 'https://www.amazon.fr/One-piece-38-Eiichiro-Oda/dp/2723498662/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1SNOML6TU1QY4&keywords=tome+38+one+piece&qid=1651661998&s=books&sprefix=tome+38+one+piece%2Cstripbooks%2C148&sr=1-1', 38),
('Livre', 'Opération sauvetage', 'tome39.jpeg', '39', '6.90€', 'https://www.amazon.fr/One-Piece-originale-Op%C3%A9ration-sauvetage/dp/2723498670/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2IJWMFB9YBFD7&keywords=tome+39+one+piece&qid=1651662029&s=books&sprefix=tome+39+one+piece%2Cstripbooks%2C146&sr=1-1', 39),
('Livre', 'Gear', 'tome40.jpg', '40', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Gear/dp/2723498689/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2JSELPU8MBKQQ&keywords=tome+40+one+piece&qid=1651662068&s=books&sprefix=tome+40+one+piece%2Cstripbooks%2C143&sr=1-1', 40),
('Livre', 'Déclaration de guerre', 'tome41.jpg', '41', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-D%C3%A9claration/dp/2344001859/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2SPRD4M99G9HO&keywords=tome+41+one+piece&qid=1651662140&s=books&sprefix=tome+41+one+piece%2Cstripbooks%2C157&sr=1-1', 41),
('Livre', 'Les pirates contre le CP9', 'tome42.jpg', '42', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-pirates/dp/2344001867/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2OIWFG1JS6LHK&keywords=tome+42+one+piece&qid=1651662173&s=books&sprefix=tome+42+one+piece%2Cstripbooks%2C149&sr=1-1', 42),
('Livre', 'La légende du héros', 'tome43.jpg', '43', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-l%C3%A9gende/dp/2344001875/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1U5COYL39VD9P&keywords=tome+43+one+piece&qid=1651662204&s=books&sprefix=tome+43+one+piece%2Cstripbooks%2C153&sr=1-1', 43),
('Livre', 'Rentrons', 'tome44.jpg', '44', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Rentrons/dp/2344001883/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=38EJNY05Z2GIQ&keywords=tome+44+one+piece&qid=1651662240&s=books&sprefix=tome+44+one+piece%2Cstripbooks%2C139&sr=1-1', 44),
('Livre', 'Je comprends ce que vous ressentez', 'tome45.jpg', '45', '6.90€', 'https://www.amazon.fr/One-Piece-originale-comprends-ressentez/dp/2344001891/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=34PC3GS5HHD0X&keywords=tome+45+one+piece&qid=1651662271&s=books&sprefix=tome+45+one+piece%2Cstripbooks%2C148&sr=1-1', 45),
('Livre', 'Aventure sur l\'île fantôme', 'tome46.jpg', '46', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Aventure/dp/2344001905/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2KRUHZHY4ULUO&keywords=tome+46+one+piece&qid=1651662319&s=books&sprefix=tome+46+one+piece%2Cstripbooks%2C145&sr=1-1', 46),
('Livre', 'Temps couvert avec chutes d\'os par moments', 'tome47.jpg', '47', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-couvert/dp/2344001913/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=38QBY9MDOR4TU&keywords=tome+47+one+piece&qid=1651662349&s=books&sprefix=tome+47+one+piece%2Cstripbooks%2C142&sr=1-1', 47),
('Livre', 'L\'aventure d\'Oz', 'tome48.jpg', '48', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Laventure/dp/2344001921/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1JH5RDD04T04F&keywords=tome+48+one+piece&qid=1651662377&s=books&sprefix=tome+48+one+piece%2Cstripbooks%2C145&sr=1-1', 48),
('Livre', 'Nightmare Luffy', 'tome49.jpg', '49', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Nightmare/dp/234400193X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3PCMRSJC4UQJ7&keywords=tome+49+one+piece&qid=1651662406&s=books&sprefix=tome+49+one+piece%2Cstripbooks%2C149&sr=1-1', 49),
('Livre', 'De nouveau face au mur', 'tome50.jpg', '50', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-nouveau/dp/2344001948/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2U3G3Z4AUOXXA&keywords=tome+50+one+piece&qid=1651662452&s=books&sprefix=tome+50+one+piece%2Cstripbooks%2C148&sr=1-1', 50),
('Livre', 'Les onze supernovae', 'tome51.jpg', '51', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-supernovae/dp/2344001956/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=EZDMSBGHS6U8&keywords=tome+51+one+piece&qid=1651662483&s=books&sprefix=tome+51+one+piece%2Cstripbooks%2C150&sr=1-1', 51),
('Livre', 'Roger & Rayleigh', 'tome52.jpg', '52', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Rayleigh/dp/2344001964/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2PRRZQJ9F62T9&keywords=tome+52+one+piece&qid=1651662741&s=books&sprefix=tome+51+one+piece%2Cstripbooks%2C1044&sr=1-1', 52),
('Livre', 'Le tempérament d\'un roi', 'tome53.jpg', '53', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-temp%C3%A9rament/dp/2344001972/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&keywords=tome+53+one+piece&qid=1651662781&s=books&sr=1-1', 53),
('Livre', 'Plus personne ne m\'arrêtera', 'tome54.jpg', '54', '6.90€', 'https://www.amazon.fr/One-Piece-originale-personne-marr%C3%AAtera/dp/2344001980/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2EOVNFEEA67OI&keywords=tome+54+one+piece&qid=1651662826&s=books&sprefix=tome+53+one+piece%2Cstripbooks%2C978&sr=1-1', 54),
('Livre', 'Des travs en enfer', 'tome55.jpg', '55', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-travs/dp/2344001999/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2B5KSTQURC7VV&keywords=tome+55+one+piece&qid=1651662873&s=books&sprefix=tome+55+one+piece%2Cstripbooks%2C152&sr=1-1', 55),
('Livre', 'Merci pour tout', 'tome56.jpg', '56', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Merci/dp/2344002006/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1Q3AY2HS0KFG9&keywords=tome+56+one+piece&qid=1651663015&s=books&sprefix=tome+56+one+piece%2Cstripbooks%2C147&sr=1-1', 56),
('Livre', 'La Guerre au sommet', 'tome57.jpg', '57', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Guerre/dp/2344002014/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=PG22V92UDQHA&keywords=tome+57+one+piece&qid=1651663046&s=books&sprefix=tome+57+one+piece%2Cstripbooks%2C141&sr=1-1', 57),
('Livre', 'L\'ère de Barbe blanche', 'tome58.jpg', '58', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-blanche/dp/2344002022/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=11C50CQ76F3DK&keywords=tome+58+one+piece&qid=1651663086&s=books&sprefix=tome+58+one+piece%2Cstripbooks%2C141&sr=1-1', 58),
('Livre', 'La mort de Portgas D. Ace', 'tome59.jpg', '59', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Portgas/dp/2344002030/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=37MJGFGCM5H5Z&keywords=tome+59+one+piece&qid=1651664063&s=books&sprefix=tome+59+one+piece%2Cstripbooks%2C169&sr=1-1', 59),
('Livre', 'Petit frère', 'tome60.jpg', '60', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Petit/dp/2344002049/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=10J46MJJXCWPZ&keywords=tome+60+one+piece&qid=1651664104&s=books&sprefix=tome+60+one+piece%2Cstripbooks%2C179&sr=1-1', 60),
('Livre', 'A l\'aube d\'une grande aventure vers le nouveau monde', 'tome61.jpeg', '61', '6.90€', 'https://www.amazon.fr/One-piece-Vol-61-ODA-Eiichir%C3%B4/dp/2723486680/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2N7LNPN663KX0&keywords=tome+61+one+piece&qid=1651664137&s=books&sprefix=tome+61+one+piece%2Cstripbooks%2C148&sr=1-1', 61),
('Livre', 'ériple sur l\'île des hommes-poissons', 'tome62.jpg', '62', '6.90€', 'https://www.amazon.fr/One-piece-Vol-62-ODA-Eiichir%C3%B4/dp/2723487687/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3IVSVKARO7ECR&keywords=tome+62+one+piece&qid=1651664166&s=books&sprefix=tome+62+one+piece%2Cstripbooks%2C149&sr=1-1', 62),
('Livre', 'Otohime et Tiger', 'tome63.jpg', '63', '6.90€', 'https://www.amazon.fr/One-piece-Vol-63-ODA-Eiichir%C3%B4/dp/2723487695/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=LA5XLY3AQTSD&keywords=tome+63+one+piece&qid=1651664195&s=books&sprefix=tome+63+one+piece%2Cstripbooks%2C145&sr=1-1', 63),
('Livre', '100000 vs 10', 'tome64.jpg', '64', '6.90€', 'https://www.amazon.fr/One-piece-Vol-64-ODA-Eiichir%C3%B4/dp/2723487709/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=WETZ1YUT0PTT&keywords=tome+64+one+piece&qid=1651664231&s=books&sprefix=tome+64+one+piece%2Cstripbooks%2C150&sr=1-1', 64),
('Livre', 'Table rase', 'tome65.jpg', '65', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Table/dp/2723493067/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=10TT5OJIGPWAD&keywords=tome+65+one+piece&qid=1651664261&s=books&sprefix=tome+65+one+piece%2Cstripbooks%2C151&sr=1-1', 65),
('Livre', 'Vers le soleil', 'tome66.jpg', '66', '6.90€', 'https://www.amazon.fr/One-piece-Vol-66-ODA-Eiichir%C3%B4/dp/2723493261/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=14XTOH2GX9GTT&keywords=tome+66+one+piece&qid=1651664293&s=books&sprefix=tome+66+one+piece%2Cstripbooks%2C150&sr=1-1', 66),
('Livre', 'Cool Fight', 'tome67.jpg', '67', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723495736/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2KFXOIY7LFQBI&keywords=tome+67+one+piece&qid=1651664321&s=books&sprefix=tome+67+one+piece%2Cstripbooks%2C145&sr=1-1', 67),
('Livre', 'Alliance entre pirates', 'tome68.jpg', '68', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723496767/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=36TH22T6G5VPZ&keywords=tome+68+one+piece&qid=1651664353&s=books&sprefix=tome+68+one+piece%2Cstripbooks%2C142&sr=1-1', 68),
('Livre', 'Sad', 'tome69.jpg', '69', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723498239/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=12F2BNM6UDEZY&keywords=tome+69+one+piece&qid=1651664381&s=books&sprefix=tome+69+one+piece%2Cstripbooks%2C152&sr=1-1', 69),
('Livre', 'Doflamingo sort de l\'ombre', 'tome70.jpg', '70', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723499332/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2J5NCBRHX3DTJ&keywords=tome+70+one+piece&qid=1651664412&s=books&sprefix=tome+70+one+piece%2Cstripbooks%2C147&sr=1-1', 70),
('Livre', 'Le Colisée de tous les dangers', 'tome71.jpg', '71', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2723499340/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2FDMT636A6WS9&keywords=tome+71+one+piece&qid=1651664448&s=books&sprefix=tome+71+one+piece%2Cstripbooks%2C142&sr=1-1', 71),
('Livre', 'Les Oubliés de Dressrosa', 'tome72.jpg', '72', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2344004319/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3MBRHN5MTCBYR&keywords=tome+72+one+piece&qid=1651664479&s=books&sprefix=tome+72+one+piece%2Cstripbooks%2C144&sr=1-1', 72),
('Livre', 'L\'opération Dressrosa S.O.P.', 'tome73.jpg', '73', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2344006451/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=30D7Z9UQGJBM6&keywords=tome+73+one+piece&qid=1651664518&s=books&sprefix=tome+73+one+piece%2Cstripbooks%2C141&sr=1-1', 73),
('Livre', 'Je serai toujours à tes côtés', 'tome74.jpg', '74', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2344006591/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2O5KJP3E74PCS&keywords=tome+74+one+piece&qid=1651664550&s=books&sprefix=tome+74+one+piece%2Cstripbooks%2C147&sr=1-1', 74),
('Livre', 'Ma gratitude', 'tome75.jpg', '74', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/234400839X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=MHILGS3UBVZJ&keywords=tome+75+one+piece&qid=1651664585&s=books&sprefix=tome+75+one+piece%2Cstripbooks%2C144&sr=1-1', 75),
('Livre', 'Poursuis ta route !', 'tome76.jpg', '76', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/234400842X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1RRYTL1I50ODP&keywords=tome+76+one+piece&qid=1651664616&s=books&sprefix=tome+76+one+piece%2Cstripbooks%2C163&sr=1-1', 76),
('Livre', 'Smile', 'tome77.jpg', '77', '6.90€', 'https://www.amazon.fr/One-piece-originale-ODA-Eiichir%C3%B4/dp/2344008438/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1D6ZKW0WJIZ2T&keywords=tome+77+one+piece&qid=1651664646&s=books&sprefix=tome+77+one+piece%2Cstripbooks%2C143&sr=1-1', 77),
('Livre', 'L\'icône du mal', 'tome78.jpg', '78', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Lic%C3%B4ne/dp/2344013229/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2LA4LC5ZOZ1UR&keywords=tome+78+one+piece&qid=1651664675&s=books&sprefix=tome+78+one+piece%2Cstripbooks%2C138&sr=1-1', 78),
('Livre', 'Lucy !!', 'tome79.jpg', '79', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Lucy/dp/2344016376/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2MYC9Q4R32PH9&keywords=tome+79+one+piece&qid=1651664727&s=books&sprefix=tome+79+one+piece%2Cstripbooks%2C147&sr=1-1', 79),
('Livre', 'Vers une bataille sans précédent', 'tome80.jpg', '80', '6.90€', 'https://www.amazon.fr/One-Piece-originale-bataille-pr%C3%A9c%C3%A9dent/dp/234401747X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1E6WB1TZ15FY3&keywords=tome+80+one+piece&qid=1651664779&s=books&sprefix=tome+80+one+piece%2Cstripbooks%2C157&sr=1-1', 80),
('Livre', 'À la rencontre de maître Chavipère', 'tome81.jpg', '81', '6.90€', 'https://www.amazon.fr/One-Piece-originale-rencontre-Chavip%C3%A8re/dp/234401828X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=8CXQR2NSDCEE&keywords=tome+81+one+piece&qid=1651664807&s=books&sprefix=tome+81+one+piece%2Cstripbooks%2C146&sr=1-1', 81),
('Livre', 'Un monde en pleine agitation', 'tome82.jpg', '82', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-agitation/dp/2344020438/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3TUMXJFKELV6P&keywords=tome+82+one+piece&qid=1651664834&s=books&sprefix=tome+82+one+piece%2Cstripbooks%2C147&sr=1-1', 82),
('Livre', 'Charlotte Linlin', 'tome83.jpg', '83', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Charlotte/dp/2344023216/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1J68K7RNTQ0YJ&keywords=tome+83+one+piece&qid=1651664862&s=books&sprefix=tome+83+one+piece%2Cstripbooks%2C148&sr=1-1', 83),
('Livre', 'Luffy versus Sanji', 'tome84.jpg', '84', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-versus/dp/2344025316/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3FWDKP8EJBXX3&keywords=tome+84+one+piece&qid=1651664890&s=books&sprefix=tome+84+one+piece%2Cstripbooks%2C147&sr=1-1', 84),
('Livre', 'Menteur', 'tome85.jpg', '85', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Menteur/dp/2344027505/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=ZG396OJWXQII&keywords=tome+85+one+piece&qid=1651665008&s=books&sprefix=tome+85+one+piece%2Cstripbooks%2C145&sr=1-1', 85),
('Livre', 'Opération Régicide', 'tome86.jpg', '86', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-86/dp/2344027521/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2BFDMC5SDDXYF&keywords=tome+86+one+piece&qid=1651665043&s=books&sprefix=tome+86+one+piece%2Cstripbooks%2C145&sr=1-1', 86),
('Livre', 'Impitoyable', 'tome87.jpeg', '87', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-piti%C3%A9/dp/2344030042/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=9W9IE5LLZTKJ&keywords=tome+87+one+piece&qid=1651665074&s=books&sprefix=tome+87+one+piece%2Cstripbooks%2C152&sr=1-1', 87),
('Livre', 'Lionne', 'tome88.jpeg', '88', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Lionne/dp/2344030050/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=SCDVOFA8UUKL&keywords=tome+88+one+piece&qid=1651665105&s=books&sprefix=tome+88+one+piece%2Cstripbooks%2C147&sr=1-1', 88),
('Livre', 'Bad End Musical', 'tome89.jpg', '89', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-Musical/dp/2344033580/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=7KMQNH3UWL8U&keywords=tome+89+one+piece&qid=1651665136&s=books&sprefix=tome+89+one+piece%2Cstripbooks%2C164&sr=1-1', 89),
('Livre', 'La Terre Sainte de Marie Joie', 'tome90.jpg', '90', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-90/dp/2344033599/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1LY3UEWBEMAGW&keywords=tome+90+one+piece&qid=1651665162&s=books&sprefix=tome+90+one+piece%2Cstripbooks%2C151&sr=1-1', 90),
('Livre', 'Aventure au Pays des Samouraïs', 'tome91.jpeg', '91', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-91/dp/2344037101/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=ZF75LHXLBK90&keywords=tome+91+one+piece&qid=1651665205&s=books&sprefix=tome+91+one+piece%2Cstripbooks%2C159&sr=1-1', 91),
('Livre', 'La grande courtisane Komurasaki', 'tome92.jpeg', '92', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-92/dp/2344038817/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=18R9OF232L1ZJ&keywords=tome+92+one+piece&qid=1651665262&s=books&sprefix=tome+92+one+piece%2Cstripbooks%2C136&sr=1-1', 92),
('Livre', 'La coqueluche du village d\'Ebisu', 'tome93.jpeg', '93', '6.90€', 'https://www.amazon.fr/s?k=tome+93+one+piece&i=stripbooks&__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=3LOA0Z69ACKW9&sprefix=tome+93+one+piece%2Cstripbooks%2C199&ref=nb_sb_noss_1', 93),
('Livre', 'Le rêve des Guerriers', 'tome94.jpeg', '94', '6.90€', 'https://www.amazon.fr/s?k=tome+94+one+piece&i=stripbooks&__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=19B5JYWPRY2OQ&sprefix=tome+94+one+piece%2Cstripbooks%2C139&ref=nb_sb_noss_1', 94),
('Livre', 'L\'aventure d\'Oden', 'tome95.jpg', '95', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-95/dp/2344043306/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1XI97WWNIZOKF&keywords=tome+95+one+piece&qid=1651665381&s=books&sprefix=tome+95+one+piece%2Cstripbooks%2C148&sr=1-1', 95),
('Livre', 'Bouillir tel est le propre du Oden', 'tome96.jpg', '96', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-96/dp/2344044698/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=XJG554DEUJ4G&keywords=tome+96+one+piece&qid=1651665417&s=books&sprefix=tome+96+one+piece%2Cstripbooks%2C216&sr=1-1', 96),
('Livre', 'Ma Bible', 'tome97.jpg', '97', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-97/dp/2344046380/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2Z5DQVUFI4X8D&keywords=tome+97+one+piece&qid=1651665487&s=books&sprefix=tome+97+one+piece%2Cstripbooks%2C140&sr=1-1', 97),
('Livre', 'Les neufs Rônins', 'tome98.jpg', '98', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-98/dp/2344047565/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=22LQQI0VWASG8&keywords=tome+98+one+piece&qid=1651665526&s=books&sprefix=tome+98+one+piece%2Cstripbooks%2C156&sr=1-1', 98),
('Livre', 'Luffy au chapeau de paille', 'tome99.jpg', '99', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-99/dp/234404874X/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=NAW40MVEBSHU&keywords=tome+99+one+piece&qid=1651665562&s=books&sprefix=tome+99+one+piece%2Cstripbooks%2C150&sr=1-1', 99),
('Livre', 'Le Fluide Royal', 'tome100.jpg', '100', '6.90€', 'https://www.amazon.fr/One-Piece-%C3%89dition-originale-100/dp/2344049029/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1KW30M0TT0PPQ&keywords=tome+100+one+piece&qid=1651665613&s=books&sprefix=tome+100+one+piece%2Cstripbooks%2C140&sr=1-1', 100);

-- --------------------------------------------------------

--
-- Structure de la table `fdd`
--

CREATE TABLE `fdd` (
  `Nom` varchar(255) NOT NULL,
  `Utilisateur` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL,
  `Pouvoir` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fdd`
--

INSERT INTO `fdd` (`Nom`, `Utilisateur`, `Type`, `Pouvoir`, `id`) VALUES
('Fruit du Gum Gum', 'Monkey D Luffy', 'Paramecia', 'Capacité de rendre son corps élastique', 1),
('Fruit du Glisse Glisse', 'Alida', 'Paramecia', 'rend sa peau glissante', 2),
('Mera Mera No Mi', 'Sabo, Ace(anciennement)', 'Logia', 'Donne à l\'utilisateur de créer, controler et se transformer en flamme', 3);

-- --------------------------------------------------------

--
-- Structure de la table `marine`
--

CREATE TABLE `marine` (
  `Nom` varchar(255) NOT NULL,
  `Image` text NOT NULL,
  `Appartenance` varchar(255) NOT NULL,
  `Arme` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `marine`
--

INSERT INTO `marine` (`Nom`, `Image`, `Appartenance`, `Arme`, `titre`, `id`) VALUES
('Coby', 'coby.webp', 'Marine', '6 pouvoirs Rokushiki', 'Colonnel de la Marine', 1),
('Morgan', 'morgan.jpg', 'Marine', 'Hache à la place de la main', 'Capitaine de la Marine', 2),
('Hermep', 'hermep.webp', 'Marine', 'Kukris (couteaux tordus)', 'Lieutenant commandant', 3),
('Fullbody', 'fullbody.webp', 'Marine', 'Poing américain', 'Lieutenant commandant', 4);

-- --------------------------------------------------------

--
-- Structure de la table `monde`
--

CREATE TABLE `monde` (
  `Nom` varchar(255) NOT NULL,
  `Localisation` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `monde`
--

INSERT INTO `monde` (`Nom`, `Localisation`, `id`) VALUES
('Fuschia', 'East Blue', 1);

-- --------------------------------------------------------

--
-- Structure de la table `one_piece`
--

CREATE TABLE `one_piece` (
  `Arc` varchar(255) NOT NULL,
  `Manga` varchar(255) NOT NULL,
  `Anime` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `one_piece`
--

INSERT INTO `one_piece` (`Arc`, `Manga`, `Anime`, `id`) VALUES
('Romance Dawn', 'Chapitre 1 à 7', 'Episode 1 à 3', 1),
('Baggy le Clown', 'Chapitre 8 à 21', 'Episode 4 à 8', 2),
('Capitaine Kuro', 'Chapitre 22 à 41', 'Épisode 9 à 17', 3),
('Baratie', 'Chapitre 42 à 68', 'Episode 18 à 30', 4),
('Arlong', 'Chapitre 69 à 95', 'Episode 31 à 45', 5),
('Loguetown', 'Chapitre 96 à100', 'Episode 48 à 53', 7),
('Arc Laboon', 'Chapitre 101 à 105', 'Episode 62 à 63', 8),
('Whiskey Peak', 'Chapitre 106 à 117', 'Episode 64 à 69', 9),
('Little Garden', 'Chapitre 115 à 129', 'Episode 70 à 77', 10),
('Royaume de Drum', 'Chapitre 130 à 154', 'Episode 78 à 91', 11),
('Alabasta', 'Chapitre 155 à 217', 'Episode 92 à 130', 12),
('Jaya', 'Chapitre 218 à 236', 'Episode 144 à 152', 13),
('Skypiea', 'Chapitre 237 à 302', 'Episode 153 à 195', 14),
('Davy Back Fight', 'Chapitre 303 à 321', 'Episode 207 à 219', 15),
('Water Seven', 'Chapitre 322 à 374', 'Episode 229 à 263', 16),
('Enies Lobby', 'Chapitre 375 à 430', 'Episode 264 à 312', 17),
('Post-Enies Lobby', 'Chapitre 431 à 441', 'Episode 313 à 441', 18),
('Thriller Bark', 'Chapitre 442 à 489', 'Episode 337 à 381', 19),
('Sabaody', 'Chapitre 490 à 513', 'Episode 385 à 405', 20),
('Amazon Lily', 'Chapitre 514 à 524', 'Episode 408 à 417', 21),
('Impel Down', 'Chapitre 525 à 549', 'Episode 422 à 425 et 430 à 452', 22),
('Des Nouvelles de L\'Equipage', 'Chapitre 543 à 560', 'Episode 418 à 421 et 453 à 456', 23),
('Marine Ford', 'Chapitre 550 à 580', 'Episode 457 à 489', 24),
('Post-Marineford', 'Chapitre 581 à 597', 'Episode 490 à 516', 25),
('Retour à Sabaody', 'Chapitre 598 à 602', 'Episode 517 à 522', 26),
('Ile des Hommes-Poissons', 'Chapitre 603 à 653', 'Episode 523 à 574', 27),
('Punk Hazard', 'Chapitre 654 à 699', 'Episode 579 à 625', 28),
('Dressrosa', 'Chapitre 700 à 801', 'Episode 629 à 746', 29),
('Zou', 'Chapitre 802 à 822', 'Episode 751 à 779', 30),
('Whole Cake', 'Chapitre 822 à 902', 'Episode 783 à 877', 31),
('Rêverie', 'Chapitre 903 à 908', 'Episode 878 à 891', 32),
('Wano Kuni', 'Chapitre 909 à ???', 'Episode 892 à ???', 33),
('Les aventures à Baggy', 'arc filler pas dans le manga', 'Episode 46 à 47', 34);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `Nom` varchar(255) NOT NULL,
  `Image` text NOT NULL,
  `Appartenance` varchar(255) NOT NULL,
  `Arme` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`Nom`, `Image`, `Appartenance`, `Arme`, `titre`, `id`) VALUES
('Monkey D Luffy', 'prime_luffy.jpg', 'Equipage du chapeau de paille', 'Fruit de l\'homme, Hito Hito no Mi version nika (anciennement fruit du GumGum)\r\n / Haki des rois\r\n / Haki de l\'armement\r\n / Haki de l\'observation', 'Capitaine de l\'équipage du chapeau de paille', 1),
('Nami', 'prime_nami.PNG', 'Equipage du chapeau de paille', 'Baton Climatique', 'Navigatrice de l\'équipage du chapeau de paille', 2),
('Roronoa Zoro', 'prime_zoro.PNG', 'Equipage du chapeau de paille', '3 sabres', 'vice capitaine de l\'équipage du chapeau de paille', 3),
('Ussop', 'prime_ussop.PNG', 'Equipage du chapeau de paille', 'Lance Pierre géant', 'Canonnier de l\'équipage du chapeau de paille', 4),
('Vinsmoke Sanji', 'prime_sanji.jpg', 'Equipage du chapeau de paille', 'Jambes', 'Cuisinier de l\'équipage du chapeau de paille', 5),
('Nico Robin', 'prime_robin.jpg', 'Equipage du chapeau de paille', 'Fruit des Eclosions, Hana Hana no Mi', 'Archéologue de l\'équipage du chapeau de paille', 6),
('Chopper', 'prime_chopper.jpg', 'Equipage du chapeau de paille', 'Fruit de l\'Humain, Hito Hito no Mi', 'Médecin de l\'équipage du chapeau de paille', 7),
('Franky', 'prime_franky.jpg', 'Equipage du chapeau de paille', 'Cyborg', 'Charpentier de l\'équipage du chapeau de paille', 8),
('Brook', 'prime brook.jpg', 'Equipage du chapeau de paille', 'Fruit de la résurrection, Yomi Yomi no Mi', 'Musicien de l\'équipage du chapeau de paille', 9),
('Gol D Roger', 'roger.jpg', 'Equipage du roi des pirates', 'épée', 'Roi des Pirates', 10),
('Shanks', 'prime_shanks.jpg', 'Equipage du Roux', 'épée', 'Capitaine de l\'équipage du Roux', 11),
('Ben Beckman', 'ben_beckman.jpg', 'Equipage du Roux', 'Fusil', 'Bras droit de Shanks le Roux', 12),
('Lucky Roux', 'lucky_roux.jpg', 'Equipage du Roux', 'Fusil', 'Lieutenant de Shanks le Roux', 13),
('Yassop', 'yassop.jpg', 'Equipage du Roux', 'Fusil', 'Membre de l\'équipage du Roux, Père de Ussop', 14),
('Alvida la massue', 'alvida.webp', 'Equipage de baggy le clown', 'massue / fruit du glisse glisse', '-', 17),
('Baggy le Clown', 'baggy.jpg', 'Equipage de Baggy le clown', 'Fruit de la fragmentation', 'Capitaine', 18),
('Kuro', 'kuro.jpg', 'Equipage du chat noir', 'lames misent sur les mains', 'Majordome, Capitaine Pirate', 19),
('Jango', 'jango.jpg', 'Marine, Equipage du Chat Noir (anciennement)', 'Hypnotiseur', 'Lieutenant commandant, vice-capitaine (anciennement)', 20),
('Don Krieg', 'krieg.webp', 'L\'armada pirate de Don Krieg', 'lance', 'capitaine', 21),
('Gin', 'gin.webp', 'Armada pirate de Don Krieg', 'Tonfas', 'commandant en second', 22),
('Pearl', 'pearl.webp', 'Armada pirate de Don Krieg', 'boucliers', 'commandant ', 23);

-- --------------------------------------------------------

--
-- Structure de la table `revolutionnaire`
--

CREATE TABLE `revolutionnaire` (
  `Nom` varchar(255) NOT NULL,
  `Image` text NOT NULL,
  `Appartenance` varchar(255) NOT NULL,
  `Arme` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `revolutionnaire`
--

INSERT INTO `revolutionnaire` (`Nom`, `Image`, `Appartenance`, `Arme`, `titre`, `id`) VALUES
('Monkey D Dragon', 'dragon.webp', 'Armée Révolutionnaire', '-', 'Chef de l\'armée révolutionnaire', 2),
('Sabo', 'sabo.webp', 'Armée Révolutionnaire', 'Fruit Mera Mera no Mi', 'Second de l\'armée révolutionnaire', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'membre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `Nom`, `Prenom`, `password`, `email`, `role`) VALUES
(11, 'GRATON', 'Pierrick', '414c782f123d2e860c62dba59ba5a1a517a9518809873dc2589d9639dd482c81', 'pierrickgraton@gmail.com', 'admin'),
(12, 'jean', 'jean', '4ff17bc8ee5f240c792b8a41bfa2c58af726d83b925cf696af0c811627714c85', 'jean@free.fr', 'membre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `autre`
--
ALTER TABLE `autre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fdd`
--
ALTER TABLE `fdd`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `marine`
--
ALTER TABLE `marine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `monde`
--
ALTER TABLE `monde`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `one_piece`
--
ALTER TABLE `one_piece`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `revolutionnaire`
--
ALTER TABLE `revolutionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `autre`
--
ALTER TABLE `autre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `fdd`
--
ALTER TABLE `fdd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `marine`
--
ALTER TABLE `marine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `monde`
--
ALTER TABLE `monde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `one_piece`
--
ALTER TABLE `one_piece`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `revolutionnaire`
--
ALTER TABLE `revolutionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
