-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 20/05/2024 às 21:19
-- Versão do servidor: 8.2.0
-- Versão do PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `store`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nome`, `endereco`, `email`, `telefone`) VALUES
(1, 'Alzira', 'Rua Dona Hilda', 'alzira1968@uorak.com', '(48) 2725-1226'),
(2, 'Nazia', 'Rua Dário Aguiar', 'nazia9881@uorak.com', '(45) 3828-8106'),
(3, 'phvb', 'Rua Dona Antonieta', 'phvb@aluno.ifnmg.edu.br', '(88) 2733-1336'),
(4, 'Eudoxia', 'Rua Manoel Eudóxio Pereira', 'eudoxia@uorak.com', '(84) 2662-3885'),
(5, 'Helida', 'Rua 6', 'helidapvaz@hotmail.com', '(65) 3593-6610'),
(6, 'Auricelia', 'Rua 31 de dezembro', 'auricelia@gmail.com', '(99) 2684-3383'),
(7, 'Gisella', 'Rua São Francisco', 'gisellavaladares@gmail.com', '(88) 3450-3053'),
(8, 'Soares', 'Travessa Salete', 'soares@gmail.com', '(83) 3654-7433'),
(9, 'Giovanna', 'Rua Santa Inês', 'giovanna@gmail.com', '(61) 3473-6035'),
(10, 'Eduardo', 'Avenida Professora Virgínia Cardoso Souza', 'eduardo7815@uorak.com', '(64) 2223-5918'),
(11, 'José', 'Parque Jonas Ramos', 'jose@gmail.com', '(95) 2111-7519'),
(12, 'Geraldo', 'Caminho 30', 'geraldo@uorak.com', '(67) 3927-4054'),
(13, 'Davi', 'Caminho Dez', 'davi@uorak.com', '(79) 3134-2772'),
(14, 'machado', 'Rua Dois', 'machado@uorak.com', '(83) 3872-9533'),
(15, 'Lucas', 'Rua Vinte e Dois', 'lucas@uorak.com', '(83) 3491-1724'),
(16, 'Higor', 'Rua João Pessoa 29', 'higor@gmail.com', '(69) 3370-6228'),
(17, 'Joaquim', 'Travessa Floriano Peixoto', 'joaquim@uorak.com', '(35) 3489-6554'),
(18, 'Maranhão', 'Rua João Caetano', 'maranhao@uorak.com', '(35) 2662-2520'),
(19, 'Barbosa', 'Travessa Imperatriz', 'barbosa@uorak.com', '(85) 2889-7237'),
(20, 'Carlito', 'Rua Dona Hilda', 'carlito8@uorak.com', '(00) 0041-0041');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `ID_pedido` int NOT NULL AUTO_INCREMENT,
  `data_pedido` date NOT NULL,
  `status_pedido` varchar(50) DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  PRIMARY KEY (`ID_pedido`),
  KEY `cliente_id` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`ID_pedido`, `data_pedido`, `status_pedido`, `cliente_id`) VALUES
(1, '2024-05-01', 'Pendente', 1),
(2, '2024-05-02', 'Concluído', 2),
(3, '2024-05-03', 'Cancelado', 3),
(4, '2024-05-04', 'Pendente', 4),
(5, '2024-05-05', 'Concluído', 5),
(6, '2024-05-06', 'Cancelado', 6),
(7, '2024-05-07', 'Pendente', 7),
(8, '2024-05-08', 'Concluído', 8),
(9, '2024-05-09', 'Cancelado', 9),
(10, '2024-05-10', 'Pendente', 10),
(11, '2024-05-11', 'Concluído', 11),
(12, '2024-05-12', 'Cancelado', 12),
(13, '2024-05-13', 'Pendente', 13),
(14, '2024-05-14', 'Concluído', 14),
(15, '2024-05-15', 'Cancelado', 15),
(16, '2024-05-16', 'Pendente', 16),
(17, '2024-05-17', 'Concluído', 17),
(18, '2024-05-18', 'Cancelado', 18),
(19, '2024-05-19', 'Pendente', 19),
(20, '2024-05-20', 'Concluído', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL,
  `nome_produto` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao_produto` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco_produto` double NOT NULL,
  `quantidade_produto` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome_produto`, `descricao_produto`, `preco_produto`, `quantidade_produto`) VALUES
