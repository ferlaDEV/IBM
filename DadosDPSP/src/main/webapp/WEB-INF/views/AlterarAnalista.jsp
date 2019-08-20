<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-BR">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
<!--   <meta name="author" content=""> -->

  <title>Administrador de dados</title>

  <!-- Custom fonts for this template-->
  <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="/css/style.css" rel="stylesheet">
  
  <!--Icone do navegador-->
	<link rel="icon" type="imagem/png" href="/img/favicon.ico" />

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
            <li class="nav-item">
      	<a class="nav-link" href="/DataADM">
        	<i class="fas fa-database"></i>
          	<span>Sistema de Dados</span>
          </a>
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
            <a class="collapse-item" href="ListarAnalista"><i class="fas fa-fw fa-user-edit"></i> Listar Analista</a>
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
                    <div class="row" style="height: 30px"></div>
                    <div class="row">
                        <h1>Cadastro de Analistas</h1>
                    </div>
                </div>
                <div class="col-2"></div>
            </div>
            <form action="/AlterarAnalista" method="GET">
                <div class="row" style="padding-top: 30px; padding-bottom: 30px; border: 2px; border-style: solid; border-width: 100%; border-radius: 10px">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <div class="row">
                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Nome Completo</span>
                                    </div>
                                    <input type="text" class="form-control" name="fullName" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${user.fullName}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Login W3</span>
                                    </div>
                                    <input type="text" class="form-control" name="_id" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" readonly value="${user._id}">
                                </div> 
                            </div>
                            <div class="col-6">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Tipo de Acesso</span>
                                    </div>
                                    <input type="text" class="form-control" name="access" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${user.access}">
                                </div> 
                            </div>
                        </div>
              <div class="row">
              	<div class="col-5"></div>
                <div class="col-3">
                	<button type="submit" class="btn btn-success">Alterar Analista</button>
                </div>
                <div class="col-4"></div>
              </div>
                                      <div class="row">
                  <div class="col-3"></div>
                  <div class="col-6">
                      <div id="erro" style="padding-top: 20px; padding-bottom: 20px;" >
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
                  </div>
                  <div class="col-3"></div>
              </div>
                    </div>
                    <div class="col-2"></div>
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

  </div>
  <!-- End of Page Wrapper -->


  <!-- Bootstrap core JavaScript-->
  <script src="/bootstrap/js/bootstrap.min.js"></script>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>


  <!-- Core plugin JavaScript-->
  <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/js/sb-admin-2.min.js"></script>

</body>

</html>