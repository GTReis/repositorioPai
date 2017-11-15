function inputHandler(masks, max, event) {
	var c = event.target;
	var v = c.value.replace(/\D/g, '');
	var m = c.value.length > max ? 1 : 0;
	VMasker(c).unMask();
	VMasker(c).maskPattern(masks[m]);
	c.value = VMasker.toPattern(v, masks[m]);
}

var telMask = ['(99) 9999-99999', '(99) 99999-9999'];
var tel = document.querySelector('#telInput');
VMasker(tel).maskPattern(telMask[0]);
tel.addEventListener('input', inputHandler.bind(undefined, telMask, 14), false);

var docMask = ['999.999.999-999'];
var doc = document.querySelector('#cpfInput');
VMasker(doc).maskPattern(docMask[0]);
doc.addEventListener('input', inputHandler.bind(undefined, docMask, 14), false);

function formatar(mascara, documento)
{
	var i = documento.value.length;
	var saida = mascara.substring(0,1);
	var texto = mascara.substring(i);
	if(texto.substring(0,1) != saida)
	{
		documento.value += texto.substring(0,1);
	}
}

$(document).ready(function(){
	$('#clienteForm').validator();
	$('#passwordInput').popover({
		title: 'Crie uma senha mais segura:',
		template: '<div class="popover" role="tooltip" style="width: 500px;"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"><div class="data-content"></div></div></div>',
		trigger: 'hover',
		html: true,
		content: '<ul><li>Evite usar seu nome, apelido ou data de nascimento.</li><li>Combine letras maiúsculas e minúsculas, símbolos e números.</li><li>Não use informações pessoais.</li></ul>',
		placement: 'auto right',
	}).click(function(event) {
		$(this).popover('hide');
	});;
	$('#cepInput').popover({
		content: 'Digite apenas números, sem pontos ou traços.',
		trigger: 'hover',
		placement: 'auto right',
		container: 'body'
	}).click(function(event) {
		$(this).popover('hide');
	});;
	$('[data-toggle="popover"]').popover().click(function(event) {
		$(this).popover('hide');
	});;

	$('#endereco').hide();
	$('#wait').hide();
	$('#cepInput').on('keyup blur',function() {
		
		var cep = $(this).val().replace(/\D/g, '');

		if(cep != "")
		{
			var validacep = /^[0-9]{8}$/;

			if(validacep.test(cep))
			{
				$('#wait').show();
				
				$.ajaxSetup({ cache: false });
				$.getJSON("//viacep.com.br/ws/" + cep + "/json/?callback=?", function(dados){

					if(!("erro" in dados))
					{
						$('#wait').hide();
						$('#endereco').fadeIn();
						$('#logradouroInput').val(dados.logradouro);
						$('#bairroInput').val(dados.bairro);
						$('#cidadeInput').val(dados.localidade);
						$('#ufInput').val(dados.uf);

						if(dados.logradouro == '' && dados.bairro == '')
						{
							$('#logradouroInput').removeAttr('readonly');
							$('#bairroInput').removeAttr('readonly');
						}
						else
						{
							$('#logradouroInput').attr('readonly','readonly');
							$('#bairroInput').attr('readonly', 'readonly');
						}
					}
					else
					{
						$('#wait').text('CEP nÃ£o encontrado!').show();
						$('#logradouroInput').val('');
						$('#bairroInput').val('');
						$('#cidadeInput').val('');
						$('#ufInput').val('');
					}
				});
			}

		}
	});

	$('#cepInput').keydown(function() {
		$('#endereco').fadeOut();
		$('#wait').text('').hide();
		$('#logradouroInput').val('');
		$('#bairroInput').val('');
		$('#cidadeInput').val('');
		$('#ufInput').val('');
	});
});
