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

    <!-- Sidebar -->
    <ul class="navbar-nav sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: black">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/Dashboard">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-pills"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Administrador de dados</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="/Dashboard">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-user"></i>
          <span>Analistas</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="CadastroAnalista"><i class="fas fa-fw fa-user-plus"></i> Cadastrar Analista</a>
            <a class="collapse-item" href="AtualizaAnalista"><i class="fas fa-fw fa-user-edit"></i> Alterar Analista</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-store"></i>
          <span>Lojas</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="CadastroLoja"><i class="fas fa-fw fa-plus-square"></i> Cadastrar Loja</a>
            <a class="collapse-item" href="AtualizaLoja"><i class="fas fa-fw fa-edit"></i> Alterar Loja</a>
          </div>
        </div>
      </li>

    

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

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
 	 				<button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
        <div class="container-fluid">
          <div class="row">
            <div class="col-4"></div>
            <div class="col-6">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="pills-dados-tab" data-toggle="pill" href="#pills-dados" role="tab" aria-controls="pills-dados" aria-selected="true">Dados</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-fp-tab" data-toggle="pill" href="#pills-fp" role="tab" aria-controls="pills-fp" aria-selected="false">F�rmacia Popular</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-tratativa-tab" data-toggle="pill" href="#pills-tratativa" role="tab" aria-controls="pills-tratativa" aria-selected="false">Tratativa</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-ips-tab" data-toggle="pill" href="#pills-ips" role="tab" aria-controls="pills-ips" aria-selected="false">IP's/Links</a>
                    </li>
                  </ul>
            </div>
            <div class="col-2"></div>
          </div>
          <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-dados" role="tabpanel" aria-labelledby="pills-dados-tab" >
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
                          <form class="" action="Buscar" method="GET">
                            <div class="row">
                              <div class="col-8">
                                <input type="text" class="form-control" name="id" placeholder="${data._id }" id="id" maxlength="4" onkeypress='return SomenteNumero(event)' required value="">
                              </div>
                              <div class="col-2">
                                <button class="btn btn-primary" type="submit">Buscar</button>
                              </div>
                            </div>
                          </form>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                      <div class="col-3">
                        <label for="bandeira">Bandeira</label>
                      </div>
                      <div class="col-3">
                        <input type="text" class="form-control" id="bandeira" readonly value="${data.bandeira }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-1">
                        <label for="loja">Loja</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3" style="padding-bottom: 4px;">
                        <textarea class="loja" id="loja" class="form-control" readonly>${data.loja }</textarea>
                        </div>
                    </div>
                    <div class="row">
                      <div class="col-5">
                        <label for="inscEstadual">Insc. Estadual</label>
                      </div>
                      <div class="col-4">
                        <input type="text" class="form-control" id="inscEstadual" readonly value="${data.inscEstadual }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-3">
                        <label for="cnpj">CNPJ</label>
                      </div>
                      <div class="col-4">
                        <input type="text" class="form-control" id="cnpj" readonly value="${data.cnpj }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4">
                        <label for="inauguracao">Inaugura��o</label>
                      </div>
                      <div class="col-4">
                        <input type="text" class="form-control" id="inauguracao" readonly value="${data.inauguracao }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-8">
                        <label for="endereco">Endere�o Completo</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-8">
                        <textarea class="endereco" id="endereco" class="form-control" readonly>${data.enderecoCompleto }</textarea>
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
                        <input type="text" class="form-control" id="telefone1"  readonly value="${data.telefone1 }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4">
                        <label for="telefone2">Telefone 2</label>
                      </div>
                      <div class="col-4">
                        <input type="text" class="form-control" id="telefone2" readonly value="${data.telefone2 }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4">
                        <label for="emailLoja">Email Loja</label>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4">
                       <textarea class="emailLoja" id="emailLoja" class="form-control" readonly>${data.email }</textarea>
                      </div>
                    </div>
                  </div>
                  <div id="erro" style="padding-top: 30px;" >
                    <c:if test="${erro != null }">
              <div class="alert alert-danger" role="alert">
                <div class="row" style="text-align: center;">
                  ${erro}
                  Caso possua os dados da loja para cadastro clique aqui!!
                </div>
                <div class="row">
                  <div class="col-3"></div>
                  <div class="col-7">
                    <button type="button" class="btn btn-warning">Solicitar Cadastro</button>
                  </div>
                  <div class="col-2"></div>
                </div>
              </div>
             </c:if>
                  </div>
                  <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 130px;">
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
                          <input type="text" class="form-control" id="nomeGGL" readonly value="${data.ggl }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-3">
                          <label for="telefoneGGL">Telefone</label>
                        </div>
                        <div class="col-5">
                          <input type="text" class="form-control" id="telefoneGGL" readonly value="${data.telefoneGgl }">
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
                      <div class="row">
                        <div class="col-6">
                          <label for="fieldLocal">Field Local</label>
                        </div>
                        <div class="col-4">
                          <input type="text" class="form-control" id="fieldLocal" readonly value="${data.fieldLocal }">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="row">
                        <div class="col-7">
                          <label for="fieldMultifuncional">Field Multifuncional</label>
                        </div>
                        <div class="col-4">
                          <input type="text" class="form-control" id="fieldMultifuncional" readonly value="${data.fieldMultifuncional }">
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
                        <div class="col-4">
                          <label for="segASex">Seg. a Sex.</label>
                        </div>
                        <div class="col-4">
                          <input type="text" class="form-control" id="segASex" readonly value="${data.segASex }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4">
                          <label for="sab">Sab.</label>
                        </div>
                        <div class="col-4">
                          <input type="text" class="form-control" id="sab" readonly value="${data.sab }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-4">
                          <label for="dom">Dom.</label>
                        </div>
                        <div class="col-4">
                          <input type="text" class="form-control" id="dom" readonly value="${data.dom }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-2">
                          <label for="obs">Obs.</label>
                        </div>
                        <div class="col-4">
                          <input type="text" class="form-control" id="obs" readonly value="${data.obs }">
                        </div>
                      </div>
                    </div>
                  </div>
                  <br>
                  <div class="row" style="padding-left: 40px; padding-right: 12px;">
                    <div class="row">
                      <img src="${data.img }">
                    </div>
                  </div>
                </div>
              </div>
              <br>
              <br>
            </div>
            <div class="tab-pane fade" id="pills-fp" role="tabpanel" aria-labelledby="pills-fp-tab">
              <div class="row">
                <div class="col-sm">
                  <div id="popular">
                    <div class="row">
                      Dados F�rmacia Popular
                    </div>
                    <br>
                    <div class="row">
                      <div class="col-4">
                        <label for="usuarioPopular">Usu�rio</label>
                      </div>
                      <div class="col-6">
                <input type="text" class="form-control" id="usuarioPopular" readonly value="${data.usuarioPopular }">
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4">
                        <label for="senhaPopular">Senha</label>
                      </div>
                      <div class="col-6">
                        <input type="text" class="form-control" id="senhaPopular" readonly value="${data.senhaPopular }">
                      </div>
                    </div>
                  </div>
                </div>
                <!-- <div class="col-sm">
                  <div id="popular">
                    <div class="row">
                      Terminais Epharma
                    </div>
                    <br>
                    <div class="row">
                      <div class="col-6">
                        <label for="terminal">N. Terminal</label>
                      </div>
                      <div class="col-5">
                        <input type="text" class="form-control" id="terminal" readonly>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-4">
                        <label for="digito">Digito</label>
                      </div>
                      <div class="col-6">
                        <input type="text" class="form-control" id="digito" readonly>
                      </div>
                    </div>
                  </div>
                </div> -->
              </div>
            </div>
            <div class="tab-pane fade" id="pills-tratativa" role="tabpanel" aria-labelledby="pills-tratativa-tab">
              <div class="row">
                <div class="col-5"></div>
                <div class="col-4">
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="pills-hardware-tab" data-toggle="pill" href="#pills-hardware" role="tab" aria-controls="pills-hardware" aria-selected="true">Hardware</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-pinpad-tab" data-toggle="pill" href="#pills-pinpad" role="tab" aria-controls="pills-pinpad" aria-selected="false">Pinpad</a>
                    </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link" id="pills-sistema-tab" data-toggle="pill" href="#pills-sistema" role="tab" aria-controls="pills-sistema" aria-selected="false">Sistema</a>
                    </li> -->
                  </ul>
                </div>
                <div class="col-5"></div>
              </div>
              <br>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-hardware" role="tabpanel" aria-labelledby="pills-hardware-tab" >
                  <div class="row">
                    <div class="col-sm">
                      <div class="row">
                        <div class="col-2">
                          <strong><label for="gerenteHardware">Gerente</label></strong>
                        </div>
                        <div class="col-2">
                          <input type="text" class="form-control" id="gerenteHardware" maxlength="20">
                        </div>
                      </div>
                      <br>
                      <div class="row">
                          <div class="col-5">
                            <strong><label for="telAlternativo">Telefone Alternativo</label></strong>
                          </div>
                          <div class="col-2">
                            <input type="text" class="form-control" id="telAlternativo" maxlength="20">
                          </div>
                        </div>
                        <br>
                      <div class="row">
                        <div class="col-4">
                          <strong><label for="problemaHardware">Problema relatado</label></strong>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm">
                          <textarea name="problema" id="problemaHardware"></textarea>
                        </div>
                      </div>
                      <br>
                      <div class="row">
                        <div class="col-4">
                          <strong><label for="testesHardware">Testes efetuados</label></strong>
                        </div>
                        <div class="col-sm">
                          <textarea name="testes" id="testesHardware"></textarea>
                        </div>
                      </div>
                      </div>
                      <div class="col-sm">
                          <br>
                          <br>
                          <br>
                          <br>
                        <div class="row" style="padding-left: 40px">
                          <div class="col-2">
                            <strong><label for="micro">Micro</label></strong>
                          </div>
                          <div class="col-5">
                            <select id="tipoMicroHardware">
                              <option>Selecione a op��o</option>
                              <option value="Balcao">Balc�o</option>
                              <option value="Caixa">Caixa</option>
                              <option value="Gerente">Gerente</option>
                              <option value="Impressora">Impressora</option>
                            </select>
                          </div>
                          <div class="col-3">
                            <input type="text" class="form-control" id="numeroMicro" maxlength="3" onkeypress='return SomenteNumero(event)'>
                          </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left: 40px">
                          <div class="col-2">
                            <strong><label for="serieHardware">Serie</label></strong>
                          </div>
                          <div class="col-5">
                            <input type="text" class="form-control" id="serieHardware">
                          </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left: 40px">
                          <div class="col-2">
                            <strong><label for="modelo">Modelo</label></strong>
                          </div>
                          <div class="col-5">
                            <input type="text" class="form-control" id="modelo">
                          </div>
                        </div>
                          <br>
                          <br>
                        <div class="row" style="padding-left: 40px">
                          <div class="col-6">
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#encerramentoHardware" onclick="logHardware()">Gerar log de encerramento</button>
                          </div>
                          <div class="col-6">
                            <div class="row" style="padding-left: 40px">
                              <button type="button" class="btn btn-info" data-toggle="modal" data-target="#notificacao" onclick="logNotificacao()">Gerar log de notifica��o</button>
                            </div>
                          </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left: 180px">
                          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#hardware" onclick="logHardware()">Gerar log de direcionamento</button>
                        </div>
                        <br>
                        <div class="row" style="padding-left: 180px">
                          <div class="col-2"></div>
                          <div class="col-4">
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#cobranca" onclick="logHardware()">Cobran�a</button>
                          </div>
                          <div class="col-4"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="pills-pinpad" role="tabpanel" aria-labelledby="pills-pinpad-tab">
                    <div class="row">
                      <div class="col-sm">
                        <div class="row">
                          <div class="col-2">
                            <strong><label for="gerentePinpad">Gerente</label></strong>
                          </div>
                          <div class="col-2">
                            <input type="text" class="form-control" id="gerentePinpad" maxlength="20">
                          </div>
                        </div>
                        <br>
                        <div class="row">
                          <div class="col-4">
                            <strong><label for="problemaPinpad">Problema relatado</label></strong>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-sm">
                            <textarea name="problemaPinpad" id="problemaPinpad"></textarea>
                          </div>
                        </div>
                        <br>
                        <div class="row">
                          <div class="col-4">
                            <strong><label for="testesPinpad">Testes efetuados</label></strong>
                          </div>
                          <div class="col-sm">
                            <textarea name="testesPinpad" id="testesPinpad"></textarea>
                          </div>
                        </div>
                        </div>
                        <div class="col-sm">
                        <br>
                        <br>
                        <br>
                        <br>
                          <div class="row" style="padding-left: 40px">
                            <div class="col-2">
                              <strong><label for="seriePinpad">Serie</label></strong>
                            </div>
                            <div class="col-5">
                              <input type="text" class="form-control" id="seriePinpad">
                            </div>
                          </div>
                          <br>
                          <div class="row" style="padding-left: 40px">
                            <div class="col-4">
                              <strong><label for="numeroLogico">Numero L�gico</label></strong>
                            </div>
                            <div class="col-5">
                    <input type="text" class="form-control" id="cieloLogico" readonly value="${data.cieloLogico }">
                            </div>
                          </div>
                          <br>
                          <div class="row" style="padding-left: 40px">
                            <div class="col-3">
                              <strong><label for="estabelecimentoCielo">Est. Cielo</label></strong>
                            </div>
                            <div class="col-5">
                              <input type="text" class="form-control" id="estabelecimentoCielo" readonly value="${data.estabelecimentoCielo }">
                            </div>
                          </div>
                            <br>
                            <br>
                          <div class="row" style="padding-left: 40px">
                            <div class="col-6">
                              <button type="button" class="btn btn-success" data-toggle="modal" data-target="#encerramentoPinpad" onclick="logPinpad()">Gerar log de encerramento</button>
                            </div>
                            <div class="col-6">
                              <div class="row" style="padding-left: 40px">
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#notificacao" onclick="logNotificacao()">Gerar log de notifica��o</button>
                              </div>
                            </div>
                          </div>
                          <br>
                          <div class="row" style="padding-left: 180px">
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#pinpad" onclick="logPinpad()">Gerar log de direcionamento</button>
                          </div>
                        </div>
                      </div>
                  </div>
                  <!-- <div class="tab-pane fade" id="pills-sistema" role="tabpanel" aria-labelledby="pills-sistema-tab">
                  </div> -->
                </div>
              </div>
        <div class="tab-pane fade" id="pills-ips" role="tabpanel" aria-labelledby="pills-ips-tab">
                <div id="calculoIp">
                  <div class="row">
                    <div class="col-5"></div>
                    <div class="col-3">
                      Padr�o de IP's da loja
                    </div>
                    <br><br>
                    <div class="col-4"></div>
                  </div>
                  <div class="row">
                    <div class="col-6">
                      <div class="row">
                        <div class="col-5">
                          <label for="ipGerencia">Ger�ncia</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipGerencia" readonly value="${data.ipGerencia }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipBalcao">Balc�es</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipBalcao" readonly value="${data.ipBalcao }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipCaixa">Caixas</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipCaixa" readonly value="${data.ipCaixa }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipImpCupom">Impressora de Cupom</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipImpressoraCupom" readonly value="${data.ipImpCupom }">
                        </div>
                      </div>
                    </div>
                    <div class="col-6">
                      <div class="row">
                        <div class="col-5">
                          <label for="ipLink">Link Geral</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipLink" readonly value="${data.ipLink }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipRoteador">Roteador</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipRoteador" readonly value="${data.ipRoteador }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipTiraTeima">Tira-Teima</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipTiraTeima" readonly value="${data.ipTiraTeima }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipVoip">Voip</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipVoip" readonly value="${data.ipVoip }">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
        	</div>
      	</div>
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
            <span aria-hidden="true">�</span>
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
          <div class="modal-body">
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
          	Endere�o: <label id="enderecoModal"></label>
          	<br>
          	Contatos: <label id="telefone1Modal"></label> e <label id="telefone2Modal"></label>
          	<br>
          	Gerente: <label id="gerenteHardwareModal"></label>
            <br>
            Problema relatado:
              	<p class="problemaHardwareModal" id="problemaHardwareModal" style="word-break: break-all;"></p>
            Procedimentos feitos:
            	<p class="testesHardwareModal" id="testesHardwareModal" style="word-break: break-all;"></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
          <div class="modal-body">
          	Problema Relatado: <label id="problemaEncHardModal"></label>
          	<br>
          	Descri��o detalhada da a��o efetuada ou orienta��o: <label id="testesEncHardModal"></label>
          	<br>
          	Gerente: <label id="gerenteEncHardModal"></label>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
          <div><p>#Direcionamento</p></div>
          <div class="modal-body">
          	Loja: <label id="lojaPinpadModal"></label>
          	<br>
          	CNPJ: <label id="cnpjPinpadModal"></label>
          	<br>
          	Serie: <label id="seriePinpadModal"></label>
          	<br>
          	Numero L�gico: <label id="numeroLogicoModal"></label>
          	<br>
          	Estabelecimento Cielo: <label id="estabelecimentoCieloModal"></label>
          	<br>
          	Endere�o: <label id="enderecoPinpadModal"></label>
          	<br>
          	Contatos: <label id="telefone1PinpadModal"></label> e <label id="telefone2PinpadModal"></label>
          	<br>
          	Gerente: <label id="gerentePinpadModal"></label>
            <br>
            Seg. a Sex.: <label id="segASexPinpadModal"></label> || Sab.: <label id="sabPinpadModal"></label> || Dom.: <label id="domPinpadModal"></label>
            <br>
            Problema relatado:
            	<p class="problemaPinpadModal" id="problemaPinpadModal" style="word-break: break-all;"></p>
            Procedimentos feitos:
            	<p class="testesPinpadModal" id="testesPinpadModal" style="word-break: break-all;"></p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
          <div class="modal-body">
          	Problema Relatado: <label id="problemaEncPinModal"></label>
          	<br>
          	Descri��o detalhada da a��o efetuada ou orienta��o: <label id="testesEncPinModal"></label>
          	<br>
          	Gerente: <label id="gerenteEncPinModal"></label>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal encerramento pinpad-->

    <!-- Modal notifica��o-->
    <div id="notificacao" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para notifica��o</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
          	Tentativa de contato com a filial para verificar o incidente, sem sucesso. Feito contato nos seguintes
          	telefones da filial:  "<label id="telefone1NotModal"></label> e <label id="telefone2NotModal"></label> e VOIP".
          	Por gentileza entrar em contato para que seja verificado o caso, se poss�vel, informar um n�mero celular.
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal notifica��o-->
    
    <!-- Modal Cobran�a-->
    <div id="cobranca" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Log para Cobran�a</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
          	#Cobran�a
          	<br><br>
          	O gerente <label id="gerenteCobModal"></label> solicita urg�ncia no atendimento. Informou mais um telefone para contato <label id="telAltCobModal"></label>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim modal Cobran�a-->

  <!-- Bootstrap core JavaScript-->
  <script src="/js/somenteNumero.js"></script>
  <script src="/js/logHardware.js"></script>
  <script src="/js/logPinpad.js"></script>
  <script src="/js/logNotificacao.js"></script>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/bootstrap/js/bootstrap.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  

  <!-- Core plugin JavaScript-->
  <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/js/sb-admin-2.min.js"></script>
  

</body>

</html>