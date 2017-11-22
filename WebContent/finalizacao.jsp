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
                    <a href="index.jsp" id="branding">
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
                            <fieldset class="col-md-4 col-sm-6 col-md-push-4 col-sm-push-3">
                                <legend>Identificação</legend>
                                <form id="idenficacao" action="" method="POST">
                                    <div class="form-group">
                                        <label class="label-control" for="loginInput">E-mail:</label>
                                        <input type="email" name="loginInput" placeholder="exemplo@exemplo.com.br" class="form-control" id="loginInput">
                                    </div>
                                    <div class="form-group">
                                        <label class="label-control" for="passInput">Senha</label>
                                        <input type="password" name="passInput" class="form-control" id="passInput">
                                    </div>
                                    <div class="f1-buttons">
                                        <button type="button" class="btn btn-block btn-next">Entrar</button>
                                    </div>
                                </form>
                                <hr>
                                <p class="text-center">Não tem cadastro? <a>Cadastre-se</a></p>
                            </fieldset>

                            <fieldset>
                                <p class="lead text-center">Confirmar Pedido - Minha Lista de Produtos</p>
                                <hr>
                                <table class="table table-condensed">
                                    <thead>
                                        <tr>
                                            <th>Nome do Produto</th>
                                            <th>Preço</th>
                                            <th>Qtde</th>
                                            <th>Sub-Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- Inicio do Foreach do Carrinho -->
                                        <tr>
                                            <td>Need for Speed: Rivals - PS4</td>
                                            <td>R$ 120,00</td>
                                            <td>1</td>
                                            <td>R$ 120,00</td>
                                        </tr>
                                        <!-- Fim do Foreach -->
                                        <!-- Linha da tabela fixa para o total do carrinho -->
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td><b>Total:</b></td>
                                            <th><b>R$ 120,00</b></th>
                                        </tr>
                                        <!-- Fim da Linha do Total -->
                                    </tbody>
                                </table>
                                <p class="text-center"><b>Formas de Pagamento</b></p>
                                <hr>
                                <div>
                                    <!-- Nav Tabs -->
                                    <ul id="rowTab" class="nav nav-tabs nav-justified" role="tablist" style="margin-left: 0px;">
                                        <li role="presentation">
                                            <a href="#credito" aria-controls="credito" role="tab" data-toggle="tab"><span class="fa fa-credit-card"></span> Cartão de Crédito</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#boleto" aria-controls="boleto" role="tab" data-toggle="tab"><span class="fa fa-barcode"></span> Boleto</a>
                                        </li>
                                        <li role="presentation">
                                            <a href="#debito" aria-controls="debito" role="tab" data-toggle="tab"><span class="fa fa-credit-card"></span> Débito</a>
                                        </li>
                                    </ul>

                                    <!-- Tab Content -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade" id="credito">
                                            <form action="" method="POST">
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-6 col-md-push-4 col-sm-push-3">
                                                        <div class="form-group">
                                                            <label class="label-control">Número do Cartão</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-6 col-md-push-4 col-sm-push-3">
                                                        <div class="form-group">
                                                            <label class="label-control">Nome impresso no cartão</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-6 col-md-push-4 col-sm-push-3">
                                                        <div class="form-group">
                                                            <label class="label-control">Validade</label>
                                                            <div class="row">
                                                                <div class="col-md-6 col-xs-6">
                                                                    <select class="form-control">
                                                                        <option>Mês</option>
                                                                        <option>01</option>
                                                                        <option>02</option>
                                                                        <option>03</option>
                                                                        <option>04</option>
                                                                        <option>05</option>
                                                                        <option>06</option>
                                                                        <option>07</option>
                                                                        <option>08</option>
                                                                        <option>09</option>
                                                                        <option>10</option>
                                                                        <option>11</option>
                                                                        <option>12</option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-6 col-xs-6">
                                                                    <select class="form-control">
                                                                        <option>Ano</option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                        <option></option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-6 col-md-push-4 col-sm-push-3">
                                                        <div class="form-group">
                                                            <label class="label-control">Código de Segurança</label>
                                                            <div class="input-group">
                                                                <input type="text" class="form-control">
                                                                <div class="input-group-addon">
                                                                    <i class="fa fa-credit-card"></i>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-6 col-md-push-4 col-sm-push-3">
                                                        <div class="form-group">
                                                            <label class="label-control">Parcela em</label>
                                                            <input type="text" class="form-control">
                                                        </div>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-5 col-sm-6 col-md-push-4 col-sm-push-3">
                                                        <button type="button" class="btn btn-block btn-success btn-next">Pagar com cartão de crédito</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="boleto">
                                            <div class="container">
                                                <ul>
                                                    <li>Imprima o boleto e <b>pague no banco</b></li>
                                                    <li><b>ou pague pela internet</b> utilizando o código de barras</li>
                                                    <li>o prazo de validade do boleto é de <b>1 dia útil</b></li>
                                                </ul>
                                                <br>
                                                <div class="col-md-5 col-sm-5 col-sm-offset-3 col-md-offset-3">
                                                    <button type="button" class="btn btn-block btn-success btn-next">Pagar com Boleto</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="debito">
                                            <div class="container">
                                                <div class="row">
                                                    <p>Escolha seu banco abaixo, e ao confirmar sua compra você será encaminhado para uma página do banco, onde deverá fazer o pagamento online.</p>
                                                </div>
                                                <form action="" method="POST">
                                                    <div class="row">
                                                        <div class="col-md-11">
                                                            <div class="radio">
                                                                <label>
                                                                    <input type="radio" name="banco" id="itau" value="itau">
                                                                    <img src="image/itau.png" height="25" width="25">

                                                                    Itaú
                                                                </label>
                                                            </div>
                                                            <hr>
                                                            <div class="radio">
                                                                <label>
                                                                    <input type="radio" name="banco" id="bradesco" value="bradesco">
                                                                    <img src="image/bradesco.png" height="25" width="25">

                                                                    Bradesco
                                                                </label>
                                                            </div>
                                                            <hr>
                                                            <div class="radio">
                                                                <label>
                                                                    <input type="radio" name="banco" id="bancoBrasi" value="banco_brasil">
                                                                    <img src="image/banco_brasil.jpg" height="25" width="25">

                                                                    Banco do Brasi
                                                                </label>
                                                            </div>
                                                            <hr>
                                                            <div class="radio">
                                                                <label>
                                                                    <input type="radio" name="banco" id="santander" value="santader">
                                                                    <img src="image/santander.png" height="25" width="25">
                                                                    Santander
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="row">
                                                        <div class="col-md-5 col-sm-5 col-sm-offset-3 col-md-offset-3">
                                                            <button type="button" class="btn btn-block btn-success btn-next">Pagar com Débito Online</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" id="pagamento">
                                </fieldset>

                            <fieldset>
                                <legend>Resumo da sua compra</legend>
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-1 col-sm-2 col-xs-2 lazy-img">
                                                <img src data-url="image/alphaprotocol.jpg" class="img-responsive">
                                            </div>
                                            <div class="col-md-11 col-sm-10 col-xs-10">
                                                <div class="col-md-4 col-xs-12">
                                                    <p>Alpha Protocol - PS3</p>
                                                </div>
                                                <div class="col-md-4 col-xs-12">
                                                    <p>Vendido e Entregue por <b>Division Games</b></p>
                                                </div>
                                                <div class="col-md-2 col-xs-6">
                                                    <p>Quantidade: 1</p>
                                                </div>
                                                <div class="col-md-2 col-xs-6 text-right">
                                                    <p><b>R$ 120,00</b></p>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-7 col-sm-6 col-xs-12"></div>
                                            <div class="col-md-5 col-sm-6 col-xs-12">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="lead">1 produto:</td>
                                                            <td class="lead">R$ 120,00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="lead">SubTotal:</td>
                                                            <td class="lead">R$ 120,00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="lead"><b>Total:</b></td>
                                                            <td class="lead"><b>R$ 120,00</b></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-5 col-sm-6 col-xs-12">
                                                <hr class="hidden-sm hidden-md hidden-lg">
                                                <div class="panel panel-simple">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Endereço de Entrega</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <ul class="lista">
                                                            <li>
                                                                <span>Destinatário: Dimas Junior Pedreira</span>
                                                            </li>
                                                            <li>
                                                                <span>Av. Itarpark, 100</span>
                                                            </li>
                                                            <li>
                                                                <span>Jardim Itapark - Mauá, SP</span>
                                                            </li>
                                                            <li>
                                                                <span>CEP:09350-000</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2"></div>
                                            <div class="col-md-5 col-sm-6 col-xs-12">
                                                <hr class="hidden-sm hidden-md hidden-lg">
                                                <div class="panel panel-simple">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title">Forma de Pagamento</h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <ul class="lista">
                                                            <li>
                                                                <span>Boleto Bancário</span>
                                                            </li>
                                                            <li>
                                                                <span>Valor Total RS 120,00</span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div> <!-- .container -->
            </main> <!-- .main-content -->
        </div>
        
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/app.js"></script>
        <script src="js/finaliza.js"></script>
        <!-- Script para verificar qual foi o pagamento escolhido -->
        <script>
            $(document).ready(function () {
                var inicial = $('#rowTab a:first').tab('show');
                $('#pagamento').val(inicial.attr('aria-controls'));
                $('a[data-toggle=tab]').on('show.bs.tab', function (e) {
                    $('#pagamento').val($(e.target).attr(('aria-controls')));
                });
            });
        </script>
    </body>

</html>