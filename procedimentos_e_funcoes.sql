USE `projetobd`;

DELIMITER $$
CREATE PROCEDURE produtosLoja(IN Id INT)
	BEGIN
		SELECT IDProduto AS 'Id', Nome, Descricao AS 'Descrição', Preco AS 'Preço', IVA, Stock
        FROM Produto
        WHERE Loja_IDLoja = Id;
    END 
$$

DELIMITER $$
CREATE PROCEDURE viaturasUtilizadas(IN IdFunc INT)
	BEGIN
		SELECT Viatura_Matricula AS 'Matrícula', DUA, Combustivel AS 'Combustível', Categoria , 
						DataInicio AS 'Data Início', DataFim AS 'Data Fim'
        FROM Utiliza
        INNER JOIN Viatura ON (Utiliza.Funcionario_IDFuncionario = IdFunc AND Utiliza.Viatura_Matricula = Viatura.Matricula);
	END
$$

DELIMITER $$
CREATE PROCEDURE freguesiastop5()
	BEGIN
		SELECT Freguesia, COUNT(Freguesia) AS NrPedidos
        FROM Clientes
        INNER JOIN Pedido ON Clientes.Contribuinte = Pedido.Cliente_ContribCliente
        GROUP BY Freguesia
        ORDER BY NrPedidos DESC
        LIMIT 5
        ;
	END
$$

DELIMITER $$
CREATE FUNCTION lucroLoja 
		(IdLoja INT)
		RETURNS DECIMAL(10,2)
		DETERMINISTIC
    BEGIN
		DECLARE lucrototal DECIMAL(10,2);
        SELECT SUM(IncluidoEm.Preco*IncluidoEm.Quantidade) INTO lucrototal
			FROM IncluidoEm
            INNER JOIN Produto ON Produto_IDProduto = IDProduto
            WHERE Loja_IDLoja = IdLoja;
		RETURN lucrototal;
	END
$$

DELIMITER $$
CREATE FUNCTION nrPedidosLoja
		(IdLoja INT)
        RETURNS INT
        DETERMINISTIC
	BEGIN
		DECLARE nr INT;
		SELECT COUNT(DISTINCT NrPedido) INTO nr
        FROM Pedido
        INNER JOIN IncluidoEm ON NrPedido = Pedido_NrPedido
			INNER JOIN Produto ON Produto_IDProduto = IDProduto
		WHERE Produto.Loja_IDLoja = IdLoja;
        RETURN nr;
	END
$$
    