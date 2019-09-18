<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
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

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-4">
                	<form class="" action="/BuscarAtualizar" method="GET">
                  		<div class="row">
                  			<div class="col-8">
                  				<div class="input-group mb-3">
  									<div class="input-group-prepend">
    									<span class="input-group-text" id="inputGroup-sizing-default" style="color: black;"><strong>Digite o VD da loja</strong></span>
  									</div>
  									<input type="text" class="form-control" aria-label="Exemplo do tamanho do input" name="id" aria-describedby="inputGroup-sizing-default" placeholder="${data._id }" value="" maxlength="4" onkeypress='return SomenteNumero(event)' required style="text-align: center">
								</div>
                  			</div>
                  			<div class="col-2">
                  				<button class="btn btn-primary" type="submit">Buscar</button>
                  			</div>
                  		</div>
                  	</form>
                 </div>
                 <div class="col-5">
                 	                                  <form class="" action="/ExcluirLoja" method="GET">
                                    <div class="row">
                                      <input type="hidden" name="id" value="${data._id }">
                                         <button type="submit" class="btn btn-danger" >Excluir Loja</button>
                                     </div>
                               </form>
                 </div>
            </div>
            <form class="" action="/AtualizarLoja" method="GET">
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
                          <div class="col-11">
                              <div class="input-group input-group-sm mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Bandeira</strong></span>
                                  </div>
                                  <input type="text" class="form-control" name="bandeira"  value="${data.bandeira }" style="text-align: center" maxlength="3">
                                </div>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Loja</strong></span>
                                  </div>
                                  <input type="text" class="form-control" value="${data.loja }" id="loja" name="loja" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-sm"  style="color: black;"><strong>Insc. Estadual</strong></span>
                                  </div>
                                  <input type="text" class="form-control"  value="${data.inscEstadual }" id="inscEstadual" name="inscEstadual" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CNPJ</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.cnpj }" id="cnpj" name="cnpj" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Inauguração</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.inauguracao }" id="inauguracao" name="inauguracao" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Endereço</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.endereco }" name="endereco" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Bairro</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.bairro }"  name="bairro" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Cidade</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.cidade }" name="cidade" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-5">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <label class="input-group-text" style="color: black;"><strong>UF</strong></label>
                                    </div>
                                    <input type="text" class="form-control" name="uf" class="form-control" value="${data.uf }" style="text-align: center;">
                                  </div>
                            </div>
                            <div class="col-6">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CEP</strong></span>
                                    </div>
                                    <input type="text" class="form-control" name="cep" class="form-control" value="${data.cep }" style="text-align: center;">
                                  </div>
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
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 1</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.telefone1 }" id="telefone1" name="telefone1" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 2</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.telefone2 }" id="telefone2" name="telefone2" style="text-align: center;">
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
                              <textarea class="emailLoja" id="emailLoja" class="form-control" id="emailLoja" name="emailLoja" readonly>${data.email }</textarea>
                                        </div>
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
                      <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 63px;">
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
                                        <input type="text" class="form-control" value="${data.ggl }" id="nomeGGL" name="nomeGGL" style="text-align: center;">
                                    </div>
                                  </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Tel. do GGL</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="${data.telefoneGgl }" id="telefoneGGL" name="telefoneGGL" style="text-align: center;">
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
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Field Local</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.fieldLocal }" id="fieldLocal" name="fieldLocal" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Field Multifuncional</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="${data.fieldMultifuncional }" id="fieldMultifuncional" name="fieldMultifuncional" style="text-align: center;">
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
                                      <input type="text" class="form-control" value="${data.segASex }" id="segASex" name="segASex" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Sab.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="${data.sab }" id="sab" name="sab" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Dom.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="${data.dom }" id="dom" name="dom" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>OBS.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="${data.obs }" name="obs" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="row">
                      	<div class="col-11">
                      		<div class="row">
                      			<div class="col-2"></div>
                              	<div class="col-10">
                              		<input type="hidden" name="id" value="${data._id }">
                                  	<div class="row">
                                    	<button type="submit" class="btn btn-success" style="width: 100%">Atualizar Loja</button>
                                  </div>
                              	</div>
                      		</div>
                      	</div>
                      	</div>
                      	</div>
                      	</div>
                      	</div>
                      	</form>
                      	<br>
                      	<div class="row">
                      	
                      	</div>

                        <div class="col-2"></div>
                        <div class="col-5">
                            <div class="row">
                              <div class="col-9">

                              </div>
                              <div class="col-3"></div>
                            </div>
                        </div>
                      </div>

  

  <!-- Bootstrap core JavaScript-->
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/js/somenteNumero.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="/bootstrap/js/bootstrap.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/js/sb-admin-2.min.js"></script>
  
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
