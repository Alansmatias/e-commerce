<html>
<h4 class="h4 col-md-12 text-center text-muted font-weight-bold">CADASTRO DE SEMENTES</h4><br>

<form action="?page=salvar" method="POST">
<input type="hidden" name="acao" value="cadastrar">

<div class="form-group row">
  <label for="#" class="col-sm-2 col-form-label">Nome</label>
  <div class="col-sm-10">
    <input type="text" class="form-control" placeholder="Nome da Semente" name="nome">
  </div>
</div>
<div class="form-group row">
  <label for="#" class="col-sm-2 col-form-label">Descrição</label>
  <div class="col-sm-10">
    <textarea class="form-control" placeholder="Descrição da Semente" style="height: 5em;" name="descricao" ></textarea>
  </div>
</div>
<div class="form-group row">
  <label for="#" class="col-sm-2 col-form-label">Valor</label>
  <div class="col-sm-5">
    <input type="number" class="form-control" placeholder="Preço da Semente" name="valor">
  </div>
</div>
<div class="form-group row">
  <label for="#" class="col-sm-2 col-form-label">Estoque</label>
  <div class="col-sm-5">
    <input type="number" class="form-control" placeholder="Quantidade em Estoque" name="estoque">
  </div>
</div>
<div class="form-group row">
  <div class="col-sm-10 mt-4">
    <button type="submit" class="btn btn-primary">Cadastrar</button>
  </div>
</div>
</form>

<script>
  function menuAtual() {
    var elem = document.getElementById("menuProduto");
            
      // Adicionando classe ao elemento div
      elem.classList.add("colorlib-active"); 
  }
  menuAtual();

</script>


</html>