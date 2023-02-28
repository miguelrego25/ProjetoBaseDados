CREATE SCHEMA IF NOT EXISTS `projetobd`
DEFAULT CHARACTER SET utf8mb4;
SHOW WARNINGS;
USE `projetobd`;

CREATE TABLE IF NOT EXISTS `projetobd`.`Responsavel`(
	`ContribResponsavel` INT UNSIGNED NOT NULL,
    `Nome` VARCHAR(45) NOT NULL,
    
PRIMARY KEY (`ContribResponsavel`));

CREATE TABLE IF NOT EXISTS `projetobd`.`Loja`(
	`IDLoja` INT UNSIGNED NOT NULL,
    `Numero` INT UNSIGNED NOT NULL,
    `Nome` VARCHAR(30),
    `Tipo` VARCHAR(25) NOT NULL,
    `Responsavel_Contrib` INT UNSIGNED NOT NULL,
    
PRIMARY KEY (`IDLoja`, `Responsavel_Contrib`),

CONSTRAINT `fk_Responsavel_Loja` 
	FOREIGN KEY (`Responsavel_Contrib`) REFERENCES `projetobd`.`Responsavel`(`ContribResponsavel`));
    
CREATE TABLE IF NOT EXISTS `projetobd`.`Produto`(
	`IDProduto` INT UNSIGNED NOT NULL,
    `Nome` VARCHAR(45) NOT NULL,
    `Descricao` VARCHAR(200) NOT NULL,
    `Preco` FLOAT NOT NULL,
    `IVA` FLOAT NOT NULL,
    `Stock` INT UNSIGNED NOT NULL,
    `Loja_IDLoja` INT UNSIGNED NOT NULL,
    
PRIMARY KEY (`IDProduto`, `Loja_IDLoja`),

CONSTRAINT `fk_Loja_Produto`
	FOREIGN KEY (`Loja_IDLoja`) REFERENCES `projetobd`.`Loja`(`IDLoja`));
    
CREATE TABLE IF NOT EXISTS `projetobd`.`Morada`(
	`IDMorada` INT UNSIGNED NOT NULL,
    `Rua` VARCHAR(45) NOT NULL,
    `Numero` VARCHAR(10) NOT NULL,
    `Andar` VARCHAR(10),
    `CodPostal` VARCHAR(8) NOT NULL,
    `Freguesia` VARCHAR(45) NOT NULL,

PRIMARY KEY (`IDMorada`));

CREATE TABLE IF NOT EXISTS `projetobd`.`Viatura`(
	`Matricula` VARCHAR(10) NOT NULL,
    `DUA` VARCHAR(20) NOT NULL,
    `Combustivel` VARCHAR(10) NOT NULL,
    `Categoria` VARCHAR(5) NOT NULL,

PRIMARY KEY (`Matricula`));

CREATE TABLE IF NOT EXISTS `projetobd`.`Funcionario`(
	`IDFuncionario` INT UNSIGNED NOT NULL,
    `Nome` VARCHAR(45) NOT NULL,
    `Contacto` INT NOT NULL,
    `Email` VARCHAR(45) NOT NULL,
    `DataNascimento` DATE NOT NULL,
    `NrCarta` VARCHAR(20) NOT NULL,
    `Morada_IDMorada` INT UNSIGNED NOT NULL,

PRIMARY KEY (`IDFuncionario`, `Morada_IDMorada`),

CONSTRAINT `fk_Morada_Func`
	FOREIGN KEY (`Morada_IDMorada`) REFERENCES `projetobd`.`Morada`(`IDMorada`));
    
CREATE TABLE IF NOT EXISTS `projetobd`.`Utiliza`(
	`IDUtiliza` INT UNSIGNED NOT NULL,
	`Funcionario_IDFuncionario` INT UNSIGNED NOT NULL,
    `Viatura_Matricula` VARCHAR(10) NOT NULL,
    `DataInicio` DATETIME NOT NULL,
    `DataFim` DATETIME,

PRIMARY KEY (`IDUtiliza`, `Funcionario_IDFuncionario`, `Viatura_Matricula`),

CONSTRAINT `fk_Funcionario_Utiliza`
	FOREIGN KEY (`Funcionario_IDFuncionario`) REFERENCES `projetobd`.`Funcionario`(`IDFuncionario`),

CONSTRAINT `fk_Viatura_Utilizada`
	FOREIGN KEY (`Viatura_Matricula`) REFERENCES `projetobd`.`Viatura`(`Matricula`));
    
CREATE TABLE IF NOT EXISTS `projetobd`.`Cliente`(
	`ContribCliente` INT UNSIGNED NOT NULL,
    `Nome` VARCHAR(45) NOT NULL,
    `Email` VARCHAR(45) NOT NULL,
    `Contacto` INT NOT NULL,
    `DataNascimento` DATE NOT NULL,
    `Cartao` VARCHAR(12),
    `Morada_IDMorada` INT UNSIGNED NOT NULL,
    
PRIMARY KEY (`ContribCliente`, `Morada_IDMorada`),

CONSTRAINT `fk_Morada_Cliente`
	FOREIGN KEY (`Morada_IDMorada`) REFERENCES `projetobd`.`Morada`(`IDMorada`));

CREATE TABLE IF NOT EXISTS `projetobd`.`Pedido`(
	`NrPedido` INT UNSIGNED NOT NULL,
    `PrecoFinal` FLOAT NOT NULL,
    `DataPedido` DATETIME NOT NULL,
    `DataPrevista` DATETIME,
    `DataRecebido` DATETIME,
    `DataPagamento` DATETIME,
    `Pago` VARCHAR(1),
    `Funcionario_IDFuncionario` INT UNSIGNED NOT NULL,
    `Cliente_ContribCliente` INT UNSIGNED NOT NULL,
    
PRIMARY KEY (`NrPedido`, `Funcionario_IDFuncionario`, `Cliente_ContribCliente`),

CONSTRAINT `fk_Pedido_Func`
	FOREIGN KEY (`Funcionario_IDFuncionario`) REFERENCES `projetobd`.`Funcionario`(`IDFuncionario`),
    
CONSTRAINT `fk_Pedido_Cliente`
	FOREIGN KEY (`Cliente_ContribCliente`) REFERENCES `projetobd`.`Cliente`(`ContribCliente`));
    
CREATE TABLE IF NOT EXISTS `projetobd`.`IncluidoEm`(
	`Produto_IDProduto` INT UNSIGNED NOT NULL,
    `Pedido_NrPedido` INT UNSIGNED NOT NULL,
    `Quantidade` INT UNSIGNED NOT NULL,
	`Preco` FLOAT NOT NULL,
    `IVA` FLOAT NOT NULL,

PRIMARY KEY (`Produto_IDProduto`, `Pedido_NrPedido`),

CONSTRAINT `fk_Produto_Em`
	FOREIGN KEY (`Produto_IDProduto`) REFERENCES `projetobd`.`Produto`(`IDProduto`),

CONSTRAINT `fk_Pedido_Tem`
	FOREIGN KEY (`Pedido_NrPedido`) REFERENCES `projetobd`.`Pedido`(`NrPedido`));
    