<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
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
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/lightbox.css">

        <!--[if lt IE 9]>
            <script src="js/ie-support/html5.js"></script>
            <script src="js/ie-support/respond.js"></script>
        <![endif]-->

    </head>

    <body>

	<div id="site-content">
		<div class="site-header">
			<div class="container">
				<a href="index.jsp" id="branding">
					<img src="image/logo.png" alt="" class="logo" height="50" width="200">
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
						<a href="Logout">Logout <small>(<c:out value="${sessionScope.nome}" />)</small></a>
					</c:if> 
				</div>
				<!-- .right-section -->

                    <!-- Fim Area de Login -->

                    <div id="navbar" class="main-navigation">
                        <button class="toggle-menu">
                            <i class="fa fa-bars"></i>
                        </button>
						
							<c:import url="includes/menu-navbar.jsp"></c:import>
						
                        <!-- .menu -->
                        <div class="search-form">
                            <label><img src="image/icon-search.png"></label> <input
                                type="text" placeholder="O que você procura?">
                        </div>
                        <!-- .search-form -->

                        <div class="mobile-navigation"></div>
                        <!-- .mobile-navigation -->
                    </div>
                    <!-- .main-navigation -->

                    <div class="breadcrumbs">
                        <div class="container">
                            <a href="index.jsp">Home</a>
                            	<a href="products.html">${produto.plataforma}</a>
                            		<span>${produto.nome}</span>
                        </div>
                    </div>
                </div>
                <!-- .container -->
            </div>
            <!-- .site-header -->

            <main class="main-content">
                <div class="container">
                    <div class="page">

                        <div class="entry-content">
                            <div class="row">
                                <div class="col-sm-6 col-md-4">
                                    <div class="product-images">
                                        <figure class="large-image lazy-img">
                                            <a href="BuscaImagem?id=${produto.id}" data-lightbox="galeria"><img data-url="BuscaImagem?id=${produto.id}"
                                                    src alt=""></a>
                                        </figure>
                                        <div class="thumbnails">
                                        <c:forEach var="img" items="${imagem}">

                                            <div class="lazy-img">
                                                <a href="BuscaGaleria?id=${img.id}" data-lightbox="galeria"><img
                                                        data-url="BuscaGaleria?id=${img.id}" src alt=""></a>
                                            </div>
                                            

                                        </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-8">
                                    <h2 class="entry-title">${produto.nome}</h2>
                                    <div class="addtocart-bar">
                                        <div class="col-md-6 col-xs-10">
                                            <p>vendido por <b>${produto.fornecedor}</b></p>
                                            <small class="price"><small>por </small><fmt:formatNumber type="currency"

                                                      value="${produto.valor}" /></small>
                                            <span>ou até 2x de R$ 95,00 sem juros</span>
                                        </div>
                                        <div class="col-md-5 col-xs-9">
                                            <a href="Carrinho?id=${produto.id}&for=${produto.fornecedor}" class="button buy single">Comprar</a>
                                        </div>
                                    </div>
                                    <div class="addtocart-bar">
                                        <div class="social-links square">
                                            <strong>Compartilhe</strong> <a href="#" class="facebook"><i
                                                    class="fa fa-facebook"></i></a> <a href="#" class="twitter"><i
                                                    class="fa fa-twitter"></i></a> <a href="#" class="google-plus"><i
                                                    class="fa fa-google-plus"></i></a> <a href="#" class="pinterest"><i
                                                    class="fa fa-pinterest"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <section>
                            <header>
                                <h2 class="section-title">Produtos Similares</h2>
                            </header>
                            <div class="product-list">
                                <div class="product">
                                    <div class="inner-product">
                                        <div class="figure-image lazy-img">
                                            <img data-url="image/alphaprotocol.jpg" src alt="Game 1" height="250"
                                                 width="200">
                                        </div>
                                        <h3 class="product-title">
                                            <a href="#">Alpha Protocol</a>
                                        </h3>
                                        <small class="price">R$ 20,00</small>
                                        <p>Lorem ipsum dolor sit consectetur adipiscing elit do
                                            eiusmod tempor...</p>
                                        <a href="#" class="button">Comprar</a>
                                        <!--a href="#" class="button muted">Read Details</a-->
                                    </div>
                                </div>
                                <!-- .product -->

                                <div class="product">
                                    <div class="inner-product">
                                        <div class="figure-image lazy-img">
                                            <img data-url="image/gta5.jpeg" src alt="Game 2" height="250"
                                                 width="200">
                                        </div>
                                        <h3 class="product-title">
                                            <a href="#">Grand Theft Auto V</a>
                                        </h3>
                                        <small class="price">R$ 20,00</small>
                                        <p>Lorem ipsum dolor sit consectetur adipiscing elit do
                                            eiusmod tempor...</p>
                                        <a href="#" class="button">Comprar</a>
                                        <!--a href="#" class="button muted">Read Details</a-->
                                    </div>
                                </div>
                                <!-- .product -->

                                <div class="product">
                                    <div class="inner-product">
                                        <div class="figure-image lazy-img">
                                            <img data-url="image/needforspeed.jpg" src alt="Game 3" height="250"
                                                 width="200">
                                        </div>
                                        <h3 class="product-title">
                                            <a href="#">Need for Speed rivals</a>
                                        </h3>
                                        <small class="price">R$ 20,00</small>
                                        <p>Lorem ipsum dolor sit consectetur adipiscing elit do
                                            eiusmod tempor...</p>
                                        <a href="#" class="button">Comprar</a>
                                        <!--a href="#" class="button muted">Read Details</a-->
                                    </div>
                                </div>
                                <!-- .product -->

                                <div class="product">
                                    <div class="inner-product">
                                        <div class="figure-image lazy-img">
                                            <img data-url="image/bighunter.png" src alt="Game 4" height="250"
                                                 width="200">
                                        </div>
                                        <h3 class="product-title">
                                            <a href="#">Big game hunter</a>
                                        </h3>
                                        <small class="price">R$ 20,00</small>
                                        <p>Lorem ipsum dolor sit consectetur adipiscing elit do
                                            eiusmod tempor...</p>
                                        <a href="#" class="button">Add to cart</a>
                                        <!--a href="#" class="button muted">Read Details</a-->
                                    </div>
                                </div>
                                <!-- .product -->

                            </div>
                            <!-- .product-list -->
                        </section>


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

				<div class="colophon col-md-12 col-sm-12 col-xs-12">
						<div class="copy col-xs-8 col-sm-6">Desenvolvido por <u><b>The Division Games<b></u></div>
						<div class="social-links square col-xs-4 col-sm-3 col-md-3">
							<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
							<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
							<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
							<a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
						</div> <!-- .social-links -->
					</div> <!-- .colophon -->
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
        <script src="js/lightbox.js"></script>
        <script src="js/app.js"></script>
        <script>
            lightbox.option({
                albumLabel: "imagem %1 de %2",
                fadeDuration: 100,
                wrapAround: true,
                alwaysShowNavOnTouchDevices: true
            });
        </script>
        <c:if test="${not empty sessionScope.erro}">

            <script>
                $(document).ready(function () {
                    $(".login-button").click();
                });
            </script>	

            <c:remove var="erro" scope="session" />

        </c:if>

    </body>

</html>
