<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">

		<title>The Division Games</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/bootstrap.css">

		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
		
		<script src="js/mask.js"></script>

	</head>


	<body>

		<div id="site-content">
			<div class="site-header">
				<div class="container">
					<div class="row">
						<a href="index.jsp" id="branding">
							<img src="image/logo.png" alt="" class="logo" height="50">
						</a> <!-- #branding -->
					</div>
				</div> <!-- .container -->
			</div> <!-- .site-header -->
			<div class="main-content">
				<div class="container">
					<div class="page">
						<div class="container">
							<form action="CadastrarUsuario" method="post" class="form-horizontal" id="clienteForm">
								<div class="row">
									<h2>Identificação</h2>
									<span>Cadastre-se! Aproveite promoções, ofertas exclusivas e agilize suas compras com seus dados salvos</span>
								</div>
								<hr>
								<div class="row">
								<fieldset class="col-md-6 col-sm-8 col-sm-push-2 col-md-push-3">
									<legend>Conta</legend>
									<div class="form-group">
										<label class="label-control" for="emailInput">E-mail</label>
										<input class="form-control" type="email" id="emailInput" name="emailInput" placeholder="email@exemplo.com" autofocus data-container="body" 
										data-toggle="popover" data-placement="auto right" data-trigger="hover" required="required"
										data-content="O e-mail é importante para o acompanhamento do seu pedido.Também é sua identificação única para acessar o site">
									</div>
									<div class="form-group">
										<label class="label-control" for="passwordInput">Senha</label>
										<input class="form-control" type="password" id="passwordInput" name="passwordInput" minlength="6" required="required">
									</div>
									<div class="form-group">
										<label class="label-control" for="confirmaInput">Confirme a Senha</label>
										<input class="form-control" type="password" id="confirmaInput" name="confimarInput" minlength="6" data-container="body" data-toggle="popover" data-placement="auto right" data-content="Digite novamente sua senha" data-trigger="hover" data-match="#passwordInput">
									</div>
									<legend>Dados Pessoais</legend>
									<div class="form-group">
										<label class="label-control" for="nomeInput">Nome Completo</label>
										<input class="form-control" type="text" id="nomeInput" name="nomeInput" maxlength="200" required="required">
									</div>
									<div class="form-group">
										<label class="label-control" for="cpfInput">CPF</label>
										<input class="form-control" type="text" id="cpfInput" name="cpfInput" maxlength="14" autocomplete="off" data-container="body" data-toggle="popover" data-placement="auto right" data-content="O CPF deve ser o de quem está comprando." title="Digite apenas números, sem pontos ou traços" data-trigger="hover" placeholder="___.___.___-__" onkeypress="js:formatar('###.###.###-##',this);" autocomplete="off" required="required">
									</div>
									<div class="form-group">
										<label for="telInput" class="label-control">Telefone para contato</label>
										<input type="text" class="form-control" id="telInput" name="telInput" maxlength="15" data-container="body" data-toggle="popover" data-placement="auto right" data-content="Caso haja dificuldades na entrega, entraremos em contato com você." title="Cadastre um telefone de fácil contato" data-trigger="hover" placeholder="(__) _____-____" required="required">
									</div>
									<legend>Endereço</legend>
									<div class="form-group">
										<label class="label-control" for="cepInput">CEP</label>
										<input class="form-control" type="text" id="cepInput" name="cepInput" maxlength="9" autocomplete="off" placeholder="_____-___" onkeypress="formatar('#####-###', this);" required="required">
										<div class="text-right">
											<a href="http://www.buscacep.correios.com.br/sistemas/buscacep/" target="_blank">Não sei meu CEP</a>
										</div>
									</div>
									<p id="wait">Procurando CEP..</p>
									<div id="endereco">
										<div class="form-group">
											<label class="label-control" for="logradouroInput">Logradouro</label>
											<input class="form-control" type="text" id="logradouroInput" name="logradouroInput" readonly="readonly" required="required">
										</div>
										<div class="form-group">
											<label class="label-control" for="numeroInput">Número</label>
											<input class="form-control" type="text" id="numeroInput" name="numeroInput" required="required">
										</div>
										<div class="form-group">
											<label class="label-control" for="bairroInput">Bairro</label>
											<input class="form-control" type="text" id="bairroInput" name="bairroInput" readonly="readonly" required="required">
										</div>
										<div class="form-group">
											<label class="label-control" for="cidadeInput">Cidade</label>
											<input class="form-control" type="text" id="cidadeInput" name="cidadeInput" readonly="readonly" required="required">
										</div>
										<div class="form-group">
											<label class="label-control" for="ufInput">Estado</label>
											<input class="form-control" type="text" id="ufInput" name="ufInput" readonly="readonly" required="required">
										</div>
									</div>
									<div class="col-md-6 col-sm-8 col-md-push-3 col-sm-push-2 col-xs-12">
										<button class="btn btn-success btn-block" type="submit">Cadastrar</button>
									</div>
								</fieldset>
								</div>
							</form>
						</div>
					</div>
				</div> <!-- .container -->
			</div> <!-- .main-content -->
		</div>

		<div class="overlay"></div>

		<div class="auth-popup popup">
			<a href="#" class="close"><i class="fa fa-close"></i></a>
			<div class="row">
				<div class="col-md-6">
					<h2 class="section-title">Login</h2>
					<form action="#">
						<input type="text" placeholder="Username...">
						<input type="password" placeholder="Password...">
						<input type="submit" value="Login">
					</form>
				</div> <!-- .column -->
				<div class="col-md-6">
					<h2 class="section-title">Create an account</h2>
					<form action="#">
						<input type="text" placeholder="Username...">
						<input type="text" placeholder="Email address...">
						<input type="submit" value="register">
					</form>
				</div> <!-- .column -->
			</div> <!-- .row -->
		</div> <!-- .auth-popup -->

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/validator.min.js"></script>
		<script src="js/form.js"></script>
	</body>

</html>
