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
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Ferramentas
      </div>
      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
      	<a class="nav-link" href="/Data">
        	<i class="fas fa-database"></i>
          	<span>Sistema de Dados</span>
          </a>
      </li>
            <!-- Divider -->
      <hr class="sidebar-divider">
      
      <div class="sidebar-heading">
        Controles Pessoais
      </div>
      
      <li class="nav-item">
        <a class="nav-link" href="/ListarDesvioAnalista">
          <i class="fas fa-map-signs"></i>
          <span>Desvios Recebidos</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/ListarAlinhamentoPendenteLeitura">
          <i class="fas fa-glasses"></i>
          <span>Pendencia de Leitura</span></a>
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-6">
                    <div class="row" style="height: 30px"></div>
                    <div class="row">
                        <h1>Feedback do Desvio</h1>
                    </div>
                </div>
                <div class="col-2"></div>
            </div>
            <form action="/Feedback" method="GET">
                <div class="row" style="padding-top: 30px; padding-bottom: 30px; border: 2px; border-style: solid; border-width: 100%; border-radius: 10px">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <div class="row">
                        	<div class="col-1"></div>
                            <div class="col-5">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Nº Chamado</span>
                                    </div>
                                    <input type="text" class="form-control" name="_id" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" readonly value="${Desvio._id}">
                                </div>
                            </div>
                            <div class="col-5">
                          	<div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Data Desvio</span>
                                    </div>
                                    <input type="text" class="form-control" name="dataDesvio" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" readonly value="${Desvio.dataDesvio}">
                                </div> 
                                <div class="col-1"></div>
                            </div>
                        </div>
                        <div class="row">
                        	<div class="col-2"></div>
                            <div class="col-8">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Tipo do Desvio</span>
                                    </div>
                                    <input type="text" class="form-control" name="tipoDesvio" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" readonly value="${Desvio.tipoDesvio}">
                                </div> 
                            </div>
                            <div class="col-2"></div>
                        </div>
                        <div class="row">
                        	<div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Justificativa do Desvio</span>
                                    </div>
                                    <input type="text" class="form-control" name="access" aria-label="Sizing example input" readonly aria-describedby="inputGroup-sizing-default" value="${Desvio.justificativa}">
                                </div> 
                        	</div>
                        </div>
                        <div class="row">
                        	<div class="col-5">
                        		<h5>Está de acordo com o desvio?</h5>
                        	</div>
                        	<div class="col-6">
                        		<div class="form-check form-check-inline">
  									<input class="form-check-input" type="radio" name="deAcordo" id="inlineRadio1" value="Sim">
  									<label class="form-check-label" for="inlineRadio1">Sim</label>
								</div>
								<div class="form-check form-check-inline">
  									<input class="form-check-input" type="radio" name="deAcordo" id="inlineRadio2" value="Nao">
  									<label class="form-check-label" for="inlineRadio2">Não</label>
								</div>
                        	</div>
                        </div>
                        <div class="row">
                        	<div class="input-group">
  								<div class="input-group-prepend">
    								<span class="input-group-text">Comentarios</span>
  								</div>
  								<textarea class="form-control" name="comentario" required aria-label="Com textarea" style="height: 100px; resize: none"></textarea>
							</div>
                        </div>
              			<div class="row" style="padding-top: 20px">
              				<div class="col-4"></div>
                			<div class="col-4">
                				<div class="row">
                					<div class="col-8">
                						<button type="submit" class="btn btn-success">Dar Feedback</button>
                					</div>
                					<div class="col-4">
                						<a href="/CancelarFeedback"><button type="button" class="btn btn-danger">Cancelar</button></a>
                					</div>
                				</div>
                			</div>
                			<div class="col-4"></div>
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
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


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
