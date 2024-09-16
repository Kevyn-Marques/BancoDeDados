-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:05
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `modelo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `modelo`) VALUES
(1, 'Fusca'),
(2, 'Civic'),
(3, 'Corolla'),
(4, 'Onix'),
(5, 'Hilux'),
(6, 'Astra'),
(7, 'Gol'),
(8, 'Celta'),
(9, 'S10'),
(10, 'Fox'),
(11, 'Kwid'),
(12, 'Jetta'),
(13, 'Renegade'),
(14, 'Tucson'),
(15, 'HR-V'),
(16, 'X-Trail'),
(17, 'EcoSport'),
(18, 'Tracker'),
(19, 'Compass'),
(20, 'Mustang');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(7) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `id_modelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  MODIFY `id_estaciona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