(1, 'Camiseta básica branca', 'Camiseta 100% algodão, ideal para uso diário.', 29.99, 50),
(2, 'Calça jeans slim', 'Calça jeans azul escuro, corte slim, com detalhes desgastados.', 59.99, 30),
(3, 'Blusa de moletom com capuz', 'Blusa de moletom cinza, com capuz e bolsos frontais.', 39.99, 40),
(4, 'Vestido estampado floral', 'Vestido curto com estampa floral, decote em V e alças finas.', 49.99, 25),
(5, 'Jaqueta de couro sintético', 'Jaqueta preta de couro sintético com zíper frontal e bolsos laterais.', 79.99, 20),
(6, 'Camisa social listrada', 'Camisa social masculina listrada, tecido leve e confortável.', 34.99, 35),
(7, 'Saia plissada midi', 'Saia plissada preta de comprimento midi, cintura alta.', 44.99, 15),
(8, 'Bermuda cargo masculina', 'Bermuda cargo em algodão, com múltiplos bolsos e fecho de zíper.', 24.99, 50),
(9, 'Blusa cropped com estampa', 'Blusa cropped branca com estampa frontal de folhas, decote redondo.', 19.99, 30),
(10, 'Calça de moletom', 'Calça de moletom cinza mescla, elástico na cintura e nas barras.', 29.99, 40),
(11, 'Blazer slim fit', 'Blazer masculino azul marinho, corte slim fit, ideal para ocasiões formais.', 89.99, 20),
(12, 'Vestido longo de festa', 'Vestido longo vermelho com detalhes em renda, decote profundo nas costas.', 129.99, 10),
(13, 'Regata esportiva masculina', 'Regata masculina para prática esportiva, tecido respirável e secagem rápida.', 14.99, 60),
(14, 'Shorts jeans destroyed', 'Shorts jeans curto com detalhes destroyed e barrinha desfiada.', 34.99, 25),
(15, 'Cardigan de tricô', 'Cardigan de tricô cinza claro, com botões frontais e bolsos.', 54.99, 20),
(16, 'Vestido tubinho preto', 'Vestido tubinho preto básico, comprimento curto e decote em U.', 39.99, 30),
(17, 'Jaqueta corta-vento', 'Jaqueta corta-vento masculina em nylon, com capuz dobrável.', 49.99, 25),
(18, 'Blusa de manga longa listrada', 'Blusa feminina de manga longa listrada em tons de azul e branco.', 24.99, 35),
(19, 'Calça legging fitness', 'Calça legging para atividades físicas em tecido elástico e respirável.', 19.99, 45),
(20, 'Tênis casual masculino', 'Tênis casual em couro sintético marrom, solado antiderrapante.', 64.99, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas_resumo`
--

DROP TABLE IF EXISTS `vendas_resumo`;
CREATE TABLE IF NOT EXISTS `vendas_resumo` (
  `ID_venda_resumo` int NOT NULL AUTO_INCREMENT,
  `total_vendas` decimal(10,2) DEFAULT NULL,
  `numero_itens_vendidos` int DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  PRIMARY KEY (`ID_venda_resumo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `vendas_resumo`
--

INSERT INTO `vendas_resumo` (`ID_venda_resumo`, `total_vendas`, `numero_itens_vendidos`, `data_venda`) VALUES
(1, 100.50, 2, '2024-05-01'),
(2, 75.25, 1, '2024-05-02'),
(3, 200.00, 4, '2024-05-03'),
(4, 45.75, 3, '2024-05-04'),
(5, 150.00, 2, '2024-05-05'),
(6, 90.60, 1, '2024-05-06'),
(7, 300.25, 5, '2024-05-07'),
(8, 50.75, 2, '2024-05-08'),
(9, 80.25, 3, '2024-05-09'),
(10, 25.50, 1, '2024-05-10'),
(11, 120.75, 2, '2024-05-11'),
(12, 180.00, 3, '2024-05-12'),
(13, 60.25, 1, '2024-05-13'),
(14, 95.50, 2, '2024-05-14'),
(15, 135.75, 3, '2024-05-15'),
(16, 40.25, 1, '2024-05-16'),
(17, 55.50, 2, '2024-05-17'),
(18, 70.75, 3, '2024-05-18'),
(19, 85.25, 4, '2024-05-19'),
(20, 110.50, 2, '2024-05-20');

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
