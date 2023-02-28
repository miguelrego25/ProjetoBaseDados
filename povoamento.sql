USE `projetobd`;

INSERT INTO Responsavel
	(ContribResponsavel, Nome)
    VALUES
    (111111111, 'Maria dos Santos Silvestre'),
    (222222222, 'José Manuel Pires'),
    (333333333, 'Fernando Jacinto Ramos'),
    (293820226, 'André Fernandes Resende'),
    (230578157, 'Fernando Pires Barbosa')
    ;

INSERT INTO Loja
	(IDLoja, Numero, Nome, Tipo, Responsavel_Contrib)
    VALUES
    (1, 12, 'Peixe do Rio', 'Peixe', 111111111),
    (2, 3, 'Horta do Zé', 'Legumes', 222222222),
    (3, 10, 'Frutaria Barbosa', 'Frutas e Legumes', 230578157),
    (4, 13, 'Padaria Milhas', 'Padaria', 293820226)
    ;

INSERT INTO Loja
	(IDLoja, Numero, Tipo, Responsavel_Contrib)
    VALUES
    (5, 6, 'Ferramenta', 333333333)
    ;

INSERT INTO Produto
	(IDProduto, Nome, Descricao, Preco, IVA, Stock, Loja_IDLoja)
    VALUES
    (1, 'Achigã', 'Peixe de clima temperado comum',  1.89, 0.06, 20, 1),
    (2, 'Carpa', 'Peixe comum de média dimensão', 1.49, 0.06, 20, 1),
    (3, 'Enguia', 'Peixe comprido de clima temperado', 2.89, 0.06, 7, 1),
    (4, 'Peixe-Gato', 'Peixe de clima subtropical', 1.99, 0.06, 15, 1),
    (5, 'Salmão do atlântico', 'Peixe do rio com alto valor nutricional', 4.59, 0.06, 8, 1),
    (6, 'Truta-de-Rio', 'Truta comum', 2.99, 0.06, 20, 1)
    ;
    
INSERT INTO Produto
	(IDProduto, Nome, Descricao, Preco, IVA, Stock, Loja_IDLoja)
    VALUES
    (7, 'Cenoura', 'Origem: Portugal', 2.20, 0.06, 50, 2),
    (8, 'Couve-flor', 'Origem: Portugal', 2.19, 0.06, 25, 2),
    (9, 'Pimento Verde', 'Origem: Portugal', 2.89, 0.06, 30, 2),
    (10, 'Agrião 100gr', '100 gramas de agrião. Origem: Portugal', 3.19, 0.06, 20, 2),
    (11, 'Alface', 'Origem: Portugal', 1.19, 0.06, 24, 2),
    (12, 'Beringela', 'Origem: Espanha', 4.29, 0.06, 31, 2)
    ;

