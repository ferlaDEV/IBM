<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
          <span>Desvios Recebidos</span>
          	<span class="badge badge-danger badge-pill" style="margin-left: 24px; visibility: hidden" id="desvio"></span>
         </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/ListarAlinhamentoPendenteLeitura">
          <i class="fas fa-glasses"></i>
          <span>Pendencia de Leitura</span>
          	  <span class="badge badge-danger badge-pill" style=" margin-left: 10px; visibility: hidden" id="leitura"></span>
         </a>
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
        <nav class="navbar navbar-expand topbar mb-4 static-top shadow" style="background-color: black; height: 50px;">

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
            	<div class="col-xl-4 col-lg-3">
            		<input type=hidden id="desvioSD" value="${Desvios_SD }">
					<input type="hidden" id="desvioDPSP" value="${Desvios_DPSP }">
              		<div class="card shadow mb-4">
                		<!-- Card Header - Dropdown -->
                		<div class="card-header py-3">
                  			<h6 class="m-0 font-weight-bold text-primary">Time Desvio</h6>
                		</div>
                		<!-- Card Body -->
                		<div class="card-body">
                  			<div class="chart-pie pt-4">
                    			<canvas id="lojas"></canvas>
                  			</div>
                		</div>
              		</div>
            	</div>
            	<div class="col-xl-4 col-lg-3">
            		<input type="hidden" id="proativo" value="${proativo }">
					<input type="hidden" id="reativo" value="${reativo }">
					<input type="hidden" id="dpsp" value="${dpsp }">
              		<div class="card shadow mb-4">
                		<!-- Card Header - Dropdown -->
                		<div class="card-header py-3">
                  			<h6 class="m-0 font-weight-bold text-primary">Tipo de Analise</h6>
                		</div>
                		<!-- Card Body -->
                		<div class="card-body">
                  			<div class="chart-pie pt-4">
                    			<canvas id="dsp"></canvas>
                  			</div>
                		</div>
              		</div>
            	</div>
            	<div class="col-xl-4 col-lg-5">
            		<input type="hidden" id="problemProat" value="${problemProat }">
					<input type="hidden" id="parado" value="${parado }">
					<input type="hidden" id="categoria" value="${categoria }">
					<input type="hidden" id="notificacao" value="${notificacao }">
					<input type="hidden" id="script" value="${script }">
              		<div class="card shadow mb-4">
                		<!-- Card Header - Dropdown -->
                		<div class="card-header py-3">
                  			<h6 class="m-0 font-weight-bold text-primary">Desvios Proativos</h6>
                		</div>
                		<!-- Card Body -->
                		<div class="card-body">
                  			<div class="chart-pie pt-4">
                    			<canvas id="dp"></canvas>
                  			</div>
                		</div>
              		</div>
            	</div>
			</div>
			<div class="row">
            	<div class="col-xl-4 col-lg-5">
            		<input type="hidden" id="problemReat" value="${problemReat }">
					<input type="hidden" id="positivacao" value="${positivacao }">
					<input type="hidden" id="descricao" value="${descricao }">
					<input type="hidden" id="direcionamento" value="${direcionamento }">
              		<div class="card shadow mb-4">
                		<!-- Card Header - Dropdown -->
                		<div class="card-header py-3">
                  			<h6 class="m-0 font-weight-bold text-primary">Desvios Reativos</h6>
                		</div>
                		<!-- Card Body -->
                		<div class="card-body">
                  			<div class="chart-pie pt-4">
                    			<canvas id="reativos"></canvas>
                  			</div>
                		</div>
              		</div>
            	</div>
            	            	<div class="col-xl-4 col-lg-5">
            		<input type="hidden" id="indevido" value="${indevido }">
					<input type="hidden" id="informacao" value="${informacao }">
					<input type="hidden" id="justificativa" value="${justificativa }">
              		<div class="card shadow mb-4">
                		<!-- Card Header - Dropdown -->
                		<div class="card-header py-3">
                  			<h6 class="m-0 font-weight-bold text-primary">Desvios DPSP</h6>
                		</div>
                		<!-- Card Body -->
                		<div class="card-body">
                  			<div class="chart-pie pt-4">
                    			<canvas id="Desvios_DPSP"></canvas>
                  			</div>
                		</div>
              		</div>
            	</div>
			</div>
			<div class="row">
					<input type="hidden" id="andrespx" value="${andrespx}">
		<input type="hidden" id="buenoga" value="${buenoga}">
		<input type="hidden" id="eduaopa" value="${eduaopa}">
		<input type="hidden" id="enasilva" value="${enasilva}">
		<input type="hidden" id="felneves" value="${felneves}">
		<input type="hidden" id="felsan" value="${felsan}">
		<input type="hidden" id="ferlapx" value="${ferlapx}">
		<input type="hidden" id="gabaf" value="${gabaf}">
		<input type="hidden" id="gsoli" value="${gsoli}">
		<input type="hidden" id="guhfs" value="${guhfs}">
		<input type="hidden" id="jquei" value="${jquei}">
		<input type="hidden" id="juancda" value="${juancda}">
		<input type="hidden" id="leiper" value="${leiper}">
		<input type="hidden" id="ligiar" value="${ligiar}">
		<input type="hidden" id="lilianfp" value="${lilianfp}">
		<input type="hidden" id="malonenc" value="${malonenc}">
		<input type="hidden" id="marcoabj" value="${marcoabj}">
		<input type="hidden" id="mariaels" value="${mariaels}">
		<input type="hidden" id="mayss" value="${mayss}">
		<input type="hidden" id="mfdiaspx" value="${mfdiaspx}">
		<input type="hidden" id="munizn" value="${munizn}">
		<input type="hidden" id="murisil" value="${murisil}">
		<input type="hidden" id="ofaria" value="${ofaria}">
		<input type="hidden" id="oliversi" value="${oliversi}">
		<input type="hidden" id="petma" value="${petma}">
		<input type="hidden" id="phperepx" value="${phperepx}">
		<input type="hidden" id="pjordaot" value="${pjordaot}">
		<input type="hidden" id="rafaelos" value="${rafaelos}">
		<input type="hidden" id="rafsanco" value="${rafsanco}">
		<input type="hidden" id="rodolfob" value="${rodolfob }">
		<input type="hidden" id="rrslima" value="${rrslima}">
		<input type="hidden" id="ssabrina" value="${ssabrina}">
		<input type="hidden" id="tdom" value="${tdom}">
		<input type="hidden" id="vilanopx" value="${vilanopx}">
		<input type="hidden" id="wellinlo" value="${wellinlo}">
				<div class="col-xl-12 col-lg-12">
				<div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Desvios por Analista</h6>
                </div>
                <div class="card-body">
                  <div class="chart-bar">
                    <canvas id="myBarChart"></canvas>
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


  <!-- Bootstrap core JavaScript-->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/js/demo/desvios.js"></script>
  <script src="/js/demo/chart-bar-demo.js"></script>
  
  
        <script>
  	window.onload = function(){
  		var leitura = <%=request.getSession().getAttribute("contaLeitura")%>;
  		var desvio = <%=request.getSession().getAttribute("contaDesvio")%>;
  		if(leitura > 0){
  			document.getElementById("leitura").innerHTML = leitura;
  			document.getElementById("leitura").style.visibility = "visible";
  		}if(desvio > 0){
  			document.getElementById("desvio").innerHTML = desvio;
  			document.getElementById("desvio").style.visibility = "visible";
  		}
  	}
  </script>

</body>

</html>
