function logPinpad() {
	   var loja = document.getElementById('loja').value;
		 var cnpj = document.getElementById('cnpj').value;
		 var seriePinpad = document.getElementById('seriePinpad').value;
		 var numeroLogico = document.getElementById('cieloLogico').value;
		 var estabelecimentoCielo = document.getElementById('estabelecimentoCielo').value;
		 var endereco = document.getElementById('enderecoCompleto').value;
		 var telefone1 = document.getElementById('telefone1').value;
		 var telefone2 = document.getElementById('telefone2').value;
		 var gerente = document.getElementById('gerentePinpad').value;
		 var segASex = document.getElementById('segASex').value;
		 var sab = document.getElementById('sab').value;
		 var dom = document.getElementById('dom').value;
		 var problema = document.getElementById('problemaPinpad').value;
		 var testesPinpad = document.getElementById('testesPinpad').value;
	   document.getElementById('lojaPinpadModal').innerHTML = loja;
		 document.getElementById('cnpjPinpadModal').innerHTML = cnpj
		 document.getElementById('seriePinpadModal').innerHTML = seriePinpad;
		 document.getElementById('numeroLogicoModal').innerHTML = numeroLogico;
		 document.getElementById('estabelecimentoCieloModal').innerHTML = estabelecimentoCielo;
		 document.getElementById('enderecoPinpadModal').innerHTML = endereco;
		 document.getElementById('telefone1PinpadModal').innerHTML = telefone1;
		 document.getElementById('telefone2PinpadModal').innerHTML = telefone2;
		 document.getElementById('gerentePinpadModal').innerHTML = gerente;
		 document.getElementById('segASexPinpadModal').innerHTML = segASex;
		 document.getElementById('sabPinpadModal').innerHTML = sab;
		 document.getElementById('domPinpadModal').innerHTML = dom;
		 document.getElementById('problemaPinpadModal').innerHTML = problema;
		 document.getElementById('testesPinpadModal').innerHTML = testesPinpad;
		 document.getElementById('gerenteEncPinModal').innerHTML = gerente;
		 document.getElementById('problemaEncPinModal').innerHTML = problema;
		 document.getElementById('testesEncPinModal').innerHTML = testesPinpad;
	}