INSERT INTO Produto
	(IDProduto, Nome, Descricao, Preco, IVA, Stock, Loja_IDLoja)
	VALUES
    (51, 'Maça Golden', 'A polpa é fina, sucosa, consistente, acidulada e equilibrada. Origem: Beira Alta', 1.99, 0.06, 50, 3),
    (52, 'Banana', 'Alimento versátil e de elevada quantidade de fibra. Origem: Equador e Costa Rica', 1.29, 0.06, 60, 3),
    (53, 'Laranja Nacional', 'O fruto de excelência Algarvio com um elevado teor nutricional antioxidante!', 1.49, 0.06, 70, 3),
    (54, 'Morango', 'Refrescante, doce e muito aromático.Possui um baixo valor energético e um elevado teor de água.', 3.99, 0.06, 20, 3),
    (55, 'Banana da Madeira', 'Alimento versátil e de elevada quantidade de fibra.', 2.99, 0.06, 20, 3),
    (56, 'Kiwi Nacional', 'Excelente equilíbrio de açucares e ácidos. Uma fruta refrescante e revigorante que nos protege durante o Inverno!', 3.29, 0.06, 20, 3),
    (57, 'Limão', 'Cítrico suculento e com um sabor e aroma intensos!', 2.29, 0.06, 25, 3),
    (58, 'Maça Fuji', 'Maçã crocante, com um equilíbrio perfeito entre o doce e o ácido.', 2.29, 0.06, 40, 3),
    (59, 'Uva Branca sem grainha', 'Um fruto muito nutritivo, sem grainha e apreciado pelo seu sabor agradável, leve e peculiar.', 5.99, 0.06, 40, 3),
    (60, 'Cereja', 'Fruto com baixo valor calórico e muito refrescante!', 5.99, 0.06, 35, 3),
    (61, 'Curgete Verde', 'Constituídas essencialmente por água, contêm uma baixa percentagem de gorduras e de proteínas.', 2.29, 0.06, 35, 3),
    (62, 'Cebola', 'Origem: Portugal e Espanha', 2.49, 0.06, 40, 3),
    (63, 'Couve Brócolo', 'Hortícola de baixo valor energético e rica em fibra. Origem: Portugal e Espanha', 2.39, 0.06, 32, 3),
    (64, 'Cenoura', 'Origem: Portugal', 2.56, 0.06, 40, 3),
    (65, 'Alface Frisada', 'Origem: Portugal', 2.78, 0.06, 10, 3),
    (66, 'Tomate em cacho', 'Origem: Portugal e Marrocos', 2.29, 0.06, 26, 3),
    (67, 'Batata Branca (3kg)', 'Saco de 3 kg. Origem: Portugal e França', 3.79, 0.06, 10, 3),
    (68, 'Pepino', 'Origem: Portugal', 2.69, 0.06, 15, 3),
    (69, 'Nabo sem rama', 'Alto teor em água e fibras! Origem: Portugal.', 2.39, 0.06, 25, 3),
    (70, 'Pimento Vermelho', 'Origem: Portugal e Espanha', 2.39, 0.06, 20, 3),
    (71, 'Beringela', 'Sempre presente nas dietas hipocalóricas de emagrecimento já que tem poucas calorias e pode ser confecionada de diferentes formas.', 2.69, 0.06, 30, 3),
    (72, 'Batata Vermelha (3kg)', 'Saco de 3 kg. Origem: Portugal e França', 3.69, 0.06, 15, 3),
    (73, 'Alho Seco', 'Origem: Portugal', 6.20, 0.06, 7, 3),
    (74, 'Tomate Coração de Boi', 'Origem: Portugal', 2.99, 0.06, 20, 3),
    (75, 'Feijão Verde Largo', 'Repleto de vitaminas e sais minerais! Origem: Espanha e Marrocos', 4.99, 0.06, 15, 3),
    (76, 'Pera Rocha', 'De polpa branca, textura firme, doce e crocante que fica macia com o tempo.', 1.79, 0.06, 35, 3),
    (77, 'Manga Maturada', 'Rainha das frutas tropicais! Rica em vitaminas e carotenos! Origem: Brasil', 2.29, 0.06, 15, 3),
    (78, 'Uva Red Globe', 'Origem: Itália e Espanha', 3.99, 0.06, 40, 3),
    (79, 'Romã Nacional', 'Fruta exótica de sabor agridoce, rica em fibras e vitamina C!', 3.89, 0.06, 10, 3),
    (80, 'Clementina', 'Pequeno citrino com grande valor nutricional.', 1.99, 0.06, 38, 3)
    ;

INSERT INTO Produto
	(IDProduto, Nome, Descricao, Preco, IVA, Stock, Loja_IDLoja)
	VALUES
    (31, 'Pão de Trigo', 'Pão de trigo cozinhado em forno de lenha no dia.', 0.11, 0.06, 200, 4),
    (32, 'Broa de Mel', 'Bolo doce e fofo, quente e feito diariamente.', 0.45, 0.06, 10, 4),
    (33, 'Bola de Berlim', 'Bola de Berlim docinha e quente, recheadea com doce de ovo confecionado na loja.', 1.20, 0.06, 15, 4),
    (34, 'Croissant', 'Saboroso seja aquecido com queijo e fiambre ou chocolate!.', 0.89, 0.06, 40, 4),
    (35, 'Bico de Pato', 'Sempre fresco, bom como pequeno almoço ou lanche.', 0.60, 0.06, 30, 4),
    (36, 'Baguete', 'Crocante e fresquinha, temos uma grande variedade desde baguete mista a baguete de atum!', 1.40, 0.06, 25, 4),
    (37, 'Pão do Rio Maior', 'Feito na nosso forno de lenha .', 1.10, 0.06, 15, 4),
    (38, 'Pão do Alentejo', 'Fofo e fresco, de crosta crocante.', 1.30, 0.06, 15, 4),
    (39, 'Mexicano', 'Cobertura de Chocolate deliciosa com doce de ovo saboroso.', 0.80, 0.06, 8, 4),
    (40, 'Panike de Chocolate', 'Um clássico da nossa padaria, um panike quente com recheio de chocolate delicioso.', 1.0, 0.06, 25, 4),
    (41, 'Bolo do Caco', 'Cozido no nosso forno de lenha de forma madeirense tradicional!', 0.65, 0.06, 20, 4),
    (42, 'Tibía', 'Com cobertura de chocolate e um saboroso doce de ovo.', 0.80, 0.06, 12, 4)
    ;

