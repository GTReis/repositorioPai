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