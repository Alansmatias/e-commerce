<?php
    switch ($_REQUEST["acao"]) {
        case 'cadastrar':
            $nome = $_POST["nome"];
            $desc = $_POST["descricao"];
            $valor = $_POST["valor"];
            $estoque = $_POST["estoque"];

            $sql = "INSERT INTO tb_produtos (nome_produto, descricao_produto, valor_produto, estoque_produto) VALUES ('{$nome}', '{$desc}', '{$valor}', '{$estoque}')";

            $res = $conn->query($sql);


            header('Location: index.php');
            break;

        case 'editar':
            # code...
            break;
        case 'excluir':
            # code...
            break;
        
        default:
            # code...
            break;
    }



?>