<%@ include file="includes/header.jsp" %>
		
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