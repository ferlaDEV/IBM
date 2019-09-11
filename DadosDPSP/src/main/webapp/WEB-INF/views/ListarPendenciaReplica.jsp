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
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Ferramentas
      </div>
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
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Controles de Dados
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
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Controles Operacionais
      </div>
      
                  <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities2" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-map-signs"></i>
          <span>Desvios</span>
        </a>
        <div id="collapseUtilities2" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="CadastroDesvio"><i class="fas fa-fw fa-plus-square"></i> Cadastrar Desvio</a>
            <a class="collapse-item" href="ListarDesvio"><i class="fas fa-fw fa-clipboard-list"></i> Listar Desvios</a>
            <a class="collapse-item" href="ListarDesvioNaoDeacordo"><i class="far fa-thumbs-up"></i> Feedback Analista</a>
            <a class="collapse-item" href="LiberacaoDeDesvio"><i class="fas fa-lock-open"></i> Liberar Desvios</a>
          </div>
        </div>
      </li>
      
            <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Leitura" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-archive"></i>
          <span>Pandora</span>
        </a>
        <div id="Leitura" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="CadastroDeAlinhamento"><i class="fas fa-fw fa-plus-square"></i> Criar Documento</a>
            <a class="collapse-item" href="ListarAlinhamento"><i class="fas fa-fw fa-clipboard-list"></i>  Listar Documento</a>
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
        <nav class="navbar navbar-expand topbar mb-4 static-top shadow" style="height: 60px; background-color: black;">

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
            	<div class="col-8"></div>
           		<div class="col-4">
                	<form action="BuscarDataDeAcordo" method="GET">
                		<div class="input-group mb-3">
  							<input type="text" class="form-control" name="data" placeholder="Buscar Data" aria-label="Recipient's username" aria-describedby="button-addon2">
  							<div class="input-group-append">
    							<button class="btn btn-outline-primary" type="submit" id="button-addon2"><i class="fas fa-search"> Buscar</i></button>
  							</div>
						</div>
                	</form>
                </div>
            </div>
              <div class="row">
            	<div class="col-4"></div>
            	<div class="col-4">
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
                   </div>
            	</div>
            	<div class="col-4"></div>
            </div>
            <div class="row">
					<div class="col-4"></div>
					<div class="col-6">
						<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    		<li class="nav-item">
                      			<a class="nav-link active" id="pills-desvioNaoDeAcordo-tab" data-toggle="pill" href="#pills-desvioNadoDeAcordo" role="tab" aria-controls="pills-desvioNaoDeAcordo" aria-selected="true">Não de Acordo</a>
                    		</li>
                    		<li class="nav-item">
                      			<a class="nav-link" id="pills-desvioDeAcordo-tab" data-toggle="pill" href="#pills-desvioDeAcordo" role="tab" aria-controls="pills-desvioDeAcordo" aria-selected="false">De Acordo</a>
                    		</li>
                    		<li class="nav-item">
                      			<a class="nav-link" id="pills-desvioPendente-tab" data-toggle="pill" href="#pills-desvioPendente" role="tab" aria-controls="pills-desvioPendente" aria-selected="false">Pendentes</a>
                    		</li>
                    	</ul>
					</div>
					<div class="col-2"></div>
				</div>
				<div class="tab-content" id="pills-tabContent" style="padding-top: 50px">
            		<div class="tab-pane fade show active" id="pills-desvioNadoDeAcordo" role="tabpanel" aria-labelledby="pills-desvioNaoDeAcordo-tab" >
           		<div class="row">
                <div class="col-2"></div>
                <div class="col-9">
                    <div class="row"></div>
                    <div class="row">
                    	<div class="col-2"></div>
                    	<div class="col-7">
                    		<h1>Lista de não de Acordo</h1>
                    	</div>
                    </div>
                </div>
                <div class="col-1"></div>
            </div>
				<div class="table-responsive text-nowrap" style="overflow-y: scroll; height: 300px">
						<table class="table table-striped" id="table2excel">
                                <thead>
                                    <tr>
                                        <th scope="col">Nº Chamado</th>
                                        <th scope="col">Dt do Desvio</th>
                                        <th scope="col">Dt do Analise</th>
                                        <th scope="col">Analista Desvio</th>
                                        <th scope="col">Tipo Desvio</th>
                                        <th scope="col">Justicativa</th>
                                        <th scope="col">Ação</th>
                                    </tr>
                                </thead>
                                <tbody >                           	
                                 	<c:forEach var="Desvio" items="${listNaoDeAcordo}">
                                 		<tr>
                                            <td>
                                                ${Desvio._id }
                                            </td>
                                           	<td>
                                                ${Desvio.dataDesvio }
                                            </td>
                                            <td>
                                                ${Desvio.dtAnalise }
                                            </td>
                                            <td>
                                                ${Desvio.analistaDesvio }
                                            </td>
                                            <td>
                                                ${Desvio.tipoDesvio }
                                            </td>
                                           	<td>
                                                ${Desvio.justificativa }
                                            </td>
                                            <td>
                                           		<form action="VisualizarDesvio" method="GET">
                                                	<input type="hidden" name="_id"	value="${Desvio._id }">
                                                	<button type="submit" class="btn btn-primary">Detalhes</button>
                                                </form>
                                            </td>
                                        </tr>
                                 	</c:forEach>
                                </tbody>
                            </table>
					</div>
            		</div>
            		<div class="tab-pane fade" id="pills-desvioDeAcordo" role="tabpanel" aria-labelledby="pills-desvioDeAcordo-tab" >
            	<div class="row">
                <div class="col-1"></div>
                <div class="col-10">
                    <div class="row"></div>
                    <div class="row">
                    	<div class="col-4"></div>
                    	<div class="col-7">
                    		<h1>Lista de Acordo</h1>
                    	</div>
                    </div>
                </div>
                <div class="col-1"></div>
            </div>
				<div class="table-responsive text-nowrap" style="overflow-y: scroll; height: 300px">
						<table class="table table-striped" id="table2excel">
                                <thead>
                                    <tr>
                                        <th scope="col">Nº Chamado</th>
                                        <th scope="col">Dt do Desvio</th>
                                        <th scope="col">Dt do Analise</th>
                                        <th scope="col">Analista Desvio</th>
                                        <th scope="col">Tipo Desvio</th>
                                        <th scope="col">Justicativa</th>
                                        <th scope="col">Ação</th>
                                    </tr>
                                </thead>
                                <tbody >                           	
                                 	<c:forEach var="Desvio" items="${listDeAcordo }">
                                 		<tr>
                                            <td>
                                                ${Desvio._id }
                                            </td>
                                           	<td>
                                                ${Desvio.dataDesvio }
                                            </td>
                                            <td>
                                                ${Desvio.dtAnalise }
                                            </td>
                                            <td>
                                                ${Desvio.analistaDesvio }
                                            </td>
                                            <td>
                                                ${Desvio.tipoDesvio }
                                            </td>
                                           	<td>
                                                ${Desvio.justificativa }
                                            </td>
                                            <td>
                                           		<form action="VisualizarDesvio" method="GET">
                                                	<input type="hidden" name="_id"	value="${Desvio._id }">
                                                	<button type="submit" class="btn btn-primary">Detalhes</button>
                                                </form>
                                            </td>
                                        </tr>
                                 	</c:forEach>
                                </tbody>
                            </table>
					</div>
            		</div>
            	<div class="tab-pane fade" id="pills-desvioPendente" role="tabpanel" aria-labelledby="pills-desvioPendente-tab" >
            	<div class="row">
                <div class="col-1"></div>
                <div class="col-10">
                    <div class="row"></div>
                    <div class="row">
                    	<div class="col-1"></div>
                    	<div class="col-7">
                    		<h1>Lista de Pendencias</h1>
                    	</div>
                    </div>
                </div>
                <div class="col-1"></div>
            </div>
				<div class="table-responsive text-nowrap" style="overflow-y: scroll; height: 300px">
						<table class="table table-striped" id="table2excel">
                                <thead>
                                    <tr>
                                        <th scope="col">Nº Chamado</th>
                                        <th scope="col">Dt do Desvio</th>
                                        <th scope="col">Dt do Analise</th>
                                        <th scope="col">Analista Desvio</th>
                                        <th scope="col">Tipo Desvio</th>
                                        <th scope="col">Justicativa</th>
                                        <th scope="col">Ação</th>
                                    </tr>
                                </thead>
                                <tbody >                           	
                                 	<c:forEach var="Desvio" items="${listPendentes }">
                                 		<tr>
                                            <td>
                                                ${Desvio._id }
                                            </td>
                                           	<td>
                                                ${Desvio.dataDesvio }
                                            </td>
                                            <td>
                                                ${Desvio.dtAnalise }
                                            </td>
                                            <td>
                                                ${Desvio.analistaDesvio }
                                            </td>
                                            <td>
                                                ${Desvio.tipoDesvio }
                                            </td>
                                           	<td>
                                                ${Desvio.justificativa }
                                            </td>
                                            <td>
                                           		<form action="VisualizarDesvio" method="GET">
                                                	<input type="hidden" name="_id"	value="${Desvio._id }">
                                                	<button type="submit" class="btn btn-primary">Detalhes</button>
                                                </form>
                                            </td>
                                        </tr>
                                 	</c:forEach>
                                </tbody>
                            </table>
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
  
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
  <script src="/js/jquery.table2excel.min.js"></script>
  
  <script>
  $("#gerarExcel").click(function(){
	    $("#table2excel").table2excel({
	    // exclude CSS class
	    exclude: ".noExl",
	    filename: "ExportDesvios"
	    }); 
	});
  </script>

</body>

</html>