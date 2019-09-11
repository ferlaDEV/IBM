<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Administrador de dados</title>
  
  <link rel="icon" type="imagem/png" href="/img/favicon.ico" />

  <!-- Custom fonts for this template-->
  <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="/css/style.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand topbar mb-3 static-top shadow" style="height: 60px; background-color: black;">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>


            <div class="topbar-divider d-none d-sm-block"></div>
            
            	<div class="btn-group">
 	 				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    					Analista Logado: <%= request.getUserPrincipal().getName() %>
  					</button>
  					<div class="dropdown-menu dropdown-menu-right">
  						<form action="/Logout">
    						<a href="<c:url value="/logout" />"><button class="dropdown-item" type="button">Logout</button></a>
    					</form>
  					</div>
				</div>
            

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
<div class="container-fluid" style="padding-top: 70px">
                <form class="" action="EnviarEmail" method="POST">
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-dados" role="tabpanel" aria-labelledby="pills-dados-tab" >
                  <div class="row">
                    <div class="col-sm">
                      <div id="dadosLojaCadastro">
                        <div class="row">
                          Dados Loja
                        </div>
                        <br>
                        <div class="row">
                          <div class="col-4">
                            <div class="input-group input-group-sm mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>VD</strong></span>
                              </div>
                              <input type="text" class="form-control" name="id" placeholder="" id="id" maxlength="4" onkeypress='return SomenteNumero(event)' required value=""style="text-align: center;">
                            </div>
                          </div>
                          <div class="col-7">
                              <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <label class="input-group-text" style="color: black;"><strong>Bandeira</strong></label>
                                  </div>
                                  <select class="custom-select" name="bandeira">
                                    <option selected>Escolha</option>
                                    <option value="DSP">Drogaria São Paulo</option>
                                    <option value="DP">Drogaria Pacheco</option>
                                  </select>
                                </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-11">
                            <div class="input-group input-group-sm mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Loja</strong></span>
                              </div>
                              <input type="text" class="form-control" value="" id="loja" name="loja" style="text-align: center;">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-11">
                            <div class="input-group input-group-sm mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm"  style="color: black;"><strong>Insc. Estadual</strong></span>
                              </div>
                              <input type="text" class="form-control"  value="" id="inscEstadual" name="inscEstadual" style="text-align: center;">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CNPJ</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="cnpj" name="cnpj" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Inauguração</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="inauguracao" name="inauguracao" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Endereço</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" name="endereco" style="text-align: center;">
                                  </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Bairro</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value=""  name="bairro" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Cidade</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" name="cidade" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                          <div class="col-5">
                              <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <label class="input-group-text" style="color: black;"><strong>UF</strong></label>
                                  </div>
                                  <select class="custom-select" name="uf">
                                    <option selected>Escolha</option>
                                    <option value="AL">AL</option>
                                    <option value="BA">BA</option>
                                    <option value="DF">DF</option>
                                    <option value="ES">ES</option>
                                    <option value="GO">GO</option>
                                    <option value="MG">MG</option>
                                    <option value="PE">PE</option>
                                    <option value="PR">PR</option>
                                    <option value="RJ">RJ</option>
                                    <option value="SP">SP</option>
                                  </select>
                                </div>
                          </div>
                          <div class="col-6">
                              <div class="input-group input-group-sm mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CEP</strong></span>
                                  </div>
                                  <input type="text" class="form-control" name="cep" class="form-control" value="" style="text-align: center;">
                                </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm">
                      <div id="contatos">
                        <div class="row">
                          Contatos
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 1</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="telefone1" name="telefone1" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 2</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="telefone2" name="telefone2" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-2">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black; height: 50px; width: 70px"><strong>Email</strong></span>
                                    </div>
                                </div>
                              </div>
                              <div class="col-7">
                              <textarea class="emailLoja" id="emailLoja" class="form-control" id="emailLoja" name="emailLoja" value="" style="text-align: center;"></textarea>
                                        </div>
                          <!-- <div class="col-4">
                            <label for="emailLoja">Email Loja</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-4">
                           <textarea class="emailLoja" id="emailLoja" name="emailLoja" class="form-control" ></textarea>
                          </div>-->
                        </div> 
                      </div>
                      <div id="erro" style="padding-top: 40px;" >
                          <c:if test="${mensagemSuccess != null }">
                              <div class="alert alert-success alert-dismissible fade show" role="alert">
                                  <div class="row" style="text-align: center;">
                                      ${mensagemSuccess}
                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                                  </div>
                              </div>
                          </c:if>
                      </div>
                      <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 75px;">
                        <div id="ggl">
                          <div class="row">
                            GGL
                          </div>
                          <br>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Nome do GGL</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="nomeGGL" name="nomeGGL" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Tel. do GGL</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="telefoneGGL" name="telefoneGGL" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm">
                      <div id="prestadores">
                        <div class="row">
                          Prestadores
                        </div>
                        <br>
                        <div class="row">
                          <div class="col-11">
                                  <div class="input-group mb-3">
                                      <div class="input-group-prepend">
                                        <label class="input-group-text" style="color: black;"><strong>Field Local</strong></label>
                                      </div>
                                      <select class="custom-select" name="fieldLocal">
                                        <option selected>Escolha</option>
                                        <option value="UNISYS">Unisys</option>
                                        <option value="VERHAW">Verhaw</option>
                                      </select>
                                    </div>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <label class="input-group-text" style="color: black;"><strong>Field Multifuncional</strong></label>
                                    </div>
                                    <select class="custom-select" name="fieldMultifuncional">
                                      <option selected>Escolha</option>
                                      <option value="OTG">OTG</option>
                                      <option value="LEXMARK">Lexmark</option>
                                    </select>
                                  </div>
                      </div>
                        </div>
                      </div>
                      <br>
                      <div class="row" style="padding-left: 13px; padding-right: 12px;">
                        <div id="atendimento">
                          <div class="row">
                            Atendimento
                          </div>
                          <br>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Seg. a Sex.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="segASex" name="segASex" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Sab.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="sab" name="sab" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Dom.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="dom" name="dom" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>OBS.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" name="obs" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                        </div>
                      </div>
                       <div class="row" style="padding-top: 25px">
                       <div class="col-2"></div>
                        <div class="col-6">
                            <button type="submit" class="btn btn-success">Encaminhar Email</button>
                        </div>
                        <div class="col-3">
                        	<a href="/VoltarEmail"><button type="button" class="btn btn-primary">Voltar</button></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
          </div>
          </form>
