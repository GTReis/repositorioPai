<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- referencia a uri das taglibs do JSTL (que devem estar dentro pasta WEB-INF/lib) e adiciona o 
	respectivo prefixo para ser invocado-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>

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
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/normalize.css">

<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

</head>

<body class="slider-collapse">

	<!-- atribui as propriedades da classe ao id dao -->
	<jsp:useBean id="dao" class="com.thedivisiongames.dao.ProdutoDAO" />

	<pg:pager id="p" maxPageItems="8" maxIndexPages="10" export="offset,currentPageNumber=pageNumber" scope="request" items="${dao.lancamentos.size()}">
		<pg:param name="keywords" />

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
						</c:if> <c:if
								test="${(not empty sessionScope.produto_carrinho) && (sessionScope.num_itens_carrinho == 1)}">
								<c:out value="${sessionScope.num_itens_carrinho}" /> item no carrinho
						</c:if> <c:if
								test="${(not empty sessionScope.produto_carrinho) && (sessionScope.num_itens_carrinho > 1)}">
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

					<div class="breadcrumbs">
						<div class="container">
							<a href="index.jsp">Home</a> <span>Todos os Produtos</span> <a
								href="#">###</a>
								<span>###</span>
						</div>
					</div>

				</div>
				<!-- .container -->
			</div>
			<!-- .site-header -->

			<main class="main-content">
			<div class="container">

					<div class="filter-bar">

						<div class="filter">
							<span> <label>Ordenar por:</label>
							<select class="selectpicker" name="#">
									<option value="#">Popularidade</option>
									<option value="#">Mais Vendidos</option>
									<option value="#">Menor Preço</option>
							</select>
							</span> <span> <label>Gênero</label> <select name="#">
									<option value="#">Mostrar Todos</option>
									<option value="#">Ação</option>
									<option value="#">Corrida</option>
									<option value="#">Estratégia</option>
							</select>
							</span> 
							<span>
								<label>Itens por página:</label>
								<select name="#">
										<option value="#">8</option>
										<option value="#">16</option>
										<option value="#">24</option>
								</select>
							</span>
						</div>
						<!-- .filter -->

						<div class="pagination">
							
							<pg:index>
								<pg:prev>
									<a href="<%=pageUrl%>" class="page-number"><i class="fa fa-angle-left"></i></a>
								</pg:prev>
								<pg:pages>
									<c:if test="${currentPageNumber == pageNumber}">
										<a href="<%=pageUrl%>" class="page-number current"><%=pageNumber%></a>
									</c:if>
									<c:if test="${currentPageNumber != pageNumber}">
										<a href="<%=pageUrl%>" class="page-number"><%=pageNumber%></a>
									</c:if>
								</pg:pages>
								<pg:next>
									<a href="<%=pageUrl%>" class="page-number"><i class="fa fa-angle-right"></i></a>
								</pg:next>
							</pg:index>

						</div>
						<!-- .pagination -->
					
					</div>
					
					<!-- .filter-bar -->
					
					<div class="product-list">

						<c:forEach var="produto" items="${dao.lancamentos}">

							<pg:item>

								<div class="product">
									<div id="produto-min-height-530px" class="inner-product">
										<div class="figure-image">
											<a href="Produto?id=${produto.id}"><img
												src="BuscaImagem?id=${produto.id}" alt="${produto.nome}"
												height="250" width="200"></a>
										</div>
										<h3 class="product-title">
											<a href="#">${produto.nome}</a>
										</h3>
										<small class="price"><fmt:formatNumber type="currency"
												value="${produto.valor}" /></small>
										<p>${fn:substring(produto.descricao,0,75)}...</p>
										<a href="Carrinho?id=${produto.id}&for=${produto.fornecedor}"
											class="button buy">Comprar</a>
									</div>
								</div>
								<!-- .product -->

							</pg:item>

						</c:forEach>

					</div>
					<!-- .product-list -->

					<div class="pagination-bar">
						<div class="pagination">

							<pg:index>
								<pg:prev>
									<a href="<%=pageUrl%>" class="page-number"><i class="fa fa-angle-left"></i></a>
								</pg:prev>
								<pg:pages>
									<c:if test="${currentPageNumber == pageNumber}">
										<a href="<%=pageUrl%>" class="page-number current"><%=pageNumber%></a>
									</c:if>
									<c:if test="${currentPageNumber != pageNumber}">
										<a href="<%=pageUrl%>" class="page-number"><%=pageNumber%></a>
									</c:if>
								</pg:pages>
								<pg:next>
									<a href="<%=pageUrl%>" class="page-number"><i class="fa fa-angle-right"></i></a>
								</pg:next>
							</pg:index>

						</div>
						<!-- .pagination -->
					</div>

			</div>
			<!-- .container -->
			</div>
			
			</main>
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

		<div class="auth-popup popup">
			<a href="#" class="close"><i class="fa fa-close"></i></a>
			<div class="row">
				<div class="col-md-6">
					<h2 class="section-title">Login</h2>
					<form action="#">
						<input type="text" placeholder="Username..."> <input
							type="password" placeholder="Password..."> <input
							type="submit" value="Login">
					</form>
				</div>
				<!-- .column -->
				<div class="col-md-6">
					<h2 class="section-title">Create an account</h2>
					<form action="#">
						<input type="text" placeholder="Username..."> <input
							type="text" placeholder="Email address..."> <input
							type="submit" value="register">
					</form>
				</div>
				<!-- .column -->
			</div>
			<!-- .row -->
		</div>
		<!-- .auth-popup -->

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>

	</pg:pager>

</body>

</html>