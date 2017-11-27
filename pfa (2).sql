-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Nov-2017 às 01:00
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `login`, `senha`, `email`) VALUES
(1, 'dolagoxd', 'dolago2k00', 'dolagoxd@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `email`, `endereco`, `login`, `senha`) VALUES
(1, 'Lucas', 'ifprlucas@gmail.com', 'rua paranapanema, 212', 'dolago', 'dolago2k00'),
(2, '', 'dolagoxd@gmail.com', '', 'dolagoxd', 'dolago2k00'),
(3, '', 'dolagoxd@gmail.com', '', 'dolagoxd', 'dolago2k00'),
(4, 'Mario', 'mariosergio@live.com', 'Rua Amazonas', 'marinho', 'marinho123'),
(5, 'Anderson', 'anderson@gmail.com', 'rua araguaia', 'anderson', 'anderson2k00'),
(6, 'Itamar', 'itamarnieradka@gmail.com', 'Avenida Araucaria, 680', 'itamar', 'itamar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tenis`
--

CREATE TABLE `tenis` (
  `idTenis` int(11) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `numeracao` int(11) NOT NULL,
  `cor` varchar(45) NOT NULL,
  `preco` float NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `nomeFoto` varchar(100) NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tenis`
--

INSERT INTO `tenis` (`idTenis`, `marca`, `modelo`, `numeracao`, `cor`, `preco`, `descricao`, `nomeFoto`, `status`) VALUES
(7, 'Adidas', 'NEO', 41, 'vermelho', 321, 'adidas baixo vermelho 41', 'aiddas.png', 0),
(8, 'Supra', 'Skytop', 38, 'branco', 678, 'supra branco 38', 'supraBranco.jpg', 0),
(9, 'Nike', 'Airforce 01', 41, 'branco', 560, 'airforce branco numero 41', 'NikeAirForce.png', 1),
(10, 'Adidas', 'NMD', 37, 'preto', 480, 'adidas nmd 37', 'AdidasNMD.png', 1),
(11, 'Supra', 'Vader', 39, 'vermelho', 540, 'supra red 39', 'supraVermelho.jpg', 0),
(12, 'Nike', 'Shox', 40, 'azul', 400, 'nike shox azul numero 40', 'shoxAzul.jpg', 0),
(13, 'nike', 'janoski', 36, 'verde', 370, 'janoski verde 36', 'janoskiVerde.jpg', 0),
(16, 'New Balance', '247 Deluxe', 40, 'Preto', 550, 'New Balance 247 Deluxe', 'NewBalance247.png', 0),
(17, 'Nike', 'Airforce 01', 38, 'Azul', 550, 'Maneiro', 'NikeAirForce.png', 1),
(18, 'Adidas', 'NMD', 36, 'Azul', 550, 'Maneirasso', 'AdidasNMD.png', 1),
(19, 'Nike', 'Airforce 01', 36, 'Bege', 550, 'Air Force Bege', 'NikeAirForce.png', 1),
(20, 'Adidas', 'NMD', 36, 'Azul', 550, 'NMD Azul', 'AdidasNMD.png', 1),
(21, 'Nike', 'Airforce 01', 40, 'Bege', 540, 'Air Force Bege', 'NikeAirForce.png', 1),
(22, 'Adidas', 'NMD', 40, 'Azul', 360, 'NMD Azul', 'AdidasNMD.png', 1),
(23, 'Nike', 'Airforce 01', 44, 'Bege', 540, 'Air Force Bege', 'NikeAirForce.png', 1),
(24, 'Adidas', 'NMD', 40, 'Azul', 370, 'NMD Azul KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK', 'AdidasNMD.png', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idVenda` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idVenda`, `idCliente`, `data`, `hora`, `total`) VALUES
(1, 1, '2017-11-06', '15:55:27', 861),
(2, 5, '2017-11-06', '16:28:40', 721),
(3, 6, '2017-11-06', '16:35:13', 1078);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_has_tenis`
--

CREATE TABLE `venda_has_tenis` (
  `idVendaTenis` int(11) NOT NULL,
  `idVenda` int(11) NOT NULL,
  `idTenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda_has_tenis`
--

INSERT INTO `venda_has_tenis` (`idVendaTenis`, `idVenda`, `idTenis`) VALUES
(1, 1, 7),
(2, 1, 11),
(3, 2, 7),
(4, 2, 12),
(5, 3, 8),
(6, 3, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `tenis`
--
ALTER TABLE `tenis`
  ADD PRIMARY KEY (`idTenis`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idVenda`),
  ADD KEY `fk_idCliente` (`idCliente`);

--
-- Indexes for table `venda_has_tenis`
--
ALTER TABLE `venda_has_tenis`
  ADD PRIMARY KEY (`idVendaTenis`),
  ADD KEY `fk_idVenda` (`idVenda`),
  ADD KEY `fk_idTenis` (`idTenis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tenis`
--
ALTER TABLE `tenis`
  MODIFY `idTenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `idVenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venda_has_tenis`
--
ALTER TABLE `venda_has_tenis`
  MODIFY `idVendaTenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `fk_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `venda_has_tenis`
--
ALTER TABLE `venda_has_tenis`
  ADD CONSTRAINT `fk_idTenis` FOREIGN KEY (`idTenis`) REFERENCES `tenis` (`idTenis`),
  ADD CONSTRAINT `fk_idVenda` FOREIGN KEY (`idVenda`) REFERENCES `venda` (`idVenda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
