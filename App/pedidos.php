<h4 class="h4 col-md-12 text-center text-muted font-weight-bold">PEDIDOS</h4><br>
<?php
    $sql = "SELECT * FROM tb_produtos";

    $res = $conn->query($sql);

    $qtd =  $res->num_rows;

    if($qtd > 0 ){
        while($row = $res->fetch_object()){
            print $row->nome_produto;
            print $row->descricao_produto;
            print $row->valor_produto;
            print $row->estoque_produto;
        }
    }else{
        echo("<h1> Nenhum Resultado Encontrado </h1>");
    };




?>