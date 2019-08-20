function logHardware() {
  var loja = document.getElementById('loja').value;
  var cnpj = document.getElementById('cnpj').value;
  var serieHardware = document.getElementById('serieHardware').value;
  var tipoMicroHardware = document.getElementById('tipoMicroHardware').value;
  var micro = document.getElementById('numeroMicro').value;
  var modelo = document.getElementById('modelo').value;
  var endereco = document.getElementById('enderecoCompleto').value;
  var telefone1 = document.getElementById('telefone1').value;
  var telefone2 = document.getElementById('telefone2').value;
  var gerenteHardware = document.getElementById('gerenteHardware').value;
  var problemaHardware = document.getElementById('problemaHardware').value;
  var testesHardware = document.getElementById('testesHardware').value;
  var telAlternativo = document.getElementById('telAlternativo').value;
  var maisInfo = document.getElementById('maisInfo').value;
  var gerenteCobranca = document.getElementById('gerenteCobranca').value;
  var docPandora = document.getElementById('docPandora').value;
  document.getElementById('lojaModal').innerHTML = loja;
  document.getElementById('cnpjModal').innerHTML = cnpj;
  document.getElementById('serieHardwareModal').innerHTML = serieHardware;
  if (tipoMicroHardware != "Selecione"){
	  document.getElementById('tipoMicroHardwareModal').innerHTML = tipoMicroHardware;
  }
  document.getElementById('microModal').innerHTML = micro;
  document.getElementById('modeloModal').innerHTML = modelo;
  document.getElementById('enderecoModal').innerHTML = endereco;
  document.getElementById('telefone1Modal').innerHTML = telefone1;
  document.getElementById('telefone2Modal').innerHTML = telefone2;
  document.getElementById('gerenteHardwareModal').innerHTML = gerenteHardware;
  document.getElementById('problemaHardwareModal').innerHTML = problemaHardware;
  document.getElementById('testesHardwareModal').innerHTML = testesHardware;
  document.getElementById('gerenteEncHardModal').innerHTML = gerenteHardware;
  document.getElementById('problemaEncHardModal').innerHTML = problemaHardware;
  document.getElementById('testesEncHardModal').innerHTML = testesHardware;
  document.getElementById('gerenteCobModal').innerHTML = gerenteCobranca;
  document.getElementById('telAltCobModal').innerHTML = telAlternativo;
  document.getElementById('maisInfoModal').innerHTML = maisInfo;
  document.getElementById('docPandoraModalHardEnc').innerHTML = docPandora;
  document.getElementById('docPandoraModalDir').innerHTML = docPandora;
}

$('#manual').click(function(){
    let body = document.getElementById("corpo");
    let temp = document.getElementsByTagName("template")[0];
    let clon = temp.content.cloneNode(true);
    body.appendChild(clon);
});

$('#encerraHardware').click(function(){
    logs = document.getElementsByName('log');
    for(var i = 0; i < logs.length; i++){
        valor = logs[i].value;
        document.getElementById('docPandoraModalHardEnc').insertAdjacentHTML('beforeend','<div id="idChild">'+valor+'</div>')
    }
});

$('#direcionamentoHardware').click(function(){
    logs = document.getElementsByName('log');
    for(var i = 0; i < logs.length; i++){
        valor = logs[i].value;
        document.getElementById('docPandoraModalDir').insertAdjacentHTML('beforeend','<div id="idChild">'+valor+'</div>')
    }
});