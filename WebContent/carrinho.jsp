<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- referencia a uri das taglibs do JSTL (que devem estar dentro pasta WEB-INF/lib) e adiciona o 
	respectivo prefixo para ser invocado-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-br">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>The Division Games</title>
		
		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:400,700|"
			rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">
		
		<!-- Loading main css file -->
		<link rel="stylesheet" href="css/normalize.css">
		<link rel="stylesheet" href="css/style.css">
		
		<!--[if lt IE 9]>
				<script src="js/ie-support/html5.js"></script>
				<script src="js/ie-support/respond.js"></script>
				<![endif]-->

	</head>


<body>

	<div id="site-content">
		<div class="site-header">
			<div class="container">
				<a href="index.jsp" id="branding"> <img src="image/logo.png"
					alt="" class="logo" height="50" width="200">
				</a>
				<!-- #branding -->

				

				<div class="right-section pull-right">
				
					<!-- Area Carrinho -->
					
					<a href="carrinho.jsp" class="cart"> <i class="icon-cart"></i>
						<c:if test="${empty sessionScope.produto_carrinho}">
							0 itens no carrinho
						</c:if>
						<c:if test="${(not empty sessionScope.produto_carrinho) && (sessionScope.num_itens_carrinho == 1)}">
							<c:out value="${sessionScope.num_itens_carrinho}" /> item no carrinho
						</c:if>
						<c:if test="${(not empty sessionScope.produto_carrinho) && (sessionScope.num_itens_carrinho > 1)}">
							<c:out value="${sessionScope.num_itens_carrinho}" /> itens no carrinho
						</c:if>
						
					</a>
					
					<!-- Fim Area Carrinho -->
					
					<!-- Area de Login -->

					<!-- verifica se há algum valor na variavel de sessão "nome" definida no servlet e, se estiver vasia
					exibe Login/Cadastrar -->
					<c:if test="${empty sessionScope.nome}">
						<a href="#" class="login-button">Login/Cadastrar</a>
					</c:if>

					<!-- se não houver valor na variavel de sessão "nome", exibe opções para fazer login -->
					<c:if test="${not empty sessionScope.nome}">
						<a href="#">Minha Conta</a>
						<a href="Logout">Logout <small>(<c:out
									value="${sessionScope.nome}" />)
						</small></a>
					</c:if>
				</div>
				<!-- .right-section -->

				<!-- Fim Area de Login -->

				<div class="main-navigation">
					<button class="toggle-menu">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="menu">
						<li class="menu-item home current-menu-item"><a
							href="index.jsp"><i class="icon-home"></i></a></li>
						<li class="menu-item"><a href="products.html">Accessories</a></li>
						<li class="menu-item"><a href="products.html">Promotions</a></li>
						<li class="menu-item"><a href="products.html">PC</a></li>
						<li class="menu-item"><a href="products.html">Playstation</a></li>
						<li class="menu-item"><a href="products.html">Xbox</a></li>
						<li class="menu-item"><a href="products.html">Wii</a></li>
					</ul>
					<!-- .menu -->
					<div class="search-form">
						<label><img src="images/icon-search.png"></label> <input
							type="text" placeholder="Search...">
					</div>
					<!-- .search-form -->

					<div class="mobile-navigation"></div>
					<!-- .mobile-navigation -->
				</div>
				<!-- .main-navigation -->

				<div class="breadcrumbs">
					<div class="container">
						<a href="index.jsp">Home</a> <span>Carrinho de compras</span>
					</div>
				</div>
			</div>
			<!-- .container -->
		</div>
		<!-- .site-header -->
		<main class="main-content">
		<div class="container">
			<div class="page">

				<table class="cart">
					<thead>
						<tr>
							<th class="product-name">Nome do Produto</th>
							<th class="product-price">Preço</th>
							<th class="product-qty">Quantidade</th>
							<th class="product-total">Total</th>
							<th class="action"></th>
						</tr>
					</thead>
					<tbody>

					<c:forEach var="produto" items="${sessionScope.produto_carrinho}">
					
						<tr>
							<td class="product-name">
								<div class="product-thumbnail">
									<img src="BuscaImagem?id=${produto.id}" alt="" height="80" width="60">
								</div>
								<div class="product-detail">
									<h3 class="product-title">${produto.nome}</h3>
									<p>vendido por <b>${produto.fornecedor}</b></p>
								</div>
							</td>
							<td class="product-price">
								<fmt:formatNumber type="currency" value="${produto.valor}" />
							</td>
							<td class="product-qty"><select name="#">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
							</select></td>
							
							<!-- A cada iteração, soma o valor do produto -->
							<c:set var="total" value="${total + produto.valor}" /> 
							
							<td class="product-total">R$ 0,00</td>
							<td class="action">
								<!-- Botão "x" que remove o produto do carrinho -->
								<a href="RemoveItemCarrinho?id=${produto.id}"><i class="fa fa-times"></i></a>
							</td>
						</tr>

					</c:forEach>


					</tbody>
				</table>
				<!-- .cart -->

				<div class="cart-total">
					<!-- p>
						<strong>Subtotal:</strong> R$ 650,00
					</p-->
					<p class="total">
						<strong>Total</strong>
						<span class="num">
							<!-- Exibe o total calculado na iteração do foreach do carrinho -->
							<fmt:formatNumber type="currency" value="${total}" />
						</span>
					</p>
					<p>
						<a href="index.jsp" class="button muted">Continuar Comprando</a> <a
							href="#" class="button">Finalizar Compra</a>
					</p>
				</div>
				<!-- .cart-total -->

			</div>
		</div>
		<!-- .container --> </main>
		<!-- .main-content -->

		<div class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Information</h3>
							<ul class="no-bullet">
								<li><a href="#">Site map</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Consumer Service</h3>
							<ul class="no-bullet">
								<li><a href="#">Secure</a></li>
								<li><a href="#">Shipping &amp; Returns</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Orders &amp; Returns</a></li>
								<li><a href="#">Group Sales</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">My Account</h3>
							<ul class="no-bullet">
								<li><a href="#">Login/Register</a></li>
								<li><a href="#">Settings</a></li>
								<li><a href="#">Cart</a></li>
								<li><a href="#">Order Tracking</a></li>
								<li><a href="#">Logout</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-6">
						<div class="widget">
							<h3 class="widget-title">Join our newsletter</h3>
							<form action="#" class="newsletter-form">
								<input type="text" placeholder="Enter your email..."> <input
									type="submit" value="Subsribe">
							</form>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
				</div>
				<!-- .row -->

				<div class="colophon">
					<div class="copy">Copyright 2014 Company name. Designed by
						Themezy. All rights reserved.</div>
					<div class="social-links square">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-pinterest"></i></a>
					</div>
					<!-- .social-links -->
				</div>
				<!-- .colophon -->
			</div>
			<!-- .container -->
		</div>
		<!-- .site-footer -->
	</div>

	<div class="overlay"></div>

	<div id="popup-login" class="auth-popup popup">
		<a href="#" class="close"><i class="fa fa-times"></i></a>
		<div class="row">
			<div class="col-md-6">
				<h2 class="section-title">Login</h2>

				<form action="ValidaLogin" method="POST">
					<input type="text" name="inputEmail"
						placeholder="email@exemplo.com"> <input type="password"
						name="inputSenha" placeholder="Senha">

					<c:if test="${not empty sessionScope.erro}">
						<p id="msg-erro">
							<c:out value="${sessionScope.erro}" />
						</p>
					</c:if>

					<input type="submit" value="Login">
				</form>
			</div>
			<!-- .column -->
			<div class="col-md-6">
				<h2 class="section-title">Ainda não sou cliente</h2>
				<div class="row">
					<div class="col-md-12">
						<p>Cadastre-se aqui para receber nossas ofertas.</p>
						<a class="btn btn-primary btn-block" href="formulario.jsp">Cadastrar</a>
					</div>
				</div>
			</div>
			<!-- .column -->
		</div>
		<!-- .row -->
	</div>
	<!-- .auth-popup -->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/app.js"></script>

	<c:if test="${not empty sessionScope.erro}">

		<script>
			$(document).ready(function() {
				$(".login-button").click();
			});
		</script>

		<c:remove var="erro" scope="session" />

	</c:if>

</body>

</html>