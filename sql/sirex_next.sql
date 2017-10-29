-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 29/10/2017 às 18:32
-- Versão do servidor: 10.1.19-MariaDB
-- Versão do PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sirex_next`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `colaborador`
--

CREATE TABLE `colaborador` (
  `id_colaborador` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `funcao` varchar(50) DEFAULT NULL,
  `curso_setor` varchar(50) DEFAULT NULL,
  `carga_horario` varchar(10) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `colaborador`
--

INSERT INTO `colaborador` (`id_colaborador`, `id_aluno`, `nome`, `funcao`, `curso_setor`, `carga_horario`, `tipo`) VALUES
(1, 1, 'ZxZ', 'xZXZ', 'xZxZ', '123', 'TÃ©cnico(s) Administrativo'),
(2, 1, 'ZxZ', 'xZXZ', 'xZxZ', '123', 'Docente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `proposta`
--

CREATE TABLE `proposta` (
  `id_proposta` int(11) NOT NULL,
  `id_usuario_proposta` int(11) DEFAULT NULL,
  `titulo_atividade` varchar(50) DEFAULT NULL,
  `modalidade_extensao` varchar(30) DEFAULT NULL,
  `area_tematica` varchar(30) DEFAULT NULL,
  `unidade` varchar(30) DEFAULT NULL,
  `curso_setor` varchar(30) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `regime_trabalho` char(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `justificativa` text,
  `objetivos` text,
  `metodologia` text,
  `local_atividade` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `duracao_horas` time DEFAULT NULL,
  `estado_proposta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `proposta`
--

INSERT INTO `proposta` (`id_proposta`, `id_usuario_proposta`, `titulo_atividade`, `modalidade_extensao`, `area_tematica`, `unidade`, `curso_setor`, `nome`, `regime_trabalho`, `email`, `telefone`, `justificativa`, `objetivos`, `metodologia`, `local_atividade`, `data_inicio`, `data_fim`, `duracao_horas`, `estado_proposta`) VALUES
(1, 1, 'Mundo T.I', 'Programa', 'Evento', 'selecione', 'Sistemas de Informacao', 'Joao', 'T', 'jooti@unidesc.edu.com', '999999999', 'Desc 1', 'Desc 2', 'Desc 3', 'Ocidental', '0000-00-00', '0000-00-00', '00:00:07', 1),
(2, 1, '', 'selecione', 'selecione', 'selecione', '', '', 's', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '00:00:00', 1);

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
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id_aluno`, `nome`, `matricula`, `cpf`, `tipo`, `email`, `curso`, `telefone`, `senha`) VALUES
(1, 'Bruno Lima', NULL, '053.161.841-55', 2, 'br_lima@live.com', NULL, '99999999999', 'br_lima@live.com');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`id_colaborador`);

--
-- Índices de tabela `proposta`
--
ALTER TABLE `proposta`
  ADD PRIMARY KEY (`id_proposta`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_aluno`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `id_colaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `proposta`
--
ALTER TABLE `proposta`
  MODIFY `id_proposta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
