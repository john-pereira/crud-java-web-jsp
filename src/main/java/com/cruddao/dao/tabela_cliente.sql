CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Inserindo dados de emxplo na tabela
--

INSERT INTO `cliente` (`id`, `cpf`, `nome`, `sobrenome`, `email`, `sexo`, `pais`) VALUES
(01, '74589632145', 'José', 'Silva', 'jose@gmail.com', 'Masculino', 'Brasil'),
(02, '22365587412', 'Ana', 'Huck', 'ana@gmail.com', 'Feminino', 'Brasil'),
(03, '42365587101', 'Maria', 'Parreira', 'maria@gmail.com', 'Feminino', 'Brasil');

