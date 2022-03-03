-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 03 mars 2022 à 21:55
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `filter_product_ajax`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_ram` char(5) NOT NULL,
  `product_storage` varchar(50) NOT NULL,
  `product_camera` varchar(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_quantity` mediumint(5) NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_ram`, `product_storage`, `product_camera`, `product_image`, `product_quantity`, `product_status`) VALUES
(1, 'Huawei Y7 prime (red)', 'Huawei', '12999.00', '4', '32', '16', 'huaweiy7prime32gb.jpg', 10, '1'),
(2, 'Huawei p30  lite', 'Huawei', '10999.00', '3', '32', '13', 'huawei-p30-lite.jpg', 10, '1'),
(3, 'Lenovo A6 Black', 'Lenovo', '12000.00', '4', '32', '32', 'lenovoa6.jpg', 10, '1'),
(4, 'Samsung Galaxy s20 red', 'Samsung', '18500.00', '4', '64', '16', 'samsungs20r.jpg', 10, '1'),
(5, 'Samsung Galaxy s20 black', 'Samsung', '15000.00', '4', '32', '13', 'samsungs20b.jpg', 10, '1'),
(6, 'Samsung Galaxy s20 grey', 'Samsung', '12420.00', '4', '16', '13', 'smasungs20g.jpg', 10, '1'),
(7, 'Sony Xperia Pro-I', 'Sony', '16000.00', '4', '64', '48', 'sonyexperiaproi.jpg', 10, '1'),
(8, 'OPPO a54 (black)', 'OPPO', '21000.00', '4', '64', '32', 'oppoa54.jpg', 10, '1'),
(9, 'OPPO a53 (Blue, 64 GB)  (6 GB RAM)', 'OPPO', '19990.00', '4', '32', '48', 'oppoa53.jpg', 10, '1'),
(10, 'Xiomi Black Shark 3 Pro', 'MI', '50000.00', '6', '128', '48', 'xiaomi-black-shark-3-pro-2.jpg', 10, '1'),
(11, 'Redmi note 12 pro max', 'MI', '35000.00', '6', '128', '64', 'redminote12promax.jpg', 10, '1'),
(12, 'Redmi note 8 Blue', 'MI', '27800.00', '4', '64', '48', 'redminote864go.jpg', 10, '1'),
(13, 'Nokia X20', 'Nokia', '12600.00', '2', '16', '8', 'nokia-x20.png', 10, '1'),
(14, 'Elephone PX', 'Elephone', '11020.00', '4', '32', '8', 'Elephone-PX.jpg', 10, '1'),
(15, 'Elephone A6 Max', 'Elephone', '16000.00', '4', '32', '48', 'Elephone-A6-Max.jpg', 10, '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
