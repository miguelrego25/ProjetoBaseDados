USE `projetobd`;

CREATE VIEW Clientes
AS
	SELECT ContribCliente AS 'Contribuinte',
		   Nome, Email, Contacto, Rua, Numero, Andar, CodPostal, Freguesia 
           FROM Cliente
           LEFT JOIN Morada
		   ON Cliente.Morada_IDMorada = Morada.IDMorada;

CREATE VIEW Lojas
AS
	SELECT IDLoja AS 'Id',
		   Numero AS 'Número', Loja.Nome, Tipo, Responsavel.Nome AS 'Responsável'
           FROM Loja
           INNER JOIN Responsavel
           ON Loja.Responsavel_Contrib = Responsavel.ContribResponsavel;

CREATE VIEW Funcionarios
AS
	SELECT IDFuncionario AS 'Id',
		   Nome, Email, Contacto, Rua, Numero, Andar, CodPostal, Freguesia 
           FROM Funcionario
           LEFT JOIN Morada
		   ON Funcionario.Morada_IDMorada = Morada.IDMorada;

