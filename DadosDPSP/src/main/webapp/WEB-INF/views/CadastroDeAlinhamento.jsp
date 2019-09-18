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
            <a class="collapse-item" href="ListarDesvioNaoDeacordo"><i class="fas fa-fw fa-list"></i> Réplica Pendente</a>
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
                    <div class="row"></div>
                    <div class="row">
                        <h1>Cadastro de Alinhamentos</h1>
                    </div>
                </div>
                <div class="col-2"></div>
            </div>
            <div class="row">
            	<div class="col-2"></div>
            	<div class="col-8">
            	<div id="erro" style="padding-top: 5px; padding-bottom: 20px;" >
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
            	<div class="col-2"></div>
            </div>
            <form action="/CadastrarAlinhamento" method="POST">
                <div class="row" style="padding-top: 10px; border: 2px; border-style: solid; border-width: 100%; border-radius: 10px;">
                    <div class="col-1"></div>
                    <div class="col-10">
                    	<div class="row">
                    	
                    		<div class="col-4"></div>
                    		<div class="col-4">
                    			<h4>Dados do Alinhamento</h4>		
                    		</div>
                    		<div class="col-4"></div>
                    	</div>
                        <div class="row" style="padding-top: 10px;">
                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Nome do Alinhamento</span>
                                    </div>
                                    <input type="text" class="form-control" name="nomeAlinhamento" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required value="">
                                </div>
                            </div>

                        </div>
                        <div class="row">
                        	<div class="col-3"></div>
                            <div class="col-6">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Data do Alinhamento</span>
                                    </div>
                                    <input type="text" class="form-control" name="dataAlinhamento" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="" required>
                                </div> 
                            </div>
                            <div class="col-3"></div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Link da Base</span>
                                    </div>
                                    <input type="text" class="form-control" name="linkBase" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="" required>
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row" style="padding-top: 10px">
                	<div class="col-4"></div>
                	<div class="col-4">
                		<button type="submit" class="btn btn-success">Cadastrar Alinamento</button>
                	</div>
                	<div class="col-4"></div>
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
  
  	<script type="text/javascript">
    function optionCheckTipoDesvio(){
        var option = document.getElementById("tipoAnalise").value;
        if(option == "Proativo"){
        	$("#tipoDesvio").html('');
        	var ativos = [
        	    '[PROATIVO] - Problem Determination',
        	    '[PROATIVO] - Chamado parado sem justificativa',
        	    '[PROATIVO] - Categoria incorreta / não alterada',
        	    '[PROATIVO] - Notificação de chamado',
        	    '[PROATIVO] - Script/Descrição'];


        	ativos.forEach(function(item){
        	    addOption(item)
        	});

        	function addOption(valor) {
        	    var option = new Option(valor, valor);
        	    var select = document.getElementById("tipoDesvio");
        	    select.add(option);
        	}
        }else {
        	if(option == "Reativo"){
            	$("#tipoDesvio").html('');
            	var reativos = [
            	    '[REATIVO] - Problem Determination',
            	    '[REATIVO] - Falta de Positivação dos Dados',
            	    '[REATIVO] - Descrição Incompleta ou Errada',
            	    '[REATIVO] - Direcionamento Indevido'];
            	
            	reativos.forEach(function(item){
            	    addOption(item)
            	});

            	function addOption(valor) {
            	    var option = new Option(valor, valor);
            	    var select = document.getElementById("tipoDesvio");
            	    select.add(option);
            	}
        	}else {
            	$("#tipoDesvio").html('');
            	var reativos = [
            	    '[DPSP] - Chamado devolvido sem justificativa em log',
            	    '[DPSP] - Chamado devolvido indevidamente',
            	    '[DPSP] - Solicitado informações que já constam no chamado'];
            	
            	reativos.forEach(function(item){
            	    addOption(item)
            	});

            	function addOption(valor) {
            	    var option = new Option(valor, valor);
            	    var select = document.getElementById("tipoDesvio");
            	    select.add(option);
            	}
        	}
        }
    }
    
    function optionCheckAnalista(){
    	var option = document.getElementById("analistaDesvio").value;
    	
    	switch(option){
    		case "Andres Tome Leo":
    			document.getElementById("logon").value = "andrespx";
    			break;
    		case "Camila Vila Nova":
    			document.getElementById("logon").value = "vilanopx";
    			break;
    		case "Eduardo Pacheco":
    			document.getElementById("logon").value = "eduaopa";
    			break;
    		case "Elisama Silva":
    			document.getElementById("logon").value = "enasilva";
    			break;
    		case "Felipe Santos":
    			document.getElementById("logon").value = "felsan";
    			break;
    		case "Felipe Xavier":
    			document.getElementById("logon").value = "felneves";
    			break;
    		case "Gabriel Bueno Maia":
    			document.getElementById("logon").value = "buenoga";
    			break;
    		case "Gabriel Floriano":
    			document.getElementById("logon").value = "gabaf";
    			break;
    		case "Gustavo Oliveira":
    			document.getElementById("logon").value = "gsoli";
    			break;
    		case "Jaime Queiroz":
    			document.getElementById("logon").value = "jquei";
    			break;
    		case "Juan Cerqueira":
    			document.getElementById("logon").value = "juancda";
    			break;
    		case "Leila Pereira":
    			document.getElementById("logon").value = "leiper";
    			break;
    		case "Ligia Rodrigues":
    			document.getElementById("logon").value = "ligiar";
    			break;
    		case "Lilian Pontes":
    			document.getElementById("logon").value = "lilianfp";
    			break;
    		case "Malone Cesar":
    			document.getElementById("logon").value = "malonenc";
    			break;
    		case "Marco Junior":
    			document.getElementById("logon").value = "marcoabj";
    			break;
    		case "Maria Eduarda Silva":
    			document.getElementById("logon").value = "mariels";
    			break;
    		case "Maria Elisa":
    			document.getElementById("logon").value = "mfdiaspx";
    			break;
    		case "Mayara Santos":
    			document.getElementById("logon").value = "mayss";
    			break;
    		case "Murilo Silva":
    			document.getElementById("logon").value = "murisil";
    			break;
    		case "Natalia Muniz":
    			document.getElementById("logon").value = "munizn";
    			break;
    		case "Olavo Faria":
    			document.getElementById("logon").value = "ofaria";
    			break;
    		case "Patrick Turetta":
    			document.getElementById("logon").value = "pjordaot";
    			break;
    		case "Pedro Bertolani":
    			document.getElementById("logon").value = "phperepx";
    			break;
    		case "Rafael Costa":
    			document.getElementById("logon").value = "rafsanco";
    			break;
    		case "Rafael Lima":
    			document.getElementById("logon").value = "rrslima";
    			break;
    		case "Rafael Silva":
    			document.getElementById("logon").value = "rafaelos";
    			break;
    		case "Ricardo Silva":
    			document.getElementById("logon").value = "ferlapx";
    			break;
    		case "Ricardo Oliveira":
    			document.getElementById("logon").value = "oliversi";
    			break;
    		case "Rodolfo Brentan":
    			document.getElementById("logon").value = "rodolfob";
    			break;
    		case "Sabrina Santos":
    			document.getElementById("logon").value = "ssabrina";
    			break;
    		case "Thiago Paschoal":
    			document.getElementById("logon").value = "tdom";
    			break;
    		case "Wellington Lopes":
    			document.getElementById("logon").value = "wellinlo";
    			break;
    		case "Gustavo Santos":
    			document.getElementById("logon").value = "guhfs";
    			break;
    		case "Peterson Almeida":
    			document.getElementById("logon").value = "petma";
    			break;
    	}
    }
        
    
    function optionCheckTime(){
        var option = document.getElementById("timeDesvio").value;
        if(option == "Desvios_DPSP"){
        	$("#analistaDesvio").html('');
        	$("#filaAnalista").html('');
        	var ativos = [
        		'Adelino Jesus',
        		'Alexandre Bonini',
        		'André Brambila',
        		'André Carvalho',
        		'Claudio Souza',
        		'Daniela Luciana',
        		'Evandro Katsumata',
        		'Fabio Hajduk',
        		'Gabriel Fernandes',
        		'Gustavo Nunes',
        		'Gustavo Oliveira',
        		'IBM Maximo Integration',
        		'Karoline Ramos',
        		'Oder Tadeu',
        		'Paulo Henrique Muniz',
        		'Rafael Morais',
        		'Rafael Roveri',
        		'Rdrigo Reis',
        		'Silvio Fortunato',
        		'Suporte Unisys',
        		'Vanessa Henke',
        		'Willian Yuji'];


        	ativos.forEach(function(item){
        	    addOption(item)
        	});

        	function addOption(valor) {
        	    var option = new Option(valor, valor);
        	    var select = document.getElementById("analistaDesvio");
        	    select.add(option);
        	}
        	
        	var fila = [
        		'RMA',
        		'Suporte Email',
        		'Desenvolvimento',
        		'Desenvolvimento RJ',
        		'Bematech',
        		'Cielo',
        		'Elgin',
        		'Mobilidade IBM',
        		'Redes e Telecom',
        		'Service Desk',
        		'Lexmark',
        		'OTG',
        		'Sweda SP',
        		'Sweda RJ',
        		'Unisys',
        		'Verhaw',
        		'Vivo Telecom',
        		'Lojas Matriz',
        		'Service Desk Matriz',
        		'Wipro Sustentacao',
        		'Astrein',
        		'Administracao ITSM',
        		'Infra Service Desk',
        		'SPOC Agiliza',
        		'2NSPOC',
        		'Service Desk CD',
        		'Proativo'];
        	
        	fila.forEach(function(item2){
        	    addOption2(item2)
        	});

        	function addOption2(valor2) {
        	    var option2 = new Option(valor2, valor2);
        	    var select2 = document.getElementById("filaAnalista");
        	    select2.add(option2);
        	}
        	
        }else {
        	$("#analistaDesvio").html('');
        	$("#filaAnalista").html('');
        	var reativos = [
        		'Andres Tome Leo',
        		'Camila Vila Nova',
        		'Eduardo Pacheco',
        		'Elisama Silva',
        		'Felipe Santos',
        		'Felipe Xavier',
        		'Gabriel Bueno Maia',
        		'Gabriel Floriano',
        		'Gustavo Santos',
        		'Gustavo Oliveira',
        		'Jaime Queiroz',
        		'Juan Cerqueira',
        		'Leila Pereira',
        		'Ligia Rodrigues',
        		'Lilian Pontes',
        		'Malone Cesar',
        		'Marco Junior',
        		'Maria Eduarda Silva',
        		'Maria Elisa',
        		'Mayara Santos',
        		'Murilo Silva',
        		'Natalia Muniz',
        		'Olavo Faria',
        		'Patrick Turetta',
        		'Pedro Bertolani',
        		'Peterson Almeida',
        		'Rafael Costa',
        		'Rafael Lima',
        		'Rafael Silva',
        		'Ricardo Silva',
        		'Ricardo Oliveira',
        		'Rodolfo Brentan',
        		'Sabrina Santos',
        		'Thiago Paschoal',
        		'Wellington Lopes'];
        	
        	reativos.forEach(function(item){
        	    addOption(item)
        	});

        	function addOption(valor) {
        	    var option = new Option(valor, valor);
        	    var select = document.getElementById("analistaDesvio");
        	    select.add(option);
        	}
        	
        	var fila = "F-IBM-INFRA-SERVICE_DESK";
        	addOption2(fila);
        	
        	function addOption2(valor2){
        	    var option2 = new Option(valor2, valor2);
        	    var select2 = document.getElementById("filaAnalista");
        	    select2.add(option2);
        	}
        }
    }
</script>
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