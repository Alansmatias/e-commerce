-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tb_endereco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_endereco` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_endereco` (
  `id_endereco` INT NOT NULL AUTO_INCREMENT,
  `cep_endereco` INT NULL,
  `end_endereco` VARCHAR(255) NULL,
  PRIMARY KEY (`id_endereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_usuarios` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_usuarios` (
  `id_usuario` INT(100) NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(200) NOT NULL,
  `email_usuario` VARCHAR(200) NOT NULL,
  `senha_usuario` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_pedidos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_pedidos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_pedidos` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT(100) NOT NULL,
  `id_endereco` INT NOT NULL,
  `Valor_pedido` DECIMAL(20) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `fk_tb_pedidos_endereco` (`id_endereco` ASC),
  INDEX `fk_tb_pedidos_tb_usuarios_idx` (`id_usuario` ASC),
  CONSTRAINT `fk_tb_pedidos_tb_endereco`
    FOREIGN KEY (`id_endereco`)
    REFERENCES `mydb`.`tb_endereco` (`id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_pedidos_tb_usuarios`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`tb_usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_produtos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_produtos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_produtos` (
  `id_produto` INT(100) NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(255) NOT NULL,
  `descricao_produto` VARCHAR(255) NOT NULL,
  `valor_produto` DECIMAL(20) NOT NULL,
  `estoque_produto` INT NOT NULL,
  PRIMARY KEY (`id_produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_produtos_has_tb_pedidos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`tb_produtos_has_tb_pedidos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`tb_produtos_has_tb_pedidos` (
  `tb_produtos_id_produto` INT(100) NOT NULL,
  `tb_pedidos_id_pedido` INT NOT NULL,
  PRIMARY KEY (`tb_produtos_id_produto`, `tb_pedidos_id_pedido`),
  INDEX `fk_tb_produtos_has_tb_pedidos_tb_pedidos1_idx` (`tb_pedidos_id_pedido` ASC),
  INDEX `fk_tb_produtos_has_tb_pedidos_tb_produtos1_idx` (`tb_produtos_id_produto` ASC),
  CONSTRAINT `fk_tb_produtos_has_tb_pedidos_tb_produtos1`
    FOREIGN KEY (`tb_produtos_id_produto`)
    REFERENCES `mydb`.`tb_produtos` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_produtos_has_tb_pedidos_tb_pedidos1`
    FOREIGN KEY (`tb_pedidos_id_pedido`)
    REFERENCES `mydb`.`tb_pedidos` (`id_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;