INSERT INTO Produto
	(IDProduto, Nome, Descricao, Preco, IVA, Stock, Loja_IDLoja)
    VALUES
    (19, 'Cabo Enxada 1.30m', 'Cabo para enxada de 1.30 metros', 3.89, 0.13, 20, 5),
    (20, 'Cabo Enxada 1.40m', 'Cabo para enxada de 1.40 metros', 4.29, 0.13, 15, 5),
    (21, 'Tesoura de Poda', 'Tesoura para a poda vermelha ou laranja', 6.29, 0.13, 23, 5),
    (22, 'Pá de Bico', 'Pá em bico com punho Y', 9.99, 0.13, 12, 5),
    (23, 'Pá Quadrada', 'Pá quadrada com punho Y', 11.99, 0.13, 10, 5),
    (24, 'Machado 600gr', 'Machado de 600 gramas com cabo de madeira', 8.99, 0.13, 15, 5)
    ;
    
INSERT INTO Morada
	(IDMorada, Rua, Numero, Andar, CodPostal, Freguesia)
    VALUES
    (1, 'Rua das Alminhas', '87', '2º Dir', '4623-123', 'Gualtar'),
    (2, 'Avenida dos Santos', '56', 'Rc Dir', '4612-334', 'São José'),
    (3, 'Rua dos Rios', '23', 'Rc Esq', '4657-112', 'Enguarda'),
    (4, 'Rua da Malva', '12', '5º Dir', '4689-116', 'Gualtar'),
    (5, 'Rua Sá Cruz', '35', '4º Esq', '4634-257', 'Lomar'),
    (6, 'Rua do Aleixo', '111', '1º Drt', '4608-090', 'Palmeira'),
    (7, 'Rua da Veiga', '196', '5º Esq', '4713-155', 'Gualtar'),
    (8, 'Rua de Baixo', '27', '2º Drt', '4645-052', 'Espinho'),
    (9, 'Rua de Franqueira', '12', '2º Esq', '4733-201', 'São Pedro de Este'),
    (10, 'Rua Augusto Ferreira', '19', '1º Drt', '4608-065', 'Lamaçães'),
    (11, 'Rua Padre Cruz', '143', '5º Drt', '4618-102', 'Ferreiros'),
    (12, 'Rua De Mazagão', '52', '2ºEsq', '4658-305', 'São Mamede'),
    (13, 'Rua da Liberdade', '123', 'rc dto', '4610-014', 'Arcos'),
    (14, 'Rua José Pires Santos', '45', '2º Esq', '4613-089', 'Seia'),
    (15, 'Rua S.Bento', '523', '3ª Drt', '4630-458', 'Valares'),
    (16, 'Rua do Solar', '3', 'Rc Esq', '4678-238', 'Enguarda'),
    (17, 'Rua da Quinta velha', '19', '1º Esq', '4692-456', 'Portozelo'),
    (18, 'Rua Antunes Lobo', '321', '5º Drt', '4605-741', 'Enguarda'),
    (19, 'Rua Fernando Magalhães', '8', '4º Esq', '4655-247', 'São José')
    ;
    
INSERT INTO Morada
	(IDMorada, Rua, Numero, CodPostal, Freguesia)
    VALUES
    (20, 'Avenida Silva Cortez', '24', '4657-233', 'Enguarda'),
    (21, 'Rua do Padre Santos', '556', '4654-122', 'Nogueira'),
    (22, 'Rua das Freiras', '123', '4678-345', 'Lomar'),
    (23, 'Rua Curta', '11', '4658-012', 'Gualtar'),
    (24, 'Rua Longa', '34', '4714-035', 'São José'),
    (25, 'Rua Da Estrada Nova', '113', '4665-075', 'Tenões'),
    (26, 'Travessa da Estrada', '3', '4605-255', 'Nogueira'),
    (27, 'Rua da Coperativa', '14', '4665-043', 'Tenões'),
    (28, 'Rua Luciano da Silva', '130', '4658-035', 'Lomar'),
    (29, 'Rua Da Estrada Velha', '78', '4720-090', 'Gualtar'),
    (30, 'Rua de Cima', '115', '4623-002', 'Espinho'),
    (31, 'Rua da Estrada Velha', '190', '4698-05', 'São José')
    ;

