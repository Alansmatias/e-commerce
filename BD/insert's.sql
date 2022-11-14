USE `mydb` ;

-- -----------------------------------------------------
-- Table tb_usuarios
-- -----------------------------------------------------
INSERT INTO tb_usuarios (nome_usuario, email_usuario, senha_usuario)
VALUES ('Alan Siqueira Matias', 'alamm.hhh@gmail.com', '1234');
SELECT * FROM tb_usuarios;

-- -----------------------------------------------------
-- Table tb_endereco
-- -----------------------------------------------------
INSERT INTO tb_endereco (cep_endereco, end_endereco)
VALUES (62300000, 'Rua 123');
SELECT * FROM tb_endereco;


-- -----------------------------------------------------
-- Table tb_produtos
-- -----------------------------------------------------
INSERT INTO tb_produtos (nome_produto, descricao_produto, valor_produto, estoque_produto)
VALUES ('Semente maçã', 'Cresce rapido', 10, 5);
SELECT * FROM tb_produtos;


-- -----------------------------------------------------
-- Table tb_pedidos
-- -----------------------------------------------------
INSERT INTO tb_pedidos (id_usuario, id_endereco, Valor_Pedido)
VALUES (1, 1, 10);

SELECT * FROM tb_endereco;
SELECT * FROM tb_listaprodutos;
SELECT * FROM tb_pedidos;
SELECT * FROM tb_produtos;
SELECT * FROM tb_usuarios;

-- -----------------------------------------------------
-- Table tb_produtos_has_tb_pedidos
-- -----------------------------------------------------
INSERT INTO tb_produtos_has_tb_pedidos (tb_produtos_id_produto, tb_pedidos_id_pedido)
VALUES (1, 1);

select * from tb_produtos_has_tb_pedidos;


