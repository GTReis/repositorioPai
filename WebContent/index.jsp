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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>The Division Games</title>

<!-- Loading third party fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,700|"
	rel="stylesheet" type="text/css">
<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/normalize.css">

<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

</head>

<body class="slider-collapse">
	
	<div id="site-content">
		<div class="site-header">
			<div class="container">
				<a href="index.jsp" id="branding"> <img src="image/logo.png"
					alt="" class="logo" height="50" width="200"> <!--div class="logo-text">
							<h1 class="site-title">The Division Games</h1>
							<small class="site-description">Entretenimento</small>
						</div-->
				</a>
				<!-- #branding -->

				<!-- Area de Login -->

				<div class="right-section pull-right">
					<a href="carrinho.jsp" class="cart"> <i class="icon-cart"></i>
						0 itens no carrinho
					</a>
					
					<c:if test="${empty sessionScope.nome}">
						<a href="#" class="login-button">Login/Cadastrar</a>
					</c:if>
					
					<c:if test="${not empty sessionScope.nome}">
						<a href="#">Minha Conta</a>
						<a href="Logout">Logout <small>(<c:out value="${sessionScope.nome}" />)</small></a>
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
						<li class="menu-item"><a href="lancamentos.jsp">Lançamentos</a></li>
						<li class="menu-item"><a href="promocoes.jsp">Promoções</a></li>
						<li class="menu-item"><a href="products.html">PC</a></li>
						<li class="menu-item"><a href="products.html">PS3</a></li>
						<li class="menu-item"><a href="products.html">PS4</a></li>
						<li class="menu-item"><a href="products.html">XBOX 360</a></li>
						<li class="menu-item"><a href="products.html">XBOX ONE</a></li>
						<li class="menu-item"><a href="products.html">Wii</a></li>
						<li class="menu-item"><a href="products.html">Switch</a></li>
					</ul>
					<!-- .menu -->
					<div class="search-form">
						<form action="">
							<label><i class="fa fa-lg fa-search"></i></label> <input
								type="text" placeholder="O que você procura?">
						</form>
					</div>
					<!-- .search-form -->

					<div class="mobile-navigation"></div>
					<!-- .mobile-navigation -->
				</div>
				<!-- .main-navigation -->
		
			</div>
			<!-- .container -->
		</div>
		<!-- .site-header -->
		
		<!-- atribui as propriedades da classe ao id dao -->
		<jsp:useBean id="dao" class="com.thedivisiongames.dao.ProdutoDAO" />

		<div class="home-slider">
			<ul class="slides">
				<li data-bg-image="image/killzone-slide.jpg">
					<div class="container">
						<div class="slide-content">
							<h2 class="slide-title">Kill Zone 3</h2>
							<small class="slide-subtitle">R$ 190,00</small>

							<p class="texto-branco">Perspiciatis unde omnis iste natus
								error sit voluptatem accusantium doloremque laudantium, totam
								rem aperiam, eaque ipsa quae ab illo inventore veritatis et
								quasi architecto beatae vitae dicta sunt explicabo nemo enim
								ipsam voluptatem quia voluptas sit aspernatur aut odit aut
								fugit, sed quia consequuntur.</p>

							<a href="carrinho.jsp" class="button">Comprar</a>
						</div>

						<img src="image/killzone.jpg" class="slide-image" width="300">
					</div>
				</li>
				<li data-bg-image="image/needforspeed-slide.jpg">
					<div class="container">
						<div class="slide-content">
							<h2 class="slide-title">Need for Speed: Rivals</h2>
							<small class="slide-subtitle">R$ 190,00</small>

							<p class="texto-branco">Perspiciatis unde omnis iste natus
								error sit voluptatem accusantium doloremque laudantium, totam
								rem aperiam, eaque ipsa quae ab illo inventore veritatis et
								quasi architecto beatae vitae dicta sunt explicabo nemo enim
								ipsam voluptatem quia voluptas sit aspernatur aut odit aut
								fugit, sed quia consequuntur.</p>

							<a href="carrinho.jsp" class="button">Comprar</a>
						</div>

						<img src="image/needforspeed.jpg" class="slide-image" width="300">
					</div>
				</li>
				<li data-bg-image="image/callofduty-slide1.png">
					<div class="container">
						<div class="slide-content">
							<h2 class="slide-title">Call of Duty: Ghosts</h2>
							<small class="slide-subtitle">R$ 190,00</small>

							<p class="texto-branco">Perspiciatis unde omnis iste natus
								error sit voluptatem accusantium doloremque laudantium, totam
								rem aperiam, eaque ipsa quae ab illo inventore veritatis et
								quasi architecto beatae vitae dicta sunt explicabo nemo enim
								ipsam voluptatem quia voluptas sit aspernatur aut odit aut
								fugit, sed quia consequuntur.</p>

							<a href="carrinho.jsp" class="button">Comprar</a>
						</div>

						<img src="image/callofduty.jpg" class="slide-image" width="300">
					</div>
				</li>
			</ul>
			<!-- .slides -->
		</div>
		<!-- .home-slider -->

		<main class="main-content">
		<div class="container">
			<div class="page">
				<section> <header>
				<h2 class="section-title">Lançamentos</h2>
				<a href="#" class="all">Mostrar Todos</a> </header>


				<div class="product-list">

					<c:forEach var="produto" items="${dao.lancamentos}" begin="0"
						end="3">

						<div class="product">
							<div id="produto-min-height-530px" class="inner-product">
								<div class="figure-image">
									<a href="Produto?id=${produto.id}"><img
										src="BuscaImagem?id=${produto.id}" alt="${produto.nome}"
										height="250"></a>
								</div>
								<h3 class="product-title">
									<a href="#">${produto.nome}</a>
								</h3>
								<p>${produto.plataforma}</p>
								<p>${produto.fornecedor}</p>
								<small class="price"><fmt:formatNumber type="currency"
										value="${produto.valor}" /></small>
								<p>${fn:substring(produto.descricao,0,75)}...</p>
								<a href="carrinho.jsp" class="button">Comprar</a>
							</div>
						</div>
						<!-- .product -->

					</c:forEach>

				</div>
				<!-- .product-list --> </section>

				<section> <header>
				<h2 class="section-title">Promoções</h2>
				<a href="#" class="all">Mostrar Todos</a> </header>

				<div class="product-list">

					<c:forEach var="produto" items="${dao.promocoes}" begin="0" end="3">

						<div class="product">
							<div id="produto-min-height-530px" class="inner-product">
								<div class="figure-image">
									<a href="Produto?id=${produto.id}"><img
										src="BuscaImagem?id=${produto.id}" alt="${produto.nome}"
										height="250"></a>
								</div>
								<h3 class="product-title">
									<a href="#">${produto.nome}</a>
								</h3>
								<p>${produto.plataforma}</p>
								<p>${produto.fornecedor}</p>
								<small class="price"><fmt:formatNumber type="currency"
										value="${produto.valor}" /></small>

								<p>${fn:substring(produto.descricao,0,75)}...</p>

								<a href="carrinho.jsp" class="button">Comprar</a>
							</div>
						</div>
						<!-- .product -->

					</c:forEach>

				</div>
				<!-- .product-list --> </section>
			</div>
		</div>
		<!-- .container --> </main>
		<!-- .main-content -->

		<div class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Informação</h3>
							<ul class="no-bullet">
								<li><a href="#">Mapa do Site</a></li>
								<li><a href="#">Sobre nós</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Politica de Privacidade</a></li>
								<li><a href="#">Contato</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Serviços</h3>
							<ul class="no-bullet">
								<li><a href="#">Segurança</a></li>
								<li><a href="#">Remessas e Retornos</a></li>
								<li><a href="#">Remesas</a></li>
								<li><a href="#">Retornos</a></li>
								<li><a href="#">Vendas de Grupo</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Minha Conta</h3>
							<ul class="no-bullet">
								<li><a href="#">Login/Cadastrar-se</a></li>
								<li><a href="#">Configurações</a></li>
								<li><a href="#">Carrinho de Compras</a></li>
								<!--li><a href="#">Order Tracking</a></li-->
								<li><a href="#">Logout</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-6">
						<div class="widget">
							<h3 class="widget-title">Receba nossas novidades</h3>
							<form action="#" class="newsletter-form">
								<input type="email" placeholder="Coloque seu E-mail"> <input
									type="submit" value="Inscreva-se">
							</form>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
				</div>
				<!-- .row -->

				<div class="colophon">
					<div class="copy">
						Desenvolvido por <u><b>The Division Games<b></u>
					</div>
					<div class="social-links square">
						<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
							href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
							href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
						<a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
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
					<input type="text" name="inputEmail" placeholder="email@exemplo.com">
					<input type="password" name="inputSenha" placeholder="Senha">
					
					<c:if test="${not empty sessionScope.erro}">
						<p id="msg-erro"><c:out value="${sessionScope.erro}" /></p>
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
			$(document).ready(function(){
			    $(".login-button").click();
			});
		</script>	
		
		<c:remove var="erro" scope="session" />
		
	</c:if>


</body>

</html>