INSERT INTO Viatura
	(Matricula, DUA, Combustivel, Categoria)
    VALUES
    ('PT-35-LU', '1247832434', 'Gasolina', 'B'),
    ('12-KT-DF', '2122345982', 'Gasóleo', 'B'),
    ('34-TT-TI', '9890876321', 'Elétrico', 'B'),
    ('XT-12-RE', '5467890123', 'Gasolina', 'A'),
    ('AL-22-EX', '2229903712', 'Gasóleo', 'B'),
    ('CO-35-DE', '2437100273', 'Gasolina', 'B'),
    ('DA-29-RK', '2938593842', 'Elétrico', 'A1'),
    ('DA-58-VR', '2579684513', 'Gasolina', 'B'),
    ('89-DE-XD', '2846985122', 'Elétrico', 'A1')
    ;

INSERT INTO Funcionario
	(IDFuncionario, Nome, Contacto, Email, DataNascimento, NrCarta, Morada_IDMorada)
    VALUES
    (1, 'Manuela Josefa Mendes', 999999999, 'mjm@mail.com', '1993-09-01', 'BR1946273', 2),
    (2, 'Simão Correia', 988888888, 'simcorre@mail.com', '1982-11-05', 'LD9887832', 6),
    (3, 'Luís Pedro Pinto', 987777777, 'lpp77@mail.com', '1968-04-23', 'BR3364527', 3),
    (4, 'Carlos Pereira Lopes', 987655543, 'cplopes@mail.com', '1979-09-21', 'BR2231234', 31),
    (5, 'Francisco da Silva Pinto', 934764194, 'fdsp@hotmail.com', '2000-02-11', 'BR8732234', 10),
    (6, 'Tomás de Sá Pereira', 914260341, 'tmasper2@gmail.com', '1975-06-30', 'VC6342920', 21),
    (7, 'Pedro Ribeira Martins', 937642803, 'pedreira95@hotmail.com', '1995-04-25', 'LB6950443', 12),
    (8, 'João Fernandes De Abreu', 915371452, 'jkdeabreu@gmail.com', '2000-04-21', 'BR3910462', 29),
    (9, 'Lúcio dos Cravos', 935875205, 'craveiro12@hotmail.com', '1965-09-28', 'BR9037261', 20),
    (10, 'Jorge Miguel Antunes da Silva', 923733915, 'jma1983@hotmail.com', '1983-12-01', 'PT6275483', 1),
    (11, 'Maria Pires Salgueiro', 937512482, 'maria123@gmail.com', '1991-03-21', 'BR8791234', 7),
    (12, 'Joaquim Antunes Rocha', 916485229, 'antunesrocha@hotmail.com', '1987-11-13', 'VC6992157', 23),
    (13, 'Joana Coelho Martins', 939464887, 'jcm456@hotmail.com', '1990-08-30', 'LD6955483', 26)
    ;

INSERT INTO Utiliza
	(IDUtiliza, Funcionario_IDFuncionario, Viatura_Matricula, DataInicio)
    VALUES
    (10, 6, 'PT-35-LU', '2023-01-17 14:15:34'),
    (11, 4, '12-KT-DF', '2023-01-17 14:34:12'),
    (12, 9, '34-TT-TI', '2023-01-17 14:23:23'),
    (13, 1, '89-DE-XD', '2023-01-17 14:21:45'),
    (14, 2, 'DA-58-VR', '2023-01-17 14:41:21'),
    (15, 5, 'XT-12-RE', '2023-01-17 14:15:32')
    ;

