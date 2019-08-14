<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">

    <!-- CSS de Estilos -->
    <link rel="stylesheet" href="/css/style.css">
    
    <!--Icone do navegador-->
	<link rel="icon" type="imagem/png" href="/img/favicon.ico" />
	
    <title>Dados DPSP</title>
  
	
  </head>
  <body>
    <div class="container">
    <br>
    <form class="" action="/EnviarEmail" method="POST">
          <div class="row">
            <div class="col-sm">
              <div id="dadosLoja">
                <div class="row">
                  Dados Loja
                </div>
                <br>
                <div class="row">
                  	<div class="col-3">
                   		<label for="VD Loja">VD Loja</label>
                  	</div>
                  	<div class="col-5">
                  		
                  			<div class="row">
                  				<div class="col-8">
                  					<input type="text" class="form-control" name="id" placeholder="${data._id }" id="id" maxlength="4" onkeypress='return SomenteNumero(event)' required value="">
                  				</div>
                  				<div class="col-2">
                  					
                  				</div>
                  			</div>
                  	</div>
                </div>
                <br>
                <div class="row">
                  <div class="col-3">
                    <label for="bandeira">Bandeira</label>
                  </div>
                  <div class="col-3">
                    <input type="text" class="form-control" id="bandeira" name="bandeira"  value="">
                  </div>
                </div>
                <div class="row">
                  <div class="col-1">
                    <label for="loja">Loja</label>
                  </div>
                </div>
                <div class="row">
                	<div class="col-3" style="padding-bottom: 4px;">
                		<textarea class="loja" id="loja" class="form-control" name="loja" value=""></textarea>
                  	</div>
                </div>
                <div class="row">
                  <div class="col-5">
                    <label for="inscEstadual">Insc. Estadual</label>
                  </div>
                  <div class="col-4">
                    <input type="text" class="form-control" id="inscEstadual" name="inscEstadual" value="">
                  </div>
                </div>
                <div class="row">
                  <div class="col-3">
                    <label for="cnpj">CNPJ</label>
                  </div>
                  <div class="col-4">
                    <input type="text" class="form-control" id="cnpj" name="cnpj" value="">
                  </div>
                </div>
                <div class="row">
                  <div class="col-4">
                    <label for="inauguracao">Inauguração</label>
                  </div>
                  <div class="col-4">
                    <input type="text" class="form-control" id="inauguracao" name="inauguracao"  value="">
                  </div>
                </div>
                <div class="row">
                  <div class="col-8">
                    <label for="endereco">Endereço Completo</label>
                  </div>
                </div>
                <div class="row">
                  <div class="col-8">
                    <textarea class="endereco" id="endereco" class="form-control" value=""></textarea>
                  </div>
                </div>
              </div>
              <br>
            </div>
            <div class="col-sm">
              <div id="contatos">
                <div class="row">
                  Contatos
                </div>
                <br>
                <div class="row">
                  <div class="col-4">
                    <label for="telefone1">Telefone 1</label>
                  </div>
                  <div class="col-4">
                    <input type="text" class="form-control" id="telefone1" name="telefone1" value="">
                  </div>
                </div>
                <div class="row">
                  <div class="col-4">
                    <label for="telefone2">Telefone 2</label>
                  </div>
                  <div class="col-4">
                    <input type="text" class="form-control" id="telefone2" name="telefone2" value="">
                  </div>
                </div>
                <div class="row">
                  <div class="col-4">
                    <label for="emailLoja">Email Loja</label>
                  </div>
                </div>
                <div class="row">
                  <div class="col-4">
                   <textarea class="emailLoja" id="emailLoja" name="emailLoja" class="form-control" ></textarea>
                  </div>
                </div>
              </div>
              <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 20px;">
                <div id="ggl">
                  <div class="row">
                    GGL
                  </div>
                  <br>
                  <div class="row">
                    <div class="col-4">
                      <label for="nomeGGL">Nome</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="nomeGGL" name="nomeGGL"  value="">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-3">
                      <label for="telefoneGGL">Telefone</label>
                    </div>
                    <div class="col-5">
                      <input type="text" class="form-control" id="telefoneGGL" name="telefoneGGL"  value="">
                    </div>
                  </div>
                </div>
              </div>
              <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 50px;">
              <div id="prestadores" >
                <div class="row">
                  Prestadores
                </div>
                <br>
                <div class="row">
                  <div class="row">
                    <div class="col-6">
                      <label for="fieldLocal">Field Local</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="fieldLocal" name="fieldLocal"  value="">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="row">
                    <div class="col-7">
                      <label for="fieldMultifuncional">Field Multifuncional</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="fieldMultifuncional" name="fieldMultifuncional"  value="">
                    </div>
                  </div>
                </div>
              </div>
              </div>
            </div>
            <div class="col-sm">
              <br>
              <div class="row" style="padding-left: 13px; padding-right: 12px;">
                <div id="atendimento">
                  <div class="row">
                    Atendimento
                  </div>
                  <br>
                  <div class="row">
                    <div class="col-4">
                      <label for="segASex">Seg. a Sex.</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="segASex" name="segASex"  value="">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-4">
                      <label for="sab">Sab.</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="sab" name="sab"  value="">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-4">
                      <label for="dom">Dom.</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="dom" name="dom"  value="">
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-2">
                      <label for="obs">Obs.</label>
                    </div>
                    <div class="col-4">
                      <input type="text" class="form-control" id="obs" name="obs" value="">
                    </div>
                  </div>
                </div>
              </div>
              <div class="row" style="padding-left: 150px; padding-top: 100px">
              	<button type="submit" class="btn btn-success">Encaminhar Email</button>
              </div>
              <div class="row" style="padding-left: 150px; padding-top: 50px">
              	<a href="/Data"><button type="button" class="btn btn-success">Voltar</button></a>
              </div>
            </div>
          </div>
          <br>
      </form>
</div>

    
    <script src="/js/somenteNumero.js"></script>
    <script src="/js/logHardware.js"></script>
    <script src="/js/logPinpad.js"></script>
    <script src="/js/logNotificacao.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