</div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Ferlapx 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
  
      <!-- Modal direcionamento hardware-->
    <div id="hardware" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para direcionamento</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body" id="copiarLogDirHardware">
          	<p>#Direcionamento</p>
          	Loja: <label id="lojaModal"></label>
          	<br>
          	CNPJ: <label id="cnpjModal"></label>
          	<br>
          	Serie: <label id="serieHardwareModal"></label>
          	<br>
          	Micro: <label id="tipoMicroHardwareModal"></label> <label id="microModal"></label>
          	<br>
          	Modelo: <label id="modeloModal"></label>
          	<br>
          	Endereço: <label id="enderecoModal"></label>
          	<br>
          	Contatos: <label id="telefone1Modal"></label> e <label id="telefone2Modal"></label>
          	<br>
          	Gerente: <label id="gerenteHardwareModal"></label>
            <br>
            Problema relatado:
              	<textarea class="problemaHardwareModal" id="problemaHardwareModal" readonly style="width: 90%; height: 60px; resize: none; overflow-y: scroll"></textarea>
            Procedimentos feitos:
            	<textarea class="testesHardwareModal" id="testesHardwareModal" readonly style="width: 90%; height: 60px; resize: none; overflow-y: scroll"></textarea>
            <br>
            	Doc. Pandora Utilizado: <div style="width: 90%; height: 30px; overflow-y: scroll"><div id="docPandoraModalDir"></div></div>
          </div>
          <div class="modal-footer">
            <a href="#" id="btnCopiarLogDirHardware" data-clipboard-action="copy" data-clipboard-target="#copiarLogDirHardware"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal direcionamento hardware-->

    <!-- Modal encerramento hardware-->
    <div id="encerramentoHardware" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para Encerramento</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body" id="copiarLogEncHardware">
          	Problema Relatado: <label id="problemaEncHardModal"></label>
          	<br>
          	Descrição detalhada da ação efetuada ou orientação: <label id="testesEncHardModal"></label>
          	<br>
          	Gerente: <label id="gerenteEncHardModal"></label>
          	<br>
          	Doc. Pandora Utilizado: <div id="docPandoraModalHardEnc"></div>
          </div>
          <div class="modal-footer">
            <a href="#" id="btnCopiarLogEncHardware" data-clipboard-action="copy" data-clipboard-target="#copiarLogEncHardware"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal encerramento hardware-->

    <!-- Modal direcionamento pinpad-->
        <div id="pinpad" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para direcionamento</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body" id="copiarLogDirPinpad">
          	<p>#Direcionamento</p>
           	Loja: <label id="lojaPinpadModal"></label>
           	<br>
           	CNPJ: <label id="cnpjPinpadModal"></label>
          	<br>
         	Serie: <label id="seriePinpadModal"></label>
          	<br>
           	Numero Lógico: <label id="numeroLogicoModal"></label>
           	<br>
           	Estabelecimento Cielo: <label id="estabelecimentoCieloModal"></label>
           	<br>
           	Endereço: <label id="enderecoPinpadModal"></label>
          	<br>
          	Contatos: <label id="telefone1PinpadModal"></label> e <label id="telefone2PinpadModal"></label>
           	<br>
           	Gerente: <label id="gerentePinpadModal"></label>
             <br>
             Seg. a Sex.: <label id="segASexPinpadModal"></label> || Sab.: <label id="sabPinpadModal"></label> || Dom.: <label id="domPinpadModal"></label>
             <br>
             Problema relatado:
             	<textarea class="problemaPinpadModal" id="problemaPinpadModal" readonly style="width: 90%; height: 60px; resize: none; overflow-y: scroll"></textarea>
             Procedimentos feitos:
             <br>
             <textarea class="testesPinpadModal" id="testesPinpadModal" readonly style="width: 90%; height: 60px; resize: none; overflow-y: scroll"></textarea>