INSERT INTO Utiliza
	(IDUtiliza, Funcionario_IDFuncionario, Viatura_Matricula, DataInicio, DataFim)
    VALUES
    (1, 1, 'XT-12-RE', '2022-12-14 15:06:23', '2022-12-14 15:45:21'),
    (2, 1, 'PT-35-LU', '2022-12-14 15:49:11', '2022-12-14 16:04:29'),
    (3, 1, 'XT-12-RE', '2022-12-14 16:14:22', '2022-12-14 16:41:33'),
    (4, 2, 'DA-58-VR', '2022-12-14 15:43:12', '2022-12-14 16:01:20'),
    (5, 2, 'DA-58-VR', '2022-12-14 16:07:27', '2022-12-14 16:24:52'),
    (6, 3, 'AL-22-EX', '2022-12-14 15:01:20', '2022-12-14 15:22:10'),
    (7, 3, 'XT-12-RE', '2022-12-14 16:31:40', '2022-12-14 17:02:42'),
    (8, 4, 'DA-29-RK', '2022-12-14 14:09:22', '2022-12-14 14:38:47'),
    (9, 4, '89-DE-XD', '2022-12-14 17:15:40', '2022-12-14 17:31:22')
    ;

INSERT INTO Cliente
	(ContribCliente, Nome, Email, Contacto, DataNascimento, Cartao, Morada_IDMorada)
    VALUES
    (121212121, 'Maria da Silva Costa', 'masc23@mail.com', 987666666, '1983-02-23', '124567238491', 1),
    (212121212, 'Sofia Santos Sorna', 'sofisanso@mail.com', 987655555, '1988-12-14', '349124823473', 3),
    (343434343, 'Miguel Pereira', 'mipe87@mail.com', 987654444, '1994-03-12', '238479534029', 3),
    (434343434, 'Manuel Luís Sousa', 'mlsss@mail.com', 987654333, '1997-08-23', '274615382910', 4),
    (565656565, 'Filipe Dinis Lopes Branco', 'fdlb12@mail.com', 987654322, '2002-03-24', '901236473823', 10),
    (656565656, 'Sandra Correia', 'sancor@mail.com', 987654321, '2001-09-01', '936253472381', 9),
    (787878787, 'João de Deus Silva', 'jds63@mail.com', 987543211, '1963-02-18', '862345162384', 8),
    (256689013, 'José António Sousa', 'osousa123@hotmail.com', 939199944, '1992-03-15', '223034071352', 13),
    (253974012, 'Joaquina Pinto', 'joqPinto12@hotmail.com', 919023924, '1964-03-17', '512723280486', 14),
    (254876951, 'Raquel Coelho Lima', 'prmemail2@gmail.com', 913658026, '1996-07-28', '303912248253', 15),
    (157984265, 'António Ferreira Freitas', 'antfreit@hotmail.com', 967253523, '1999-03-22', '390351425699', 16),
    (354487752, 'João Pedro Antunes', 'snartjpa@gmail.com', 949584156, '2001-06-14', '247829460227', 17),
    (297860521, 'Carolina Gomes', 'crlgm@gmail.com', 917966743, '2001-03-09', '492807490643', 18),
    (524896536, 'Carlos Lopes Alberto', 'carlosabc93@gmail.com', 963580942, '1993-12-27', '374829560001', 21),
    (159761248, 'Tiago Alexandre Silves Costa', 'tasc456@hotmail.com', 935874668, '1998-11-21', '258974681354', 5),
    (854762549, 'Catarina Pereira ', 'cat2000@hotmail.com', 968874592, '2000-08-01', '468751254986', 16),
    (254876961, 'Tomás Quaresma Silves Nunes', 'tomasqsn@gmail.com', 912254776, '1989-12-04', '359110248752', 17),
    (157984268, 'Diana Pires Loureiro', 'diana890@hotmail.com', 963887513, '2001-09-15', '159875485269', 8),
    (354487721, 'Alberto Ferreira Mendonça', 'albertomendonca@gmail.com', 916684752, '1975-02-11', '157849865201', 29)
    ;

INSERT INTO Cliente
	(ContribCliente, Nome, Email, Contacto, DataNascimento, Morada_IDMorada)
    VALUES
    (878787878, 'José Pires Lopes', 'josepl48@mail.com', 987543211, '1948-02-25', 5),
    (909090909, 'Miranda dos Santos', 'mirasantos@mail.com', 986543211, '1957-04-22', 2),
    (191919191, 'Salomé Pereira', 'salper62@mail.com', 985678123, '1962-09-01', 1),
    (282828282, 'Maria de Jesus Ribeira', 'mjr54@mail.com', 981234567, '1954-12-12', 2)
    ;

