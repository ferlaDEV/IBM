function logHardwareADM() {
  var loja = document.getElementById('loja').value;
  var cnpj = document.getElementById('cnpj').value;
  var serieHardware = document.getElementById('serieHardware').value;
  var tipoMicroHardware = document.getElementById('tipoMicroHardware').value;
  var micro = document.getElementById('numeroMicro').value;
  var modelo = document.getElementById('modelo').value;
  var endereco = document.getElementById('endereco').value;
  var telefone1 = document.getElementById('telefone1').value;
  var telefone2 = document.getElementById('telefone2').value;
  var gerenteHardware = document.getElementById('gerenteHardware').value;
  var problemaHardware = document.getElementById('problemaHardware').value;
  var testesHardware = document.getElementById('testesHardware').value;
  var telAlternativo = document.getElementById('telAlternativo').value;
  document.getElementById('lojaModal').innerHTML = loja;
  document.getElementById('cnpjModal').innerHTML = cnpj;
  document.getElementById('serieHardwareModal').innerHTML = serieHardware;
  if (tipoMicroHardware != "Selecione a opção"){
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
  document.getElementById('gerenteCobModal').innerHTML = gerenteHardware;
  document.getElementById('telAltCobModal').innerHTML = telAlternativo;
}
