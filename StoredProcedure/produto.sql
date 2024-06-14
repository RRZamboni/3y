-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 25-Out-2018 às 12:50
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produto`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `todosRegistros`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `todosRegistros` ()  BEGIN
 	SELECT * FROM produto;
 END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `codigo` int(11) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `preco` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codigo`, `descricao`, `estoque`, `preco`) VALUES
(1, 'Sapato Preto', 6, 180),
(2, 'Sapato Marrom', 2, 130),
(3, 'Meia Branca', 4, 8),
(4, 'Tênis Rosa', 10, 80),
(5, 'Tênis Azul', 5, 75),
(6, 'Palmilha Cinza', 4, 10),
(7, 'Camiseta Algodão Amarela', 20, 25),
(8, 'Camiseta Algodão Verde', 11, 23),
(9, 'Camisa Polo Listrada', 30, 45),
(10, 'Camisa Polo Lisa', 20, 30),
(11, 'Calça Jeans Masculina', 25, 65),
(12, 'Calça Jeans Feminina', 12, 99),
(13, 'Lençol de Cama Casal', 10, 35),
(14, 'Lençol de Cama Solteiro', 15, 32),
(15, 'Edredon Estampado', 3, NULL),
(16, 'Toalha de Banho', 7, NULL),
(17, 'Toalha de Rosto', 3, 5),
(18, 'Travesseiro Viscoelástico', 10, 60),
(19, 'Travesseiro Espuma', 20, 22),
(20, 'Travesseiro Pluma', 6, 40);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
