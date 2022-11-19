<h4 class="h4 col-md-12 text-center text-muted font-weight-bold">LISTA DE PRODUTOS</h4><br>
<?php
    $sql = "SELECT * FROM tb_produtos";

    $res = $conn->query($sql);

    $qtd =  $res->num_rows;

    if($qtd > 0 ){
        print "<table class='table'>";
        print '
        <thead class="table-secondary table-bordered">
        <tr>
          <th scope="col">ID</th>
          <th scope="col">NOME</th>
          <th scope="col">DESCIÇÃO</th>
          <th scope="col">VALOR</th>
          <th scope="col">ESTOQUE</th>
        </tr>
      </thead> ';
        print "<tbody>";
        while($row = $res->fetch_object()){
            print "<tr>";
            print "<td>".$row->id_produto."</td>";
            print "<td>".$row->nome_produto."</td>";
            print "<td>".$row->descricao_produto."</td>";
            print "<td>".$row->valor_produto."</td>";
            print "<td>".$row->estoque_produto."</td>";
            print "</tr>";
        }
        print "</tbody>";
        print "</table>";
    }else{
        echo("<h1> Nenhum Resultado Encontrado </h1>");
    };
?>