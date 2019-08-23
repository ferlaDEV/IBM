var logDirPinpad = new ClipboardJS('#btnCopiarLogDirPinpad');

  logDirPinpad.on('success', function(e) {
  alert("Log copiada com sucesso!!");
  e.clearSelection();
  });

  logDirPinpad.on('error', function(e) {
  alert("Navegador não suporta a cópia!!");
  });
  
  var logEncPinpad = new ClipboardJS('#btnCopiarLogEncPinpad');

  logEncPinpad.on('success', function(e) {
  alert("Log copiada com sucesso!!");
  e.clearSelection();
  });

  logEncPinpad.on('error', function(e) {
  alert("Navegador não suporta a cópia!!");
  });
  
  var logDirHardware = new ClipboardJS('#btnCopiarLogDirHardware');

  logDirHardware.on('success', function(e) {
  alert("Log copiada com sucesso!!");
  e.clearSelection();
  });

  logDirHardware.on('error', function(e) {
  alert("Navegador não suporta a cópia!!");
  });
  
  var logEncHardware = new ClipboardJS('#btnCopiarLogEncHardware');

  logEncHardware.on('success', function(e) {
  alert("Log copiada com sucesso!!");
  e.clearSelection();
  });

  logEncHardware.on('error', function(e) {
  alert("Navegador não suporta a cópia!!");
  });
  
  var logNotificacao = new ClipboardJS('#btnCopiarLogNotificacao');

  logNotificacao.on('success', function(e) {
  alert("Log copiada com sucesso!!");
  e.clearSelection();
  });

  logNotificacao.on('error', function(e) {
  alert("Navegador não suporta a cópia!!");
  });
  
  var logCobranca = new ClipboardJS('#btnCopiarLogCobranca');

  logCobranca.on('success', function(e) {
  alert("Log copiada com sucesso!!");
  e.clearSelection();
  });

  logCobranca.on('error', function(e) {
  alert("Navegador não suporta a cópia!!");
  });