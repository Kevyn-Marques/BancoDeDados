-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Set-2024 às 17:41
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `id_andar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`id_andar`, `capacidade`, `andar`) VALUES
(1, 50, '1'),
(2, 75, '2'),
(3, 100, '3'),
(4, 125, '4'),
(5, 150, '5'),
(6, 175, '6'),
(7, 200, '7'),
(8, 225, '8'),
(9, 250, '9'),
(10, 275, '10'),
(11, 300, '11'),
(12, 325, '12'),
(13, 350, '13'),
(14, 375, '14'),
(15, 400, '15'),
(16, 425, '16'),
(17, 450, '17'),
(18, 475, '18'),
(19, 500, '19'),
(20, 525, '20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(255) NOT NULL,
  `dataNasc` datetime DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `dataNasc`, `nome`) VALUES
('012.345.678-89', '1986-09-16 00:00:00', 'Juliana Almeida'),
('012.543.678-89', '1998-02-22 00:00:00', 'Tatiane Santos'),
('123.456.789-00', '1980-01-15 00:00:00', 'Ana Silva'),
('123.654.789-00', '1994-10-11 00:00:00', 'Karla Dias'),
('234.567.890-01', '1990-03-22 00:00:00', 'Bruno Costa'),
('234.765.890-01', '1981-12-02 00:00:00', 'Lucas Santos'),
('345.678.901-12', '1985-07-09 00:00:00', 'Carlos Pereira'),
('345.876.901-12', '1997-05-20 00:00:00', 'Mariana Costa'),
('456.789.012-23', '1992-11-05 00:00:00', 'Daniela Souza'),
('456.987.012-23', '1987-07-17 00:00:00', 'Natália Lima'),
('567.098.123-34', '1993-03-12 00:00:00', 'Otávio Silva'),
('567.890.123-34', '1988-12-29 00:00:00', 'Eduardo Lima'),
('678.109.234-45', '1982-06-24 00:00:00', 'Paula Oliveira'),
('678.901.234-45', '1979-06-18 00:00:00', 'Fernanda Martins'),
('789.012.345-56', '1995-02-14 00:00:00', 'Gabriel Oliveira'),
('789.210.345-56', '1996-01-08 00:00:00', 'Quintino Rodrigues'),
('890.123.456-67', '1983-08-30 00:00:00', 'Helena Rocha'),
('890.321.456-67', '1989-08-16 00:00:00', 'Rafaela Barbosa'),
('901.234.567-78', '1991-04-25 00:00:00', 'Igor Fernandes'),
('901.432.567-78', '1984-11-13 00:00:00', 'Samuel Ferreira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `id_estaciona` int(11) NOT NULL,
  `horSaida` datetime DEFAULT NULL,
  `horEntrada` datetime DEFAULT NULL,
  `dtSaida` datetime DEFAULT NULL,
  `dtEntrada` datetime DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `id_andar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estaciona`
--

INSERT INTO `estaciona` (`id_estaciona`, `horSaida`, `horEntrada`, `dtSaida`, `dtEntrada`, `placa`, `id_andar`) VALUES
(1, '2024-09-01 08:30:00', '2024-09-01 17:00:00', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 'ABC1D23', 1),
(2, '2024-09-02 08:45:00', '2024-09-02 17:15:00', '2024-09-02 00:00:00', '2024-09-02 00:00:00', 'XYZ4E56', 2),
(3, '2024-09-03 09:00:00', '2024-09-03 17:30:00', '2024-09-03 00:00:00', '2024-09-03 00:00:00', 'LMN7F89', 3),
(4, '2024-09-04 08:15:00', '2024-09-04 16:45:00', '2024-09-04 00:00:00', '2024-09-04 00:00:00', 'OPQ0G12', 4),
(5, '2024-09-05 09:10:00', '2024-09-05 17:20:00', '2024-09-05 00:00:00', '2024-09-05 00:00:00', 'RST3H45', 5),
(6, '2024-09-06 08:00:00', '2024-09-06 17:00:00', '2024-09-06 00:00:00', '2024-09-06 00:00:00', 'UVW6I78', 6),
(7, '2024-09-07 09:30:00', '2024-09-07 17:45:00', '2024-09-07 00:00:00', '2024-09-07 00:00:00', 'ABC9J01', 7),
(8, '2024-09-08 08:20:00', '2024-09-08 17:10:00', '2024-09-08 00:00:00', '2024-09-08 00:00:00', 'DEF2K34', 8),
(9, '2024-09-09 08:35:00', '2024-09-09 17:05:00', '2024-09-09 00:00:00', '2024-09-09 00:00:00', 'GHI5L67', 9),
(10, '2024-09-10 09:40:00', '2024-09-10 17:55:00', '2024-09-10 00:00:00', '2024-09-10 00:00:00', 'MNO1P23', 10),
(11, '2024-09-11 08:50:00', '2024-09-11 17:25:00', '2024-09-11 00:00:00', '2024-09-11 00:00:00', 'PQR4Q56', 11),
(12, '2024-09-12 09:15:00', '2024-09-12 17:15:00', '2024-09-12 00:00:00', '2024-09-12 00:00:00', 'STU7R89', 12),
(13, '2024-09-13 08:05:00', '2024-09-13 17:35:00', '2024-09-13 00:00:00', '2024-09-13 00:00:00', 'VWX0Y12', 13),
(14, '2024-09-14 09:25:00', '2024-09-14 17:40:00', '2024-09-14 00:00:00', '2024-09-14 00:00:00', 'YZA3B45', 14),
(15, '2024-09-15 08:10:00', '2024-09-15 17:30:00', '2024-09-15 00:00:00', '2024-09-15 00:00:00', 'BCD6C78', 15),
(16, '2024-09-16 09:05:00', '2024-09-16 17:50:00', '2024-09-16 00:00:00', '2024-09-16 00:00:00', 'EFG9D01', 16),
(17, '2024-09-17 08:55:00', '2024-09-17 17:10:00', '2024-09-17 00:00:00', '2024-09-17 00:00:00', 'HIJ2E34', 17),
(18, '2024-09-18 09:35:00', '2024-09-18 17:20:00', '2024-09-18 00:00:00', '2024-09-18 00:00:00', 'KLM5F67', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `ano` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `modelo`, `ano`) VALUES
(1, 'Fusca', NULL),
(2, 'Civic', NULL),
(3, 'Corolla', NULL),
(4, 'Onix', NULL),
(5, 'Hilux', NULL),
(6, 'Astra', NULL),
(7, 'Gol', NULL),
(8, 'Celta', NULL),
(9, 'S10', NULL),
(10, 'Fox', NULL),
(11, 'Kwid', NULL),
(12, 'Jetta', NULL),
(13, 'Renegade', NULL),
(14, 'Tucson', NULL),
(15, 'HR-V', NULL),
(16, 'X-Trail', NULL),
(17, 'EcoSport', NULL),
(18, 'Tracker', NULL),
(19, 'Compass', NULL),
(20, 'Mustang', NULL),
(21, NULL, '2000-01-01'),
(22, NULL, '2001-01-01'),
(23, NULL, '2002-01-01'),
(24, NULL, '2003-01-01'),
(25, NULL, '2004-01-01'),
(26, NULL, '2005-01-01'),
(27, NULL, '2006-01-01'),
(28, NULL, '2007-01-01'),
(29, NULL, '2008-01-01'),
(30, NULL, '2009-01-01'),
(31, NULL, '2010-01-01'),
(32, NULL, '2011-01-01'),
(33, NULL, '2012-01-01'),
(34, NULL, '2013-01-01'),
(35, NULL, '2014-01-01'),
(36, NULL, '2015-01-01'),
(37, NULL, '2016-01-01'),
(38, NULL, '2017-01-01'),
(39, NULL, '2018-01-01'),
(40, NULL, '2019-01-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `id_modelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `id_modelo`) VALUES
('ABC1D23', 'Azul', '123.456.789-00', 1),
('ABC9J01', 'Verde', '789.012.345-56', 7),
('BCD6C78', 'Branco', '678.109.234-45', 16),
('DEF2K34', 'Amarelo', '890.123.456-67', 8),
('EFG9D01', 'Cinza', '789.210.345-56', 17),
('GHI5L67', 'Bege', '901.234.567-78', 9),
('HIJ2E34', 'Vermelho', '890.321.456-67', 18),
('JKL8M90', 'Roxo', '012.345.678-89', 10),
('KLM5F67', 'Verde', '901.432.567-78', 19),
('LMN7F89', 'Branco', '345.678.901-12', 3),
('MNO1P23', 'Laranja', '123.654.789-00', 11),
('OPQ0G12', 'Prata', '456.789.012-23', 4),
('PQR4Q56', 'Marrom', '234.765.890-01', 12),
('RST3H45', 'Cinza', '567.890.123-34', 5),
('STU7R89', 'Prata', '345.876.901-12', 13),
('UVW6I78', 'Vermelho', '678.901.234-45', 6),
('VWX0Y12', 'Azul', '456.987.012-23', 14),
('XYZ4E56', 'Preto', '234.567.890-01', 2),
('YZA3B45', 'Preto', '567.098.123-34', 15);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`id_andar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`id_estaciona`),
  ADD KEY `placa` (`placa`),
  ADD KEY `id_andar` (`id_andar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `id_modelo` (`id_modelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `id_andar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `id_estaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`id_andar`) REFERENCES `andar` (`id_andar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelo` (`id_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
