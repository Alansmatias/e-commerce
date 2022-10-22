USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tb_usuarios`
-- -----------------------------------------------------
INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario)
VALUES ('Alan Siqueira Matias', 'alamm.hhh@gmail.com', '1234');
SELECT * FROM tb_usuarios;

-- -----------------------------------------------------
-- Table `mydb`.`tb_endereco`
-- -----------------------------------------------------
INSERT INTO tb_endereco (cep_endereco, end_endereco)
VALUES (62300000, 'Rua 123');
SELECT * FROM tb_endereco;

-- -----------------------------------------------------
-- Table `mydb`.`tb_produtos`
-- -----------------------------------------------------
INSERT INTO tb_produtos (nome_produto, descricao_produto, valor_produto, estoque_produto)
VALUES ('Semente de Canabis', 'Cresce rapido', 10, 5);
SELECT * FROM tb_produtos;

-- -----------------------------------------------------
-- Table `mydb`.`tb_listaProdutos`
-- -----------------------------------------------------
INSERT INTO tb_listaProdutos (id_produtos)
VALUES (1);
SELECT * FROM tb_listaProdutos;

-- -----------------------------------------------------
-- Table `mydb`.`tb_pedidos`
-- -----------------------------------------------------
INSERT INTO tb_pedidos (id_usuario, id_listaProdutos, id_endereco, Valor_pedido)
VALUES (1, 1, 1, 10);
show tables;

SELECT * FROM tb_endereco;
SELECT * FROM tb_listaprodutos;
SELECT * FROM tb_pedidos;
SELECT * FROM tb_produtos;
SELECT * FROM tb_usuarios;


CREATE TABLE IF NOT EXISTS `mydb`.`tb_pedidos` (
  id_pedido INT AUTO_INCREMENT,
  id_usuario INT,
  id_listaProdutos INT,
  id_endereco INT,
  Valor_pedido DECIMAL(20) NULL,
  PRIMARY KEY (id_pedido),
  INDEX fk_tb_pedidos_tb_usuarios (id_usuario ASC),
  INDEX fk_tb_pedidos_tb_endereco (id_endereco ASC),
  INDEX fk_tb_pedidos_tb_listaProdutos (id_listaProdutos ASC),
  CONSTRAINT fk_tb_pedidos_tb_usuarios
    FOREIGN KEY (id_usuario)
    REFERENCES tb_usuarios (id_usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_tb_pedidos_tb_endereco
    FOREIGN KEY (id_endereco)
    REFERENCES tb_endereco (id_endereco)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_tb_pedidos_tb_listaProdutos
    FOREIGN KEY (id_listaProdutos)
    REFERENCES tb_listaProdutos (id_listaProdutos)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
