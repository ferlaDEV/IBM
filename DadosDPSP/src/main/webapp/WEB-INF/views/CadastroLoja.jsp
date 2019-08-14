<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Administrador de dados</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">

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


          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
            <form class="" action="CadastrarLoja" method="POST">
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
                                <div class="row">
                                  <div class="col-8">
                                    <input type="text" class="form-control" name="id" placeholder="" id="id" maxlength="4" onkeypress='return SomenteNumero(event)' required value="">
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
                            <textarea class="loja" id="loja" name="loja" class="form-control" ></textarea>
                            </div>
                        </div>
                        <div class="row">
                          <div class="col-5">
                            <label for="inscEstadual">Insc. Estadual</label>
                          </div>
                          <div class="col-4">
                            <input type="text" class="form-control" id="inscEstadual" name="inscEstadual"  value="">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-3">
                            <label for="cnpj">CNPJ</label>
                          </div>
                          <div class="col-4">
                            <input type="text" class="form-control" id="cnpj" name="cnpj"  value="">
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
                            <label for="endereco">Endereço</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-8">
                            <input type="text" id="obs" name="endereco" class="form-control" value="${data.endereco }">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-8">
                            <label for="endereco">Bairro</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-8">
                            <input type="text" id="obs" name="bairro" class="form-control" value="${data.bairro }">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-8">
                            <label for="endereco">Cidade</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-8">
                            <input type="text" id="obs" name="cidade" class="form-control" value="${data.cidade }">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-6">
                            <label for="endereco">UF</label>
                          </div>
                          <div class="col-6">
                            <label for="endereco">CEP</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-6">
                            <input type="text" name="uf" class="form-control" value="${data.uf }" style="height: 28px; width: 50px; backgroud-color: black;">
                          </div>
                          <div class="col-6">
                            <input type="text" name="cep" id="fieldLocal" class="form-control" value="${data.cep }">
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
                            <input type="text" class="form-control" id="telefone1" name="telefone1"   value="">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-4">
                            <label for="telefone2">Telefone 2</label>
                          </div>
                          <div class="col-4">
                            <input type="text" class="form-control" id="telefone2" name="telefone2"  value="">
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
                      <div id="erro" style="padding-top: 80px;" >
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
                          <c:if test="${mensagemError != null }">
                              <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                  <div class="row" style="text-align: center;">
                                      ${mensagemError}
                                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                                  </div>
                              </div>
                          </c:if>
                      </div>
                      <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 140px;">
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
                              <input type="text" class="form-control" id="segASex" name="segASex" value="">
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
                              <input type="text" class="form-control" id="obs" name="obs"  value="">
                            </div>
                          </div>
                        </div>
                      </div>
                      <br>
                       <div class="row" style="padding-left: 150px; padding-top: 100px">
                        <button type="submit" class="btn btn-success">Cadastrar Loja</button>
                      </div>
                    </div>
                  </div>
                  <br>
                  <br>
                </div>
          </div>
          </form>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
