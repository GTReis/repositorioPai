<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
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

	</head>


	<body>
		
		<div id="site-content">
			<div class="site-header">
				<div class="container">
					<a href="index.html" id="branding">
						<img src="image/logo.png" alt="" class="logo" height="50">
					</a> <!-- #branding -->
					<div class="col-md-8 col-xs-12 text-center">
						<div class="f1-steps">
							<div class="f1-progress">
								<div class="f1-progress-line" data-now-value="16.66" data-number-of-steps="3" style="width: 16.66%;"></div>
							</div>
							<div class="f1-step active">
								<div class="f1-step-icon"><i class="fa fa-user"></i></div>
								<p>Identificação</p>
							</div>
							<div class="f1-step">
								<div class="f1-step-icon"><i class="fa fa-shopping-cart"></i></div>
								<p>Pagamento</p>
							</div>
							<div class="f1-step">
								<div class="f1-step-icon"><i class="fa fa-check"></i></div>
								<p>Obrigado</p>
							</div>
						</div>
					</div>
				</div> <!-- .container -->
			</div> <!-- .site-header -->
			<main class="main-content">
				<div class="container">
					<div class="page">
						<div class="f1">
							<fieldset>
								<legend>Identificação</legend>
								<form class="form-horizontal" method="POST">
									<div class="form-group">
										<label class="label-control" for="loginInput">Login</label>
										<input type="email" name="loginInput" placeholder="exemplo@exemplo.com.br" class="form-control" id="loginInput">
									</div>
									<div class="form-group">
										<label class="label-control" for="passInput">Senha</label>
										<input type="password" name="passInput" class="form-control" id="passInput">
									</div>
									<div class="f1-buttons">
										<button type="submit" class="btn btn-next">Next</button>
									</div>
								</form>
							</fieldset>

							<fieldset>
								<h4>Set up your account:</h4>
								<div class="form-group">
									<label class="sr-only" for="f1-email">Email</label>
									<input type="text" name="f1-email" placeholder="Email..." class="f1-email form-control" id="f1-email">
								</div>
								<div class="form-group">
									<label class="sr-only" for="f1-password">Password</label>
									<input type="password" name="f1-password" placeholder="Password..." class="f1-password form-control" id="f1-password">
								</div>
								<div class="form-group">
									<label class="sr-only" for="f1-repeat-password">Repeat password</label>
									<input type="password" name="f1-repeat-password" placeholder="Repeat password..." 
														class="f1-repeat-password form-control" id="f1-repeat-password">
								</div>
								<div class="f1-buttons">
									<button type="button" class="btn btn-previous">Previous</button>
									<button type="button" class="btn btn-next">Next</button>
								</div>
							</fieldset>

							<fieldset>
								<h4>Social media profiles:</h4>
								<div class="form-group">
									<label class="sr-only" for="f1-facebook">Facebook</label>
									<input type="text" name="f1-facebook" placeholder="Facebook..." class="f1-facebook form-control" id="f1-facebook">
								</div>
								<div class="form-group">
									<label class="sr-only" for="f1-twitter">Twitter</label>
									<input type="text" name="f1-twitter" placeholder="Twitter..." class="f1-twitter form-control" id="f1-twitter">
								</div>
								<div class="form-group">
									<label class="sr-only" for="f1-google-plus">Google plus</label>
									<input type="text" name="f1-google-plus" placeholder="Google plus..." class="f1-google-plus form-control" id="f1-google-plus">
								</div>
								<div class="f1-buttons">
									<button type="button" class="btn btn-previous">Previous</button>
									<button type="submit" class="btn btn-submit">Submit</button>
								</div>
							</fieldset>
						</div>
					</div>
				</div> <!-- .container -->
			</main> <!-- .main-content -->
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
		<script src="js/plugins-min.js"></script>
		<script src="js/finaliza.js"></script>
		
	</body>

</html>