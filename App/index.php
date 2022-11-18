<!doctype html>
<html lang="pt-BR">
  <head>
  	<title>Semestes da Serra</title>
	<meta name="author" content="Alan Siqueira Matias">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" style="background: white;"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight bg-dark">
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li class="" style="white-space: nowrap"><a class="text-light" href="?page=pedidos" id="testeg"><i class="fa-solid fa-clipboard-list"></i> PEDIDOS</a></li>
		    		<li class="" style="white-space: nowrap"><a class="text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"><i class="fa-solid fa-box-open"></i> PRODUTO</a>
		    		<div class="dropdown-menu text-light bg-secondary" aria-labelledby="navbarDropdown" style="padding: 0;">
						<a class="text-light m-2 row" href="?page=cadastrarproduto" style="white-space: nowrap">CADASTRAR</a>
		          		<a class="text-light m-2 row" href="#" style="white-space: nowrap">EDITAR</a>
					</div>
					</li>
					<li><a class="text-light" href="#" style="white-space: nowrap"><i class="fa-solid fa-comments"></i> COMENTÁRIOS</a></li>



				</ul>
			</nav>
		</aside> <!-- END COLORLIB-ASIDE -->

		<div id="colorlib-main" class="bg-white">
			<?php
				include("config.php");

				if (empty($_REQUEST)) {
				}else{
				switch ($_REQUEST['page']) {
					case "cadastrarproduto":
						include 'cadastroProduto.php';
						break;
					case "pedidos":
						include 'pedidos.php';
						break;
					case "salvar":
						include 'salvar-produto.php';
						break;
					default:
						break;
				}
				}
				
			?>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

	</section>
	<script src="js/jquery.min.js"></script>
  	<script src="js/popper.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<script src="js/main.js"></script>
  	<script src="https://kit.fontawesome.com/791479aa38.js" crossorigin="anonymous"></script>

	</body>
</html>

