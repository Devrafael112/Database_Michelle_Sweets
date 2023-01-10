-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nome_cliente` VARCHAR(80) NOT NULL,
  `telefone_cliente` VARCHAR(12) NOT NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idclientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`pedidos` (
  `idpedidos` INT NOT NULL AUTO_INCREMENT,
  `valor_total` DECIMAL(5,2) NOT NULL,
  `data_pedido` DATE NOT NULL,
  `data_para_entrega` DATE NOT NULL,
  `qtd_produto` INT NOT NULL,
  `clientes_idclientes` INT NOT NULL,
  PRIMARY KEY (`idpedidos`),
  INDEX `fk_pedidos_clientes1_idx` (`clientes_idclientes` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_clientes1`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `mydb`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`andamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`andamento` (
  `idandamento` INT NOT NULL AUTO_INCREMENT,
  `descricao_andamento` VARCHAR(45) NOT NULL,
  `pedidos_idpedidos` INT NOT NULL,
  PRIMARY KEY (`idandamento`),
  INDEX `fk_andamento_pedidos1_idx` (`pedidos_idpedidos` ASC) VISIBLE,
  CONSTRAINT `fk_andamento_pedidos1`
    FOREIGN KEY (`pedidos_idpedidos`)
    REFERENCES `mydb`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(100) NOT NULL,
  `valor` DECIMAL(5,2) NOT NULL,
  `componentes` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idprodutos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`itens_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`itens_pedido` (
  `pedidos_idpedidos` INT NOT NULL,
  `produtos_idprodutos` INT NOT NULL,
  `sabor_massa` VARCHAR(45) NOT NULL,
  `recheio` VARCHAR(45) NOT NULL,
  `arte` VARCHAR(45) NOT NULL,
  `adicionais` VARCHAR(45) NULL,
  `observacao` VARCHAR(200) NULL,
  `imagem_ref` BLOB NULL,
  `data_entrega` DATE NULL,
  `pedidos_qtd_produto` INT NULL,
  INDEX `fk_pedidos_andamento_pedidos_idx` (`pedidos_idpedidos` ASC) VISIBLE,
  PRIMARY KEY (`pedidos_idpedidos`, `produtos_idprodutos`),
  INDEX `fk_itens pedido_produtos1_idx` (`produtos_idprodutos` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_andamento_pedidos`
    FOREIGN KEY (`pedidos_idpedidos`)
    REFERENCES `mydb`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_itens pedido_produtos1`
    FOREIGN KEY (`produtos_idprodutos`)
    REFERENCES `mydb`.`produtos` (`idprodutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`forma_pagamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`forma_pagamento` (
  `idforma_pagamento` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `forma de pagamentocol` VARCHAR(45) NULL,
  `pedidos_idpedidos` INT NOT NULL,
  PRIMARY KEY (`idforma_pagamento`),
  INDEX `fk_forma_pagamento_pedidos1_idx` (`pedidos_idpedidos` ASC) VISIBLE,
  CONSTRAINT `fk_forma_pagamento_pedidos1`
    FOREIGN KEY (`pedidos_idpedidos`)
    REFERENCES `mydb`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
