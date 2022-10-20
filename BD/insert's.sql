USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tb_usuarios`
-- -----------------------------------------------------
SELECT * FROM tb_usuarios;

INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario)
VALUES ('Alan Siqueira Matias', 'alamm.hhh@gmail.com', '1234');


CREATE TABLE IF NOT EXISTS `mydb`.`tb_usuarios` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `email_usuario` VARCHAR(255) NULL,
  `senha_usuario` VARCHAR(255) NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `mydb`.`tb_endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_endereco` (
  `id_endereco` INT NOT NULL,
  `cep_endereco` INT NULL,
  `end_endereco` VARCHAR(255) NULL,
  PRIMARY KEY (`id_endereco`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_produtos` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(255) NULL,
  `descicao_produto` VARCHAR(255) NULL,
  `valor_produto` DECIMAL(20) NULL,
  `estoque_produto` INT NULL,
  PRIMARY KEY (`id_produto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_listaProdutos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_listaProdutos` (
  `id_listaProdutos` INT NOT NULL AUTO_INCREMENT,
  `id_produtos` INT NULL,
  PRIMARY KEY (`id_listaProdutos`),
  INDEX `fk_listaprod_produtos_idx` (`id_produtos` ASC),
  CONSTRAINT `fk_listaprod_produtos`
    FOREIGN KEY (`id_produtos`)
    REFERENCES `mydb`.`tb_produtos` (`id_produto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_pedidos` (
  `id_pedido` INT NOT NULL AUTO_INCREMENT,
  `id_usuario` INT NULL,
  `id_listaProdutos` INT NULL,
  `id_endereco` INT NULL,
  `Valor_pedido` DECIMAL(20) NULL,
  PRIMARY KEY (`id_pedido`),
  INDEX `fk_tb_pedidos_tb_usuarios` (`id_usuario` ASC),
  INDEX `fk_tb_pedidos_tb_endereco` (`id_endereco` ASC),
  INDEX `fk_tb_pedidos_tb_listaProdutos` (`id_listaProdutos` ASC),
  CONSTRAINT `fk_tb_pedidos_tb_usuarios`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`tb_usuarios` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_pedidos_tb_endereco`
    FOREIGN KEY (`id_endereco`)
    REFERENCES `mydb`.`tb_endereco` (`id_endereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_pedidos_tb_listaProdutos`
    FOREIGN KEY (`id_listaProdutos`)
    REFERENCES `mydb`.`tb_listaProdutos` (`id_listaProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