INSERT INTO Pedido
	(NrPedido, PrecoFinal, DataPedido, DataPrevista, DataRecebido, DataPagamento, Pago, Funcionario_IDFuncionario, Cliente_ContribCliente)
    VALUES
    (1, 23.43, '2022-11-25 15:02:16', '2022-11-25 15:45:00', '2022-11-25 15:35:00', '2022-11-25 15:02:16', 'S', 1, 121212121),
    (2, 26.90, '2022-11-25 15:32:37', '2022-11-25 15:50:00', '2022-11-25 15:52:39', '2022-11-25 15:32:37', 'S', 3, 254876951),
    (3, 19.16, '2022-11-25 15:22:31', '2022-11-25 15:45:00', '2022-11-25 15:42:11', '2022-11-25 15:22:31', 'S', 5, 854762549),
    (4, 34.99, '2022-11-25 15:44:21', '2022-11-25 16:15:00', '2022-11-25 16:13:25', '2022-11-25 15:44:21', 'S', 2, 157984268),
    (5, 25.08, '2022-11-25 16:14:35', '2022-11-25 16:35:00', '2022-11-25 16:41:23', '2022-11-25 16:14:35', 'S', 8, 434343434),
    (6, 13.12, '2022-11-25 16:37:56', '2022-11-25 16:55:00', '2022-11-25 16:57:16', '2022-11-25 16:57:16', 'S', 7, 909090909)
    ;

INSERT INTO Pedido
	(NrPedido, PrecoFinal, DataPedido, DataPrevista, DataPagamento, Pago, Funcionario_IDFuncionario, Cliente_ContribCliente)
    VALUES
    (7, 9.30, '2022-11-25 16:54:32', '2022-11-25 17:20:00', '2022-11-25 17:18:02', 'S', 5, 157984268),
    (8, 15.37, '2022-11-25 17:11:02', '2022-11-25 17:30:00', '2022-11-25 17:37:25', 'S', 3, 434343434),
    (9, 10.67, '2022-11-25 17:23:45', '2022-11-25 17:45:00', '2022-11-25 17:41:52', 'S', 4, 254876961),
    (10, 12.58, '2022-11-25 17:27:13', '2022-11-25 17:45:00', '2022-11-25 17:43:34', 'S', 9, 354487752)
    ;

INSERT INTO Pedido
	(NrPedido, PrecoFinal, DataPedido, Pago, Funcionario_IDFuncionario, Cliente_ContribCliente)
    VALUES
    (11, 20.47, '2022-11-23 09:02:35', 'N', 12, 354487721),
    (12, 25.27, '2022-12-05 14:24:12', 'N', 6, 212121212)
    ;
    
INSERT INTO IncluidoEm
	(Produto_IDProduto, Pedido_NrPedido, Quantidade, Preco, IVA)
    VALUES
    (72, 1, 1, 3.69, 0.06),
    (79, 1, 2, 3.89, 0.06),
    (6, 1, 4, 2.99, 0.06),
    (36, 2, 5, 1.40, 0.06),
    (51, 2, 10, 1.99, 0.06),
    (60, 3, 2, 5.99, 0.06),
    (62, 3, 1, 2.49, 0.06),
    (67, 3, 1, 3.79, 0.06),
    (32, 3, 2, 0.45, 0.06),
    (24, 4, 1, 8.99, 0.13),
    (38, 4, 20, 1.30, 0.06),
    (57, 5, 2, 2.29, 0.06),
    (8, 5, 2, 2.19, 0.06),
    (9, 5, 1, 2.89, 0.06),
    (1, 5, 7, 1.89, 0.06),
    (3, 6, 3, 2.89, 0.06),
    (34, 6, 5, 0.89, 0.06)
    ;

INSERT INTO IncluidoEm
	(Produto_IDProduto, Pedido_NrPedido, Quantidade, Preco, IVA)
    VALUES
    (42, 7, 2, 0.80, 0.06),
    (37, 7, 7, 1.10, 0.06),
    (61, 8, 2, 2.29, 0.06),
    (73, 8, 1, 6.20, 0.06),
    (5, 8, 1, 4.59, 0.06),
    (10, 9, 2, 3.19, 0.06),
    (20, 9, 1, 4.29, 0.13),
    (21, 10, 2, 6.29, 0.13),
    (5, 11, 2, 4.59, 0.06),
    (7, 11, 3, 2.20, 0.06),
    (31, 11, 10, 0.11, 0.06),
    (36, 11, 2, 1.40, 0.06),
    (8, 11, 1, 2.19, 0.06),
    (20, 12, 1, 4.29, 0.13),
    (23, 12, 1, 11.99, 0.13),
    (24, 12, 1, 8.99, 0.13)
    ;