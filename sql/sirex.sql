-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 29/10/2017 às 18:35
-- Versão do servidor: 10.1.19-MariaDB
-- Versão do PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sirex`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_categoria`
--

CREATE TABLE `cad_categoria` (
  `id_cat` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cad_categoria`
--

INSERT INTO `cad_categoria` (`id_cat`, `categoria`) VALUES
(1, 'mercearia de alto giro'),
(2, 'mercearia doce'),
(3, 'matinais'),
(4, 'pereciveis lacteos'),
(5, 'pereciveis congelados e resfriados'),
(6, 'bebidas nao alcoolicas'),
(7, 'bebidas alcoolicas'),
(8, 'higiene, saúde e beleza'),
(9, 'limpeza'),
(10, 'descartaveis'),
(11, 'bazar');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_desc`
--

CREATE TABLE `cad_desc` (
  `id_desc` int(11) NOT NULL,
  `tipo_desc` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cad_desc`
--

INSERT INTO `cad_desc` (`id_desc`, `tipo_desc`) VALUES
(1, 'kg'),
(2, 'g'),
(3, 'lt'),
(4, 'ml'),
(5, 'lata'),
(6, 'cx'),
(7, 'und');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_endereco`
--

CREATE TABLE `cad_endereco` (
  `endereco` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `municipio` varchar(150) DEFAULT NULL,
  `UF` varchar(15) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `id_mercado` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cad_endereco`
--

INSERT INTO `cad_endereco` (`endereco`, `bairro`, `municipio`, `UF`, `cep`, `latitude`, `longitude`, `id_mercado`) VALUES
('BR 040 - Km 3 - sentido Luziânia', 'Valparaíso de Goiás', 'Valparaíso de Goiás', 'GO', '72870-001', '-23.100819', '-47.0120857', 1),
('Sia Trecho 12, Lote 105, Loja 1 ', 'Zona Industrial', 'Brasília', 'DF', '71200-110', '-16.2502239', '-47.9249366', 1),
('BR 040 - Km 3 - sentido Luziânia', 'Valparaíso de Goiás', 'Valparaíso de Goiás', 'GO', '72870-001', '-16.079711', '-47.9894155', 8),
('Sia Trecho 12, Lote 105, Loja 1 ', 'Zona Industrial', 'Brasília', 'DF', '71200-110', '-15.8073437', '-48.0940758', 8),
('Av. Alfredo Nasser,3,oi', 'Parque Estrela Dalva I,', 'Luziânia', 'GO', '72800-000', '-16.2487384', '-47.9210565', 11),
('Bloco A,Lojas 04 e 10,NAO TENHO NADA PARA COLOCAR AQUI', 'Guará I', 'Brasília', 'DF', '71010-615', '-15.8122735', '-47.9914711', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mercado`
--

CREATE TABLE `cad_mercado` (
  `id_mercado` int(11) NOT NULL,
  `razao_social` varchar(60) NOT NULL,
  `fone` varchar(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cnpj` varchar(40) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `cad_lista` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cad_mercado`
--

INSERT INTO `cad_mercado` (`id_mercado`, `razao_social`, `fone`, `email`, `cnpj`, `logo`, `usuario`, `senha`, `latitude`, `longitude`, `cad_lista`) VALUES
(1, 'Leão', '6191963430', 'a@live.com', '5555444466666', 'Leaao.png', 'leao', 'leao', NULL, NULL, 0),
(8, 'Assaí Atacadista', '61 3669-985', 'br_lima@live.com', '07170943005847', 'Assaai_Atacadista.png', 'assai', 'assai', NULL, NULL, 1),
(11, 'Supermercado Da Terra', '61 3622-980', 'daterra@daterra.com.br', '022093841908234123', 'Supermercado_Da_Terra.jpg', 'terra', 'terra', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_preco`
--

CREATE TABLE `cad_preco` (
  `preco` double(10,2) DEFAULT NULL,
  `id_mercado` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `id_cat` int(11) DEFAULT NULL,
  `validade` varchar(11) NOT NULL,
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cad_preco`
--

INSERT INTO `cad_preco` (`preco`, `id_mercado`, `id_prod`, `id_cat`, `validade`, `data_cadastro`) VALUES
(0.00, 1, 112, NULL, '', '2017-08-24 02:50:31'),
(1.99, 1, 164, 1, '', '2017-07-22 02:37:10'),
(1.99, 1, 162, 1, '', '2017-07-22 02:37:10'),
(1.99, 1, 13, 1, '24/07/2017', '2017-07-22 02:37:10'),
(7.89, 1, 160, 1, '2017-07-05', '2017-07-22 02:37:10'),
(0.00, 1, 112, NULL, '', '2017-08-24 02:50:29'),
(0.00, 1, 112, NULL, '', '2017-08-24 02:50:15'),
(1111.00, 8, 13, NULL, '2017-08-22', '2017-08-22 03:03:06'),
(0.00, 8, 112, NULL, '', '2017-08-24 02:41:16'),
(0.00, 1, 112, NULL, '', '2017-08-24 02:45:03'),
(0.00, 1, 112, NULL, '', '2017-08-24 02:45:08'),
(0.00, 1, 112, NULL, '', '2017-08-24 02:48:20'),
(8.99, 8, 1, 3, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 4, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 4, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 4, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 4, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 4, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 4, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 5, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 5, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 5, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 5, '23/07/2017', '2017-07-22 02:37:10'),
(0.00, 1, 112, NULL, '', '2017-09-06 02:58:23'),
(0.00, 1, 112, NULL, '', '2017-09-06 02:58:26'),
(0.00, 1, 112, NULL, '', '2017-09-06 02:58:27'),
(8.99, 8, 1, 7, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 8, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 9, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 9, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 9, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 10, '23/07/2017', '2017-07-22 02:37:10'),
(10.56, 11, 13, NULL, '', '2017-07-23 03:22:04'),
(8.99, 8, 1, 10, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 10, '23/07/2017', '2017-07-22 02:37:10'),
(8.99, 8, 1, 11, '23/07/2017', '2017-07-22 02:37:10'),
(10.56, 11, 13, NULL, '2017-07-03', '2017-07-23 01:52:51'),
(10.56, 11, 13, NULL, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, NULL, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, 1, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, 1, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, NULL, '', '2017-07-23 03:19:35'),
(10.56, 11, 13, NULL, '', '2017-07-23 03:19:49'),
(10.56, 11, 13, 1, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, 1, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, 1, '', '2017-07-22 02:37:10'),
(10.56, 11, 13, 1, '', '2017-07-22 02:37:10'),
(8.99, 8, 1, 8, '23/07/2017', '2017-07-22 02:37:10'),
(0.00, 8, 112, NULL, '', '2017-08-24 03:14:46'),
(0.00, 8, 112, NULL, '', '2017-08-24 02:57:37'),
(855.00, 1, 13, NULL, '2017-08-23', '2017-08-24 02:50:51'),
(8.99, 8, 1, NULL, '23/07/2017', '2017-07-22 04:34:34'),
(999.77, 7, 1, NULL, '2017-07-22', '2017-07-22 04:45:03'),
(10.56, 11, 13, NULL, '2017-07-22', '2017-07-22 05:10:39'),
(10.56, 11, 13, NULL, '', '2017-07-23 03:20:16'),
(8.99, 1, 13, NULL, '28/07/2017', '2017-07-23 01:20:32'),
(9898.00, 8, 13, NULL, '2017-08-22', '2017-08-22 03:02:18'),
(54.99, 1, 1, NULL, '2017-08-19', '2017-08-19 03:24:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_produto`
--

CREATE TABLE `cad_produto` (
  `id_prod` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `marca` varchar(60) NOT NULL,
  `descricao` varchar(90) NOT NULL,
  `foto` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cad_produto`
--

INSERT INTO `cad_produto` (`id_prod`, `nome`, `marca`, `descricao`, `foto`) VALUES
(1, 'Ração', 'Bong', '20kg', 'RaacaaoBong20kg.png'),
(2, 'Ração', 'Bom', '10kg', 'Naoencontrado.png'),
(3, 'Vassoura', 'Aço', 'und', 'vassouraaacound.jpg'),
(4, 'Vassoura', 'Palhaa', 'und', 'vassourapalhaaund.png'),
(5, 'Sandália', 'Havaianas', 'und', 'sandaaliahavaianasund.png'),
(6, 'Sandália', 'Guga', 'und', 'Naoencontrado.png'),
(7, 'Arroz', 'Camil', '5kg', 'Naoencontrado.png'),
(8, 'Feijão', 'Kicaldo', '1kg', 'Naoencontrado.png'),
(9, 'Óleo', 'Soya', '900ml', 'Naoencontrado.png'),
(10, 'Biscoito', 'Mabel', '800g', 'Naoencontrado.png'),
(11, 'Manga', 'Tormin', '1kg', 'Naoencontrado.png'),
(12, 'Leite', 'Marajuara', '2lt', 'leitemarajuara2lt.png'),
(13, 'Arroz', 'Gol', '5kg', 'Naoencontrado.png'),
(14, 'Feijão', 'Da Casa', '1kg', 'Naoencontrado.png'),
(15, 'Açúcar', 'Rei', '5kg', 'Naoencontrado.png'),
(16, 'Leite', 'Leitebom', '1lt', 'Naoencontrado.png'),
(17, 'Flocão De Milho', 'Do Cerrado', '500g', 'Naoencontrado.png'),
(18, 'Azeite Puro', 'Quinta Da Boa Vista', '500ml', 'Naoencontrado.png'),
(19, '', 'Atomatados5', '5kg', 'Naoencontrado.png'),
(20, 'Macarrão', 'Adria', '500g', 'Naoencontrado.png'),
(21, 'Macarrão', 'Petybon', '500g', 'Naoencontrado.png'),
(22, 'Café Torrado E Moído', 'Pilão', '500g', 'Naoencontrado.png'),
(23, 'Café Torrado E Moído', 'Pelé', '500g', 'Naoencontrado.png'),
(24, 'Maionese', 'Hellmann''s', '500g', 'Naoencontrado.png'),
(25, 'Maionese', 'Liza', '500gg', 'Naoencontrado.png'),
(26, 'Leite Longa Vida Integral ', 'Italac', '1lt', 'Naoencontrado.png'),
(27, 'Leite Longa Vida Integral ', 'Qualitá', '1lt', 'Naoencontrado.png'),
(28, 'Biscoito Recheado', 'Negresco Nestlé', '140g', 'Naoencontrado.png'),
(29, 'Biscoito Recheado', 'Festiva', '130g', 'Naoencontrado.png'),
(30, 'Leite Condensado', 'Moça NestlÉ', '395g LATAg', 'Naoencontrado.png'),
(31, 'Leite Condensado', 'Piracanjuba', '395g', 'Naoencontrado.png'),
(32, 'Bombom', 'NestlÉ', '300g', 'bombomnestlaE300g.png'),
(33, 'Bombom', 'Lacta', '302g', 'Naoencontrado.png'),
(34, 'Gelatina Em Pó', 'Royal', '35g', 'gelatina_em_paoroyal35g.png'),
(35, 'Gelatina Em Pó', 'Oetker', '30g', 'Naoencontrado.png'),
(36, 'Panettone Com Frutas ', 'Bauducco', '500g', 'Naoencontrado.png'),
(37, 'Panettone Com Frutas ', 'Nestlé', '500g', 'Naoencontrado.png'),
(38, 'Cereal Em Barra Com Morango Nuts', 'Nutry', '60g', 'Naoencontrado.png'),
(39, 'Achocolatado', 'Italac', '400g', 'achocolatadoitalac400g.png'),
(40, 'Achocolatado', 'Três Corações', '300g', 'achocolatadotraes_coraacaoes300g.png'),
(41, 'Leite Em Pó', 'Ninho', '400g', 'leite_em_paoninho400g.png'),
(42, 'Leite Em Pó', 'Camponesa', '400g', 'Naoencontrado.png'),
(43, 'Cereal Matinal ', 'Nutry', '280g', 'Naoencontrado.png'),
(44, 'Cereal Matinal ', 'NestlÉ', '300g', 'Naoencontrado.png'),
(45, 'Cereal ', 'Malavério', '500g', 'Naoencontrado.png'),
(46, 'Cereal ', 'NestlÉ Mucilon', '230Gg', 'Naoencontrado.png'),
(47, 'Adoçante Aspartame', 'Gold', '65g', 'adoacante_aspartamegold65g.png'),
(48, 'Adoçante Aspartame', 'Zero-cal', '100g', 'adoacante_aspartamezero-cal100g.png'),
(49, 'Capuccino Classic', 'Três Corações', '190ml', 'Naoencontrado.png'),
(50, 'Capuccino Classic', 'Classic', '200g', 'Naoencontrado.png'),
(51, 'Adoçante Sacrulose', 'Zero-cal', '100ml', 'adoacante_sacrulosezero-cal100ml.png'),
(52, '', 'Gold', '75ml', 'adoacante_sacrulosegold75ml.png'),
(53, 'Iogurte ', 'Activia', '400g', 'Naoencontrado.png'),
(54, 'Iogurte ', 'Vigor', '400g', 'Naoencontrado.png'),
(55, 'Iogurte Grego ', 'Danone', '400g', 'Naoencontrado.png'),
(56, 'Iogurte Grego ', 'Ati Latte', '400g', 'Naoencontrado.png'),
(57, 'Requeijão Cremoso', 'Danumbio', '200g', 'Naoencontrado.png'),
(58, 'Requeijão Cremoso', 'NestlÉ', '200g', 'Naoencontrado.png'),
(59, 'Margarina ', 'Vigor', '500g', 'Naoencontrado.png'),
(60, 'Margarina ', 'Qualy', '500g', 'Naoencontrado.png'),
(61, 'Batata Congelada', 'QualitÁ', '1,5kg', 'Naoencontrado.png'),
(62, 'Batata Congelada', 'Mccain', '2,5kg', 'Naoencontrado.png'),
(63, 'Frango Congelado ', 'Sadia', '2,7kg', 'Naoencontrado.png'),
(64, 'Frango Congelado ', 'Seara', '3kg', 'Naoencontrado.png'),
(65, 'Mortadela Defumada Fatiada ', 'Sadia ', '100g', 'Naoencontrado.png'),
(66, 'Mortadela Defumada Fatiada ', 'Ceratti ', '100g', 'Naoencontrado.png'),
(67, 'Sorvete', 'Kibon', '1.5lt', 'Naoencontrado.png'),
(68, 'Sorvete', 'Nestlé', '1.5lt', 'Naoencontrado.png'),
(69, 'Refrigerante Guaraná ', 'Antarctica', '2lt', 'Naoencontrado.png'),
(70, 'Refrigerante Guaraná ', 'Schincariol', '2lt', 'Naoencontrado.png'),
(71, 'Refrigerante', 'Coca Cola', '350ml', 'Naoencontrado.png'),
(72, 'Refrigerante', 'Sukita', '350ml', 'Naoencontrado.png'),
(73, 'Energético', 'Tnt', '473ml', 'Naoencontrado.png'),
(74, 'Energético', 'Red Bull', '250ml', 'Naoencontrado.png'),
(75, 'Cerveja', 'Heineken', '250ml', 'Naoencontrado.png'),
(76, 'Cerveja', 'Hoegaarden', '330ml', 'Naoencontrado.png'),
(77, 'Vinho Italiano Tinto', 'Primitivo', '750ml', 'Naoencontrado.png'),
(78, 'Vinho Italiano Tinto', 'Periquita', '750ml', 'Naoencontrado.png'),
(79, 'Ice', 'Smirnoff Green Apple', '275ml', 'Naoencontrado.png'),
(80, 'Ice', 'Smirnoff Red', '275ml', 'Naoencontrado.png'),
(81, 'Absorvente', 'Sempre Livre', '16und', 'absorventesempre_livre16und.png'),
(82, '', 'Adultcare', '21und', 'absorventeadultcare21und.png'),
(83, 'Alvejante ', 'Super Candida ', '1lt', 'alvejante_super_candida_1lt.jpg'),
(84, 'Alvejante ', 'Brilhante', '750ml', 'Naoencontrado.png'),
(85, 'Detergente Líquido ', 'Limpol', '500ml', 'Naoencontrado.png'),
(86, 'Detergente Líquido ', 'Ypê', '500ml', 'Naoencontrado.png'),
(87, 'Inseticida Aerossol ', 'Raid ', '150ml', 'Naoencontrado.png'),
(88, 'Inseticida Aerossol ', 'Baygon', '300ml', 'Naoencontrado.png'),
(89, 'Cera Líquida ', 'Poliflor', '700ml', 'Naoencontrado.png'),
(90, 'Cera Líquida ', 'Bravo', '700ml', 'Naoencontrado.png'),
(91, 'Água Sanitária', 'YpÊ', '1lt', 'aAgua_sanitaariaypaE1lt.png'),
(92, 'Água Sanitária', 'Super Cândida', '1lt', 'aAgua_sanitaariasuper_caandida1lt.png'),
(93, 'Fralda Descartável', 'Pampers Confort G', '60und', 'Naoencontrado.png'),
(94, 'Fralda Descartável', 'Turma Da MÔnica Tripla ProteÇÃo Jumbo M', '54und', 'Naoencontrado.png'),
(95, 'Fralda Geriátrica ', 'Tena Confort Biofral Masc M', '10und', 'Naoencontrado.png'),
(96, 'Fralda Geriátrica ', 'Bigfral GeriÁtrica G', '8und', 'Naoencontrado.png'),
(97, '', 'Kitchen', '50und', 'Naoencontrado.png'),
(98, '', 'Snob', '50und', 'Naoencontrado.png'),
(99, 'Papel HigiÊnico', 'Neve Supreme Folha Tripla', '4und', 'Naoencontrado.png'),
(100, 'Papel HigiÊnico', '            Personal Vip Folha Dupla Neutro', '4und', 'Naoencontrado.png'),
(101, 'Ração', 'Pedigree EquilÍbrio Natural Para CÃes Adultos RaÇas Pequenas', '1kg', 'Naoencontrado.png'),
(102, 'Ração', 'Nestlé Purina Dog Chow Adultos De Raças Médias E Grandes Sab', '3kg', 'raçãonestlé purina dog chow adultos de raças médias e grande'),
(103, 'Vassoura ', 'Condor Nylon Plus Pelo V-9 ', 'und', 'Naoencontrado.png'),
(104, 'Vassoura ', 'Bettanin Bola', 'und', 'Naoencontrado.png'),
(105, 'Escova Dental', 'Colgate Slim Soft Macia', '2und', 'Naoencontrado.png'),
(106, 'Ração', 'NestlÉ Purina Dog Chow Adultos De RaÇas MÉdias E Grandes Sab', '3kg', 'Naoencontrado.png'),
(109, 'Raçãoo', 'Nestlé Purina Dog Chow Adultos De Raças Médias E Grandes Sab', '3kg', 'Naoencontrado.png'),
(110, 'Arroz', '', '5kg', 'Naoencontrado.png'),
(111, '', '', '5kg', 'Naoencontrado.png'),
(112, '', '', '', 'Naoencontrado.png'),
(113, '', 'Qualitá', '1lt', 'Naoencontrado.png'),
(114, '', '', '1lt', 'Naoencontrado.png'),
(115, 'Arroz', '                          Tio João ', '5kg', 'Naoencontrado.png'),
(116, 'Arroz', 'De Sempre', '5kg', 'Naoencontrado.png'),
(117, 'Arroz', 'Camil', '5kg', 'Naoencontrado.png'),
(118, 'Feijão', 'Kicaldo', '1kg', 'Naoencontrado.png'),
(119, 'Feijão', 'Super Maximo', '1kg', 'Naoencontrado.png'),
(120, 'Feijao', 'Urbano', '1kg', 'Naoencontrado.png'),
(121, 'Farinha', 'Mandioca Ioky', '1kg', 'Naoencontrado.png'),
(122, 'Arroz', 'Tio João', '2kg', 'arroztio_joaao2kg.png'),
(123, 'Arroz', 'Tio Jorge', '5kg', 'Naoencontrado.png'),
(124, 'Arroz', 'Cristal', '5kg', 'Naoencontrado.png'),
(125, 'Arroz Lim', '', '5kg', 'Naoencontrado.png'),
(126, 'Arroz', '', '5kg', 'Naoencontrado.png'),
(127, '', 'Alvorada', '1kg', 'Naoencontrado.png'),
(128, 'M', '', '500g', 'Naoencontrado.png'),
(129, '', '', '1lt', 'Naoencontrado.png'),
(130, '', '', '200ml', 'Naoencontrado.png'),
(131, 'Arroz Integral', 'Camil', '5kg', 'naoencontrado.png'),
(132, 'Arroz Integral', 'Flora', '5kg', 'naoencontrado.png'),
(133, 'Feijão', 'Maranata', '1kg', 'naoencontrado.png'),
(134, '', 'Nissin Lamen', '85g', 'naoencontrado.png'),
(135, 'Macarrão Instantâneo', 'Maggi', '80g', 'naoencontrado.png'),
(136, 'Café', 'Forte', '500g', 'naoencontrado.png'),
(137, 'Café', 'Árabia', '500g', 'naoencontrado.png'),
(138, 'Sardinha Em Lata', 'Gomes', '150g', 'naoencontrado.png'),
(139, 'Sardinha Em Lata', 'Coqueiro', '150g', 'naoencontrado.png'),
(140, 'Bala', 'De           Goma', 'und', 'Bala.png'),
(141, 'Bala', 'De                    Mascar', 'und', 'Bala.png'),
(142, 'Biscoito Recheado', 'óreo', '80g', 'Biscoito_Recheado.png'),
(143, 'Biscoito Recheado', 'Passatempo', '90g', 'Biscoito_Recheado.png'),
(144, 'Tablete Chocolate', 'Lacta', '1kg', 'Tablete_Chocolate.png'),
(145, 'Tablete Chocolate', 'NestlÉ', '1kg', 'Tablete_Chocolate.png'),
(146, 'Leite Condensado', 'MoÇa NestlÉ', '150ml', 'Leite_Condensado.png'),
(147, 'Leite Condensado', 'Piracanjuba', '150mlml', 'Leite_Condensado.png'),
(148, 'Panetone', 'NestlÉ', '100g g', 'Panetone.png'),
(149, 'Panetone', 'Italac', '100Gg', 'Panetone.png'),
(150, 'Biscoito', 'Negresco Nestlé', '60g', 'Biscoito.png'),
(151, 'Biscoito', 'Lacta', '100g', 'Biscoito.png'),
(152, 'Biscoito', 'Lacta', '155g', 'Biscoito.png'),
(153, 'Biscoito', 'Lacta', '160g', 'Biscoito.png'),
(154, 'Esmalte', 'Sim', '30g', 'naoencontrado.png'),
(155, 'Lo????o', 'Avon', '100ml', 'naoencontrado.png'),
(156, 'Lo????o', 'Avon', '100ml', 'naoencontrado.png'),
(157, '', 'Atomatados', 'kg', 'naoencontrado.png'),
(158, 'Atomatados', 'Atomatados1', 'kg', 'naoencontrado.png'),
(159, 'Atomatados', 'Atomatados2', 'g', 'naoencontrado.png'),
(160, 'Atomatados', 'Atomatados3', 'g', 'naoencontrado.png'),
(161, 'Atomatados', 'Atomatados4', 'kg', 'naoencontrado.png'),
(162, 'Atomatados', 'Atomatados5', 'ml', 'naoencontrado.png'),
(163, '', 'Atomatados6', 'lata', 'naoencontrado.png'),
(164, 'Atomatados', 'Atomatados7', 'cx', 'naoencontrado.png'),
(165, 'Atomatados', 'Atomatados8', 'und', 'naoencontrado.png'),
(166, 'Atomatados', 'Atomatados9', 'cx', 'naoencontrado.png'),
(167, 'Arroz', 'Gol', '5kg', 'Naoencontrado.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_prod_categoria`
--

CREATE TABLE `cad_prod_categoria` (
  `id_prodcat` int(11) NOT NULL,
  `cat_produto` varchar(60) DEFAULT NULL,
  `id_cat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `cad_prod_categoria`
--

INSERT INTO `cad_prod_categoria` (`id_prodcat`, `cat_produto`, `id_cat`) VALUES
(1, 'Arroz', 1),
(2, 'Arroz Integral', 1),
(3, 'Atomatados', 1),
(4, 'Atum em Lata', 1),
(5, 'Azeite', 1),
(6, 'Azeitona em Conserva', 1),
(7, 'Café Torrado e Moído', 1),
(8, 'Cafés', 1),
(9, 'Caldo em Pó', 1),
(10, 'Caldo em Tablete', 1),
(11, 'Caldos', 1),
(12, 'Catchup', 1),
(13, 'Farinha de Trigo', 1),
(14, 'Farofa Pronta Temperada', 1),
(15, 'Feijão', 1),
(16, 'Macarrão', 1),
(17, 'Macarrão Instantâneo', 1),
(18, 'Maionese', 1),
(19, 'Massa sem Glúten', 1),
(20, 'Milho de Pipoca para Microondas', 1),
(21, 'Milho Verde em Conserva', 1),
(22, 'Molho de Pimenta', 1),
(23, 'Molho de Soja', 1),
(24, 'Molho de Tomate', 1),
(25, 'Molho Pronto para Salada', 1),
(26, 'Mostarda', 1),
(27, 'Óleo de Soja', 1),
(28, 'Óleos', 1),
(29, 'Óleos Especiais', 1),
(30, 'Palmito em Conserva', 1),
(31, 'Sardinha em Lata', 1),
(32, 'Sopa em Envelope', 1),
(33, 'Sopa Instantânea', 1),
(34, 'Sopas', 1),
(35, 'Tempero Pronto em Pasta', 1),
(36, 'Tempero Pronto em Pó', 1),
(37, 'Temperos', 1),
(38, 'Vinagre', 1),
(39, 'Bala', 2),
(40, 'Balas', 2),
(41, 'Biscoito', 2),
(42, 'Cream Craker', 2),
(43, 'Biscoito Integral', 2),
(44, 'Biscoito Recheado', 2),
(45, 'Biscoito Waffer', 2),
(46, 'Bombom', 2),
(47, 'Cereal em Barra ', 2),
(48, 'Cereja em Calda', 2),
(49, 'Chocolate em Tablete', 2),
(50, 'Cookies Integrais ', 2),
(51, 'Gelatina em Pó', 2),
(52, 'Goma de Mascar', 2),
(53, 'Leite Condensado', 2),
(54, 'Mistura para Bolo', 2),
(55, 'Panetone', 2),
(56, 'Produtos sem glúten', 2),
(57, 'Salgadinho ', 2),
(58, 'Achocolatado', 3),
(59, 'Adoçante', 3),
(60, 'Bolo Industrializado', 3),
(61, 'Café Capuccino', 3),
(62, 'Cereais', 3),
(63, 'Cereal Matinal', 3),
(64, 'Leite em Pó', 3),
(65, 'Pão de Forma', 3),
(66, 'Cream Cheese', 4),
(67, 'Iogurte', 4),
(68, 'Iogurte Grego', 4),
(69, 'Iogurte sem Lactose', 4),
(70, 'Lácteos Resfriados', 4),
(71, 'Leite Fermentado', 4),
(72, 'Manteiga', 4),
(73, 'Queijo', 4),
(74, 'Queijo Ralado', 4),
(75, 'Requeijão', 4),
(76, 'Batata Congelada', 5),
(77, 'Frango Resfriado', 5),
(78, 'Frango Congelado', 5),
(79, 'Linguiça Embalada', 5),
(80, 'Mortadela', 5),
(81, 'Pão de Queijo Congelado', 5),
(82, 'Prato Pronto Congelado', 5),
(83, 'Sorvete', 5),
(84, 'Água de Coco', 6),
(85, 'Água Mineral', 6),
(86, 'Energético', 6),
(87, 'Chá', 6),
(88, 'Refresco em Pó', 6),
(89, 'Refrigerante', 6),
(90, 'Suco', 6),
(91, 'Suco Integral ', 6),
(92, 'Aguardente ', 7),
(93, 'Ice', 7),
(94, 'Cerveja', 7),
(95, 'Espumante', 7),
(96, 'Sidra', 7),
(97, 'Vinho', 7),
(98, 'Absorvente', 8),
(99, 'Antisséptico', 8),
(100, 'Aparelho de barbear', 8),
(101, 'Coloração para Cabelo', 8),
(102, 'Condicionador', 8),
(103, 'Creme Dental', 8),
(104, 'Creme', 8),
(105, 'Desodorante', 8),
(106, 'Escova', 8),
(107, 'Esmalte', 8),
(108, 'Fio Dental', 8),
(109, 'Loção', 8),
(110, 'Preservativo Masculino', 8),
(111, 'Protetor Solar', 8),
(112, 'Escova', 8),
(113, 'Sabonete', 8),
(114, 'Shampoo', 8),
(115, 'Talco', 8),
(116, 'Água Sanitária', 9),
(117, 'Alvejante', 9),
(118, 'Cera', 9),
(119, 'Concentrado', 9),
(120, 'Desinfetante', 9),
(121, 'Desodorizador', 9),
(122, 'Creme', 9),
(123, 'Desodorante', 9),
(124, 'Detergente', 9),
(125, 'Esponja', 9),
(126, 'Inseticida ', 9),
(127, 'Odorizador', 9),
(128, 'Pano de Limpeza', 9),
(129, 'Sabão em Barra', 9),
(130, 'Papel Filme', 10),
(131, 'Fralda Descartável', 10),
(132, 'Fralda Geriátrica ', 10),
(133, 'Guardanapo', 10),
(134, 'Papel Alumínio', 10),
(135, 'Papel Higiênico', 10),
(136, 'Papel Toalha', 10),
(137, 'Ração', 11),
(138, 'Eletroportáteis', 11),
(139, 'Escova', 11),
(140, 'Esfregão', 11),
(141, 'Lâmpada fluorescente', 11),
(142, 'Lâmpada', 11),
(143, 'Pilha Alcalina', 11),
(144, 'Pilha Comum', 11),
(145, 'Sandália', 11),
(146, 'Ração', 11),
(147, 'Eletroportáteis', 11),
(148, 'Escova', 11),
(149, 'Esfregão', 11),
(150, 'Lâmpada fluorescente', 11),
(151, 'Lâmpada', 11),
(152, 'Pilha Alcalina', 11),
(153, 'Pilha Comum', 11),
(154, 'Sandália', 11),
(155, 'Talheres', 11),
(156, 'Vassoura', 11),
(197, 'Arroz', 1),
(196, 'Papel HigiÊnico', 10),
(195, 'Raçãoo', 11),
(194, 'Ração', 11),
(162, 'Celular', 7),
(163, 'Arroz Integral', 1),
(164, 'Arroz Integral', 1),
(165, 'Pão De Queijo', 3),
(166, 'Leite Longa Vida Integral ', 1),
(167, 'Panettone Com Frutas ', 2),
(168, 'Cereal Em Barra Com Morango Nuts', 2),
(169, 'Tablete Chocolate', 2),
(170, 'Cereal ', 3),
(171, 'Adoçante Aspartame', 3),
(172, 'Capuccino Classic', 3),
(173, 'Adoçante Sacrulose', 3),
(174, 'Requeijão Cremoso', 4),
(175, 'Margarina ', 4),
(176, 'Mortadela Defumada Fatiada ', 5),
(177, 'Refrigerante Guaraná ', 6),
(178, 'VINHO ITALIANO TINTO', 7),
(179, 'Talco Infantil', 8),
(180, 'Preservativo Masculino Lubrificado ', 8),
(181, 'Detergente Líquido ', 9),
(182, 'Inseticida Aerossol ', 9),
(183, 'Cera Líquida ', 9),
(184, 'ESCOVA DENTAL', 11),
(185, 'Cereal ', 3),
(186, 'Achocolatado', 3),
(187, 'Cereal ', 3),
(188, 'Ração', 11),
(201, '', 1),
(200, 'Escova Dental', 11),
(199, 'Arroz', 1),
(198, 'Arroz', 1),
(202, 'Arroz', 1),
(203, '', 1),
(204, '', 1),
(205, '', 1),
(206, '', 1),
(207, '', 1),
(208, 'Arroz', 1),
(209, 'Arroz', 1),
(210, 'Biscoito Recheado', 2),
(211, 'Café', 1),
(212, 'Loção', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_promocao`
--

CREATE TABLE `cad_promocao` (
  `preco` double(10,2) DEFAULT NULL,
  `id_mercado` int(11) DEFAULT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `validade` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cad_promocao`
--

INSERT INTO `cad_promocao` (`preco`, `id_mercado`, `id_prod`, `validade`) VALUES
(10.99, 1, 7, '03/01/2017'),
(7.88, 1, 8, '03/01/2017'),
(5.66, 1, 9, '04/01/2017'),
(4.55, 1, 10, '05/01/2017'),
(5.66, 1, 11, '05/01/2017'),
(3.45, 1, 12, '22/01/2017'),
(15.90, 8, 7, '07/01/2017'),
(2.25, 8, 122, '06/01/2017'),
(11.95, 8, 123, '06/01/2017'),
(1.95, 8, 124, '06/01/2017'),
(0.89, 8, 17, '06/01/2017'),
(5.00, 8, 18, '06/01/2017'),
(8.00, 11, 130, '18/01/2017'),
(4.90, 11, 129, '10/01/2017'),
(5.00, 11, 128, '10/02/2017'),
(8.90, 11, 127, '10/01/2017'),
(11.80, 11, 126, '10/01/2017'),
(10.90, 11, 125, '10/01/2017');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `login`
--

INSERT INTO `login` (`id_login`, `usuario`, `senha`) VALUES
(1, 'br_lima@live.com', 'br_lima@live.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` text,
  `marca` text,
  `tatico` float DEFAULT NULL,
  `extra` float DEFAULT NULL,
  `atacadao` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `marca`, `tatico`, `extra`, `atacadao`) VALUES
(61, 'Sal', 'Cisne', 0, 5, 0),
(65, 'Acucar', 'Uniao', 9.5, 10.99, 11.69),
(67, 'Macarrao', 'Adria', 3.5, 6.99, 5.69),
(68, 'Macarrao', 'Granoro', 4.5, 4.99, 4.69),
(69, 'Cafe', 'Viana', 2.5, 2.99, 2.69),
(70, 'Arroz', 'Flora', 10.5, 12.99, 12.69),
(71, 'Arroz', 'Namorado', 10.5, 9.99, 10.69),
(72, 'Arroz', 'Cristal', 11.3, 10.25, 9.88),
(73, 'Feijao', 'Cristal', 7.29, 8.99, 9),
(74, 'Biscoito', 'Isabela', 2.1, 1.99, 2),
(75, 'Biscoito', 'Zabet', 3.99, 3.5, 4),
(76, 'Macarrao', 'Petybon', 5, 4.5, 4.99),
(77, 'Macarrao', 'Isabela', 3.99, 3.9, 3.95),
(78, 'Cafe', 'Aro', 3.1, 2.5, 3.69),
(79, 'Sabonete', 'Francis', 1.5, 2, 1.69),
(80, 'Sabonete', 'Phebo', 2, 2.1, 1.99),
(81, 'Sabonete', 'Protex', 2.55, 2.15, 2.99),
(82, 'Refrigerante', 'Fanta', 4.55, 5.15, 4),
(83, 'Refrigerante', 'Sukita', 3.99, 4.25, 3.5),
(84, 'Refrigerante', 'Sprite', 4.99, 4.95, 4.9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `promocao`
--

CREATE TABLE `promocao` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `mercado` varchar(20) DEFAULT NULL,
  `preco` double(10,2) DEFAULT NULL,
  `logo` varchar(10) DEFAULT NULL,
  `foto` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `promocao`
--

INSERT INTO `promocao` (`id`, `nome`, `marca`, `mercado`, `preco`, `logo`, `foto`) VALUES
(1, 'Sal', 'Cisne', 'BARBOSA', 1.99, 'barbosa.pn', 'cisne.png'),
(2, 'Acuca', 'Uniao', 'BARBOSA', 5.99, NULL, 'uniao.png'),
(3, 'Arroz', 'Flora', 'BARBOSA', 11.99, NULL, 'flora.png'),
(4, 'Biscoito', 'Oreo', 'BARBOSA', 1.99, NULL, 'oreo.png'),
(5, 'Feijao', 'Cristal', 'BARBOSA', 6.99, NULL, 'cristal.pn'),
(6, 'Refrigerante', 'Fanta', 'BARBOSA', 4.99, NULL, 'fanta.png'),
(7, 'Sabonete', 'Francis', 'FUTURAMA', 1.39, 'futurama.p', 'francis.pn'),
(8, 'Acuca', 'Uniao', 'FUTURAMA', 4.99, NULL, 'uniao.png'),
(9, 'Arroz', 'Flora', 'FUTURAMA', 12.99, NULL, 'flora.png'),
(10, 'Biscoito', 'Oreo', 'FUTURAMA', 1.69, NULL, 'oreo.png'),
(11, 'Feijao', 'Cristal', 'FUTURAMA', 8.99, NULL, 'cristal.pn'),
(12, 'Refrigerante', 'Fanta', 'FUTURAMA', 3.99, NULL, 'fanta.png'),
(13, 'Sabonete', 'Francis', 'INTER', 1.49, 'inter.png', 'francis.pn'),
(14, 'Acuca', 'Uniao', 'INTER', 5.99, NULL, 'uniao.png'),
(15, 'Arroz', 'Flora', 'INTER', 10.89, NULL, 'flora.png'),
(16, 'Biscoito', 'Oreo', 'INTER', 1.59, NULL, 'oreo.png'),
(17, 'Feijao', 'Cristal', 'INTER', 5.75, NULL, 'cristal.pn'),
(18, 'Refrigerante', 'Fanta', 'INTER', 2.99, NULL, 'fanta.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relatorio`
--

CREATE TABLE `relatorio` (
  `id_relatorio` int(11) NOT NULL,
  `remetente` varchar(100) NOT NULL,
  `email_remetente` varchar(100) NOT NULL,
  `destinatario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `cpf` varchar(14) NOT NULL,
  `tipo` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `curso` varchar(70) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id_aluno`, `nome`, `matricula`, `cpf`, `tipo`, `email`, `curso`, `telefone`) VALUES
(1, 'Bruno Pereira de Lima', NULL, '053.161.841-22', 4, 'br_lima@live.com', NULL, '61-99196-3430');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cad_categoria`
--
ALTER TABLE `cad_categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Índices de tabela `cad_desc`
--
ALTER TABLE `cad_desc`
  ADD PRIMARY KEY (`id_desc`);

--
-- Índices de tabela `cad_endereco`
--
ALTER TABLE `cad_endereco`
  ADD KEY `cad_endereco_fk0` (`id_mercado`),
  ADD KEY `id_mercado` (`id_mercado`);

--
-- Índices de tabela `cad_mercado`
--
ALTER TABLE `cad_mercado`
  ADD PRIMARY KEY (`id_mercado`),
  ADD UNIQUE KEY `razao_social` (`razao_social`),
  ADD UNIQUE KEY `fone` (`fone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cnpj` (`cnpj`),
  ADD UNIQUE KEY `logo` (`logo`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `senha` (`senha`);

--
-- Índices de tabela `cad_preco`
--
ALTER TABLE `cad_preco`
  ADD KEY `cad_preco_fk2` (`id_cat`),
  ADD KEY `cad_preco_fk0` (`id_mercado`),
  ADD KEY `cad_preco_fk1` (`id_prod`),
  ADD KEY `id_prod` (`id_prod`),
  ADD KEY `id_mercado` (`id_mercado`);

--
-- Índices de tabela `cad_produto`
--
ALTER TABLE `cad_produto`
  ADD PRIMARY KEY (`id_prod`);

--
-- Índices de tabela `cad_prod_categoria`
--
ALTER TABLE `cad_prod_categoria`
  ADD PRIMARY KEY (`id_prodcat`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Índices de tabela `cad_promocao`
--
ALTER TABLE `cad_promocao`
  ADD KEY `cad_promocao_fk0` (`id_mercado`),
  ADD KEY `cad_promocao_fk1` (`id_prod`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `senha` (`senha`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `promocao`
--
ALTER TABLE `promocao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `relatorio`
--
ALTER TABLE `relatorio`
  ADD PRIMARY KEY (`id_relatorio`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cad_categoria`
--
ALTER TABLE `cad_categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `cad_desc`
--
ALTER TABLE `cad_desc`
  MODIFY `id_desc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `cad_mercado`
--
ALTER TABLE `cad_mercado`
  MODIFY `id_mercado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de tabela `cad_produto`
--
ALTER TABLE `cad_produto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT de tabela `cad_prod_categoria`
--
ALTER TABLE `cad_prod_categoria`
  MODIFY `id_prodcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT de tabela `promocao`
--
ALTER TABLE `promocao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de tabela `relatorio`
--
ALTER TABLE `relatorio`
  MODIFY `id_relatorio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