<!--              	<p class="testesPinpadModal" id="testesPinpadModal" style="word-break: break-all;"></p> -->
           	<br>
          		Doc. Pandora Utilizado: <div style="width: 90%; height: 30px; overflow-y: scroll"><div id="docPandoraModalDirPin"></div></div>
          </div>
           <div class="modal-footer">
            <a href="#" id="btnCopiarLogDirPinpad" data-clipboard-action="copy" data-clipboard-target="#copiarLogDirPinpad"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
           </div>
        </div>
      </div>
    </div>
    <!-- Fim modal direcionamento pinpad-->

    <!-- Modal encerramento pinpad-->
    <div id="encerramentoPinpad" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para Encerramento</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body" id="copiarLogEncPinpad">
          	Problema Relatado: <label id="problemaEncPinModal"></label>
          	<br>
          	Descrição detalhada da ação efetuada ou orientação: <label id="testesEncPinModal"></label>
          	<br>
          	Gerente: <label id="gerenteEncPinModal"></label>
          	<br>
          	Doc. Pandora Utilizado: <div id="docPandoraModalPin"></div>
          </div>
          <div class="modal-footer">
            <a href="#" id="btnCopiarLogEncPinpad" data-clipboard-action="copy" data-clipboard-target="#copiarLogEncPinpad"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal encerramento pinpad-->

    <!-- Modal notificação-->
    <div id="notificacao" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para notificação</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
			<div class="row" style="padding-top: 10px">
				<div class="col-2"></div>
				<div class="col-10">
					<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    	<li class="nav-item">
                      		<a class="nav-link active" id="pills-not1-tab" data-toggle="pill" href="#pills-not1" role="tab" aria-controls="pills-not1" aria-selected="true">1ª Tentativa</a>
                    	</li>
                    	<li class="nav-item">
                     		 <a class="nav-link" id="pills-not2-tab" data-toggle="pill" href="#pills-not2" role="tab" aria-controls="pills-not2" aria-selected="false">2ª Tentativa</a>
                    	</li>
                    	<li class="nav-item">
                     		 <a class="nav-link" id="pills-not3-tab" data-toggle="pill" href="#pills-not3" role="tab" aria-controls="pills-not3" aria-selected="false">3ª Tentativa</a>
                    	</li>
                  	</ul>
				</div>
			</div>
			<div class="tab-content" id="pills-tabContent">
				<div class="tab-pane fade show active" id="pills-not1" role="tabpanel" aria-labelledby="pills-not1-tab" >
					<div class="modal-body" id="copiarLogNotificacao1">
						#1 Tentativa de Contato
						<br>
						Tentativa de contato com a filial para verificar o incidente, sem sucesso. Feito a tentativa de ligar nos 
						seguintes telefones da filial: <label id="telefone1NotModal"></label> e <label id="telefone2NotModal"></label> e VOIP.
          				Por gentileza entrar em contato para que seja verificado o caso, se possível, informar um número celular.
          			</div>
          			<div class="modal-footer">
            			<a href="#" id="btnCopiarLogNotificacao" data-clipboard-action="copy" data-clipboard-target="#copiarLogNotificacao1"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          			</div>
				</div>
				<div class="tab-pane fade" id="pills-not2" role="tabpanel" aria-labelledby="pills-not2-tab" >
					<div class="modal-body" id="copiarLogNotificacao2">
						#2 Tentativa de Contato
						<br>
						Tentativa de contato com a filial para verificar o incidente, sem sucesso. Feito a tentativa de ligar nos 
						seguintes telefones da filial:<label id="telefone1NotModal2"></label> e <label id="telefone2NotModal2"></label> e VOIP. 
						E tambem com o(a) GGL: <label id="nomeGGLNotModal"></label> no <label id="telGGLNotModal"></label>.
						Por gentileza entrar em contato para que seja verificado o caso, se possível, informar um número celular.
          			</div>
          			<div class="modal-footer">
            			<a href="#" id="btnCopiarLogNotificacao2" data-clipboard-action="copy" data-clipboard-target="#copiarLogNotificacao2"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          			</div>
				</div>
				<div class="tab-pane fade" id="pills-not3" role="tabpanel" aria-labelledby="pills-not3-tab" >
					<div class="modal-body" id="copiarLogNotificacao3">
						#Falta de contato
						<br>
						Estou finalizando o incidente por três tentativas de contato sem sucesso com os seguintes telefones da filial: 
						<label id="telefone1NotModal3"></label> e <label id="telefone2NotModal3"></label> e VOIP. 
						E tambem com o(a) GGL: <label id="nomeGGLNotModal2"></label> no <label id="telGGLNotModal2"></label>.
          			</div>
          			<div class="modal-footer">
            			<a href="#" id="btnCopiarLogNotificacao3" data-clipboard-action="copy" data-clipboard-target="#copiarLogNotificacao3"><i class="fas fa-copy" style="size: 20px ">  Copiar Log</i></a>
          			</div>
				</div>
			</div>
        </div>
      </div>
    </div>
    <!-- Fim modal notificação-->
    
    <!-- Modal Cobrança-->
    <div id="cobranca" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para Cobrança</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body" id="copiarLogCobranca">
          	#Cobrança
          	<br><br>
          	O gerente <label id="gerenteCobModal"></label> solicita urgência no atendimento. Informou mais um telefone para contato <label id="telAltCobModal"></label>
          	<br>
          	Mais informações:
          	<label id="maisInfoModal"></label>
          </div>
          <div class="modal-footer">
            <a href="#" id="btnCopiarLogCobranca" data-clipboard-action="copy" data-clipboard-target="#copiarLogCobranca"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal Cobrança-->

  <!-- Bootstrap core JavaScript-->
  	<script src="/js/clipboard.min.js"></script>
  	<script src="/js/copiarLogClipboard.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="/js/somenteNumero.js"></script>
  <script src="/js/logHardwareADM.js"></script>
  <script src="/js/logPinpadADM.js"></script>
  <script src="/js/logNotificacao.js"></script>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/bootstrap/js/bootstrap.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  

  <!-- Core plugin JavaScript-->
  <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/js/sb-admin-2.min.js"></script>
  

</body>

</html>
