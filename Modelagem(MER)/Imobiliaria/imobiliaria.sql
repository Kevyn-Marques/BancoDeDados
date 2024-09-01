-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2024 às 13:45
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
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `preco_m` decimal(10,2) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `data_inic` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `condicoes` varchar(55) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `id_corretor` int(11) NOT NULL,
  `cpf` varchar(55) NOT NULL,
  `data_nasc` date NOT NULL,
  `imobiliaria` varchar(55) DEFAULT NULL,
  `rg` varchar(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(55) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
--
--Extraindo Dados da Tabela `corretor`
--
Insert Into `corretor` (`id_corretor`,`cpf`,`data_nasc`,`imobiliaria`,`rg`,`email`,`telefone`,`nome`,`id_endereco`) Values
(1, '123.456.789-01', '1999-05-05', 'Casas Arnaldo', '09739-7', 'ruan@gmail.com','3333-0505','Ruan Aroldo', 1),
(2, '234.111.444-99', '1577-12-12', 'Loteamento Vicente&filhos', '1111-1', 'tabata@gmail.com','1234-7777','Tabata Sanchez',2),
(3, '777.777.777-77', '2000-05-02', 'Anapurna Imóveis', '99787-71', 'aluisio@gmail.com','4546-7777','Aluisio', 3),
(4, '181.190.673-42', '1987-05-08', 'AutoImoveis', '70000-1', 'volkswagen@gmail.com','2783-7878','Clovis', 4),
(5, '111.111.111-11', '1890-09-02', 'Imobiliaria Fachada', '79272-2', 'thomas@gmail.com','9999-8888','Thomas Carvalho', 5),
(6, '987.654.321-00', '1980-07-06', 'Faminto Móveis', '384728-2', 'andersin@gmail.com','4626-7383','Anderson', 6),
(7, '555.555.555-70', '1999-01-01', 'Imobilicimos', '204838-2', 'lulaby@gmail.com','6373-7288','Umberto', 7),
(8, '999.888.777-66', '1800-08-08', 'Imóveis e Lanches', '038493-7', 'sinners@yahoo.com','2728-999','Joel', 8),
(9, '111.222.333-44', '2006-07-07', 'Claudio Apartamentos', '2847283-2', 'colunga@gmail.com','5555-6666','Fernando Colunga',9),
(10, '444.555.666-77', '2003-05-05', 'Cazemiro Imobiliária ', '928383-3', 'vasconselhos@gmail.com','8888-1111','Tamirez Vasconselos',10);
-- --------------------------------------------------------

--
-- Estrutura da tabela `endreco`
--

CREATE TABLE `endreco` (
  `id_endereco` int(11) NOT NULL,
  `cidade` varchar(55) NOT NULL,
  `estado` varchar(55) NOT NULL,
  `rua` varchar(55) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `cep` varchar(55) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `endreco`
--

INSERT INTO `endreco` (`id_endereco`, `cidade`, `estado`, `rua`, `bairro`, `numero`, `cep`, `complemento`) VALUES
(1, 'Americana', 'SP', 'Rua João Brasiliense', 'Jd. Alvorada', 66, '09789-11', 'Chacára do Claudinho'),
(2, 'São Paulo', 'SP', 'Rua Don João V', 'Lapa', 987, '04789-11', 'Pastelaria do ney'),
(3, 'Rio de Janeiro', 'RJ', 'Rua da Lapa', 'Lapa', 923, '212389-11', 'Mercadin'),
(4, 'Ribeirão Pires', 'SP', 'Rua Ana Lacivita', 'Jd. Valentina', 127, '082189-11', 'Escola Valentino Redivo'),
(5, 'Uberlândia', 'MG', 'Rua Sétimo Spini', 'Jaraguá', 7, '02119-11', 'Rio Uberabinha'),
(6, 'Porto Alegre', 'RS', 'Rua Tarminal Ary Tarragô', 'Jardim Itu', 8, '127989-11', 'Restaurante da D. Graça'),
(7, 'São Paulo', 'SP', 'Rua do Lavapés', 'Liberdade', 9, '092189-11', 'Evento de Anime'),
(8, 'Maceió', 'AL', 'Rua Prefeito Abdon Arroxelas', 'Ponta Verde', 4676, '12789-11', 'Pizzaria do Bola'),
(9, 'Manaus', 'AM', 'Rua Pará', 'Aleixo', 808, '07689-11', 'Bar Ah Negão'),
(10, 'Natal', 'RN', 'Rua João XXIII', 'Alecrim', 1987, '16721-11', 'Mercearia Ana & Braga');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `id_fiador` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(55) DEFAULT NULL,
  `email` varchar(55) NOT NULL,
  `cpf` varchar(55) DEFAULT NULL,
  `rg` varchar(55) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`id_fiador`, `nome`, `telefone`, `email`, `cpf`, `rg`, `id_endereco`) VALUES
(1, 'Alcino', '3456-8787', 'alcas@gmail.com', '166.994.453-11', '094568-9', 1),
(2, 'Cesinha Rodrigues', '7364-8787', 'csinhamandamt@gmail.com', '112.333.443-11', '43828-9', 2),
(3, 'Manuel', '9999-8787', 'manual@gmail.com', '145.674.923-11', '0434548-9', 3),
(4, 'Marcos', '9876-8787', 'marcos@gmail.com', '187.300.923-11', '0344343-9', 4),
(5, 'Lourenzo', '121345-8787', 'lourenzo@gmail.com', '009.314.923-11', '043443-9', 5),
(6, 'Uesley', '99876-6475', 'ueslis@gmail.com', '117.111.113-11', '034458-9', 6),
(7, 'Sinval Lawas', '99876-8888', 'sinvas@gmail.com', '199.555.673-11', '845875-9', 7),
(8, 'Sinbad', '99876-7382', 'reileao@gmail.com', '111.354.944-11', '12345657-9', 8),
(9, 'Mohamed', '99876-2773', 'mohamas@gmail.com', '.354.923-11', '078487-9', 9),
(10, 'Mount', '99876-3543', 'mountresolis@gmail.com', '887.964.763-11', '0637293-9', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `id_fotos` int(11) NOT NULL,
  `medias` varchar(255) DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `id_imovel` int(11) NOT NULL,
  `quartos` int(11) DEFAULT NULL,
  `tamanho_m2` int(11) DEFAULT NULL,
  `comodos` int(11) DEFAULT NULL,
  `quintal` int(11) DEFAULT NULL,
  `banheiros` int(11) DEFAULT NULL,
  `andares` int(11) DEFAULT NULL,
  `garagem` bit(1) DEFAULT NULL,
  `piscina` bit(1) DEFAULT NULL,
  `alugado` bit(1) DEFAULT NULL,
  `id_proprietario` int(11) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
--
-- Extraindo dados da tabela `imovel`
--
Insert into `imovel` (`id_imovel`,`quartos`,`tamanho_m2`,`comodos`,`quintal`,`banheiros`,`andares`,`garagem`,`piscina`,`alugado`,`id_proprietario`,`id_endereco`) Values
  (1,2,42,5,1,2,2,b'1',b'0',b'0',1,2),
  (2,3,50,2,1,3,2,b'0',b'0',b'0',2,3),
  (3,4,64,4,1,4,2,b'1',b'0',b'0',3,1),
  (4,1,30,3,1,1,1,b'1',b'0',b'0',4,4),
  (5,4,60,6,1,4,2,b'0',b'0',b'0',5,5),
  (6,5,72,3,2,5,2,b'1',b'1',b'0',6,6),
  (7,3,53,8,1,3,2,b'1',b'0',b'0',7,7),
  (8,2,39,2,1,2,1,b'0',b'0',b'0',8,8),
  (9,4,56,4,1,4,2,b'1',b'0',b'0',9,9),
  (10,2,45,7,1,1,2,b'1',b'0',b'0',10,10);
-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `id_inquilino` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(55) DEFAULT NULL,
  `rg` varchar(55) DEFAULT NULL,
  `cpf` varchar(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_fiador` int(11) DEFAULT NULL,
  `id_corretor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `id_proprietario` int(11) NOT NULL,
  `cpf` varchar(55) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `data_nasc` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `rg` varchar(55) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`id_proprietario`, `cpf`, `telefone`, `nome`, `data_nasc`, `email`, `rg`, `id_endereco`) VALUES
(1, '123.456.789-00', '(11) 98765-4321', 'Ana Silva', '1985-03-05', 'ana.silva@example.com', '12.345.678-9', 1),
(2, '234.567.890-11', '(21) 97654-3210', ' João Santos', '1997-11-01', ' joao.santos@example.com', '23.456.789-0', 2),
(3, '345.678.901-22', '(31) 96543-2109', ' Maria Oliveira', '2000-05-02', 'maria.oliveira@example.com', '34.567.890-1', 3),
(4, '187.354.923-11', '99876-8787', 'Roberto Variados', '2005-07-02', 'robertovarios@gmail.com', '090828-9', 4),
(5, '117.886.4563-12', '99856-6787', 'Renato Aragão', '1995-05-02', 'aragao@gmail.com', '093332-1', 5),
(6, '237.676.773-13', '99567-1287', 'Claudio Preres Araújo', '1987-12-12', 'claaaaudio@gmail.com', '090828-5', 6),
(7, '345.346.563-14', '97776-5687', 'Luan Varins', '2000-01-01', 'luansin@gmail.com', '01243-6', 7),
(8, '675.376.903-15', '98236-5587', 'Drauzio Varela', '2003-03-02', 'varela@gmail.com', '563767-3', 8),
(9, '995.976.563-16', '91116-3787', 'Orácio Sonidos', '2006-11-02', 'oracio@gmail.com', '034647-2', 9),
(10, '457.856.231-17', '93456-1287', 'Césio Toxin', '2001-11-11', 'cesio137@gmail.com', '123456-0', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_imovel` (`id_imovel`),
  ADD KEY `id_corretor` (`id_corretor`),
  ADD KEY `id_inquilino` (`id_inquilino`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`id_corretor`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- Índices para tabela `endreco`
--
ALTER TABLE `endreco`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`id_fiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_fotos`),
  ADD KEY `id_imovel` (`id_imovel`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`),
  ADD KEY `id_endereco` (`id_endereco`),
  ADD KEY `id_proprietario` (`id_proprietario`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`id_inquilino`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_fiador` (`id_fiador`),
  ADD KEY `id_corretor` (`id_corretor`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`id_proprietario`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_endereco` (`id_endereco`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `id_corretor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endreco`
--
ALTER TABLE `endreco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `id_fiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `id_imovel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `id_inquilino` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `id_proprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`id_inquilino`) REFERENCES `inquilino` (`id_inquilino`);

--
-- Limitadores para a tabela `corretor`
--
ALTER TABLE `corretor`
  ADD CONSTRAINT `corretor_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endreco` (`id_endereco`);

--
-- Limitadores para a tabela `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endreco` (`id_endereco`);

--
-- Limitadores para a tabela `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endreco` (`id_endereco`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietario` (`id_proprietario`);

--
-- Limitadores para a tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD CONSTRAINT `inquilino_ibfk_1` FOREIGN KEY (`id_fiador`) REFERENCES `fiador` (`id_fiador`),
  ADD CONSTRAINT `inquilino_ibfk_2` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`);

--
-- Limitadores para a tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD CONSTRAINT `proprietario_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endreco` (`id_endereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
