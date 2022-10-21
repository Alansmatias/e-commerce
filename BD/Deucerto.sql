CREATE DATABASE BANCOTESTE;
use BANCOTESTE;

CREATE TABLE tb_usuarios (
  id_usuario INT AUTO_INCREMENT,
  nome_usuario VARCHAR(255),
  email_usuario VARCHAR(255),
  senha_usuario VARCHAR(255),
  PRIMARY KEY (id_usuario)
  );
  
  CREATE TABLE tb_pedidos(
  id_pedido INT AUTO_INCREMENT,
  id_usuario INT,
  id_listaProdutos INT,
  id_endereco INT,
  Valor_pedido DECIMAL(20),
  PRIMARY KEY (id_pedido),
  INDEX fk_tb_pedidos_tb_usuarios (id_usuario ASC),
  CONSTRAINT fk_tb_pedidos_tb_usuarios
    FOREIGN KEY (id_usuario)
    REFERENCES tb_usuarios (id_usuario)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );
INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario)
VALUES ('Alan Siqueira Matias', 'alamm.hhh@gmail.com','123');
select * from tb_usuarios;
  
INSERT INTO tb_pedidos (id_usuario, id_listaProdutos, id_endereco, Valor_pedido)
VALUES (1, 1, 1, 10);
select * from tb_pedidos;


INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario)
VALUES ('Alan Siqueira Matias', 'alamm.hhh@gmail.com', '1234');
SELECT * FROM tb_usuarios;