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
<br>
          <div class="row">
            <div class="col-4"></div>
            <div class="col-5">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="pills-dados-tab" data-toggle="pill" href="#pills-dados" role="tab" aria-controls="pills-dados" aria-selected="true">Dados</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-fp-tab" data-toggle="pill" href="#pills-fp" role="tab" aria-controls="pills-fp" aria-selected="false">Fármacia Popular</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-tratativa-tab" data-toggle="pill" href="#pills-tratativa" role="tab" aria-controls="pills-tratativa" aria-selected="false">Tratativa</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" id="pills-ips-tab" data-toggle="pill" href="#pills-ips" role="tab" aria-controls="pills-ips" aria-selected="false">IP's Padrões</a>
                    </li>
                  </ul>
            </div>
            <div class="col-2">
            </div>
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
                    <form class="" action="Buscar" method="GET">
                    <div class="row">
							<div class="col-6">
								<div class="input-group input-group-sm mb-3">
  									<div class="input-group-prepend">
    									<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>VD Loja</strong></span>
  									</div>
  									<input type="text" class="form-control" style="text-align: center; background-color: white;" id="id"  name="id" placeholder="${data._id }" maxlength="4" onkeypress='return SomenteNumero(event)' required value="">
								</div>
							</div>
							<div class="col-6">
								<button class="btn btn-primary" type="submit">Buscar</button>
							</div>
							
                    	</div>
                    	</form>
<!--                         <div class="col-3"> -->
<!--                            <label for="VD Loja">VD Loja</label> -->
<!--                         </div> -->
<!--                         <div class="col-5"> -->
<!--                           <form class="" action="Buscar" method="GET"> -->
<!--                             <div class="row"> -->
<!--                               <div class="col-8"> -->
<%--                                 <input type="text" class="form-control" name="id" placeholder="${data._id }" id="id" maxlength="4" onkeypress='return SomenteNumero(event)' required value=""> --%>
<!--                               </div> -->
<!--                               <div class="col-2"> -->
<!--                                 <button class="btn btn-primary" type="submit">Buscar</button> -->
<!--                               </div> -->
<!--                             </div> -->
<!--                           </form> -->
<!--                         </div> -->
                    <div class="row">
						<div class="col-8">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Bandeira</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.bandeira }" id="bandeira" name="bandeira" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
<!--                     <div class="row"> -->
<!--                       <div class="col-1"> -->
<!--                         <label for="loja">Loja</label> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-3" style="padding-bottom: 4px;"> -->
<%--                         <textarea class="loja" id="loja" class="form-control" readonly>${data.loja }</textarea> --%>
<!--                         </div> -->
<!--                     </div> -->
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Loja</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.loja }" id="loja" name="loja" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
<!--                     <div class="row"> -->
<!--                       <div class="col-5"> -->
<!--                         <label for="inscEstadual">Insc. Estadual</label> -->
<!--                       </div> -->
<!--                       <div class="col-4"> -->
<%--                         <input type="text" class="form-control" id="inscEstadual" readonly value="${data.inscEstadual }"> --%>
<!--                       </div> -->
<!--                     </div> -->
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm"  style="color: black;"><strong>Insc. Estadual</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.inscEstadual }" id="inscEstadual" name="inscEstadual" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
<!--                     <div class="row"> -->
<!--                       <div class="col-3"> -->
<!--                         <label for="cnpj">CNPJ</label> -->
<!--                       </div> -->
<!--                       <div class="col-4"> -->
<%--                         <input type="text" class="form-control" id="cnpj" readonly value="${data.cnpj }"> --%>
<!--                       </div> -->
<!--                     </div> -->
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CNPJ</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.cnpj }" id="cnpj" name="cnpj" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
                                        <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Inauguração</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.inauguracao }" id="inauguracao" name="inauguracao" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
<!--                     <div class="row"> -->
<!--                       <div class="col-4"> -->
<!--                         <label for="inauguracao">Inauguração</label> -->
<!--                       </div> -->
<!--                       <div class="col-4"> -->
<%--                         <input type="text" class="form-control" id="inauguracao" readonly value="${data.inauguracao }"> --%>
<!--                       </div> -->
<!--                     </div> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-8"> -->
<!--                         <label for="endereco">Endereço Completo</label> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-8"> -->
<%--                         <textarea class="endereco" id="endereco" class="form-control" readonly>${data.enderecoCompleto }</textarea> --%>
<!--                       </div> -->
<!--                     </div> -->
                        <div class="row">
							<div class="col-11">
								<div class="input-group">
  									<div class="input-group-prepend">
    									<span class="input-group-text" style="color: black;"><strong>Endereco</strong></span>
  									</div>
  									<textarea class="form-control" id="enderecoCompleto" aria-label="Com textarea" readonly style="resize: none; height: 150px">${data.enderecoCompleto }</textarea>
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
<!--                     <div class="row"> -->
<!--                       <div class="col-4"> -->
<!--                         <label for="telefone1">Telefone 1</label> -->
<!--                       </div> -->
<!--                       <div class="col-4"> -->
<%--                         <input type="text" class="form-control" id="telefone1"  readonly value="${data.telefone1 }"> --%>
<!--                       </div> -->
<!--                     </div> -->
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 1</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.telefone1 }" id="telefone1" name="telefone1" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
<!--                     <div class="row"> -->
<!--                       <div class="col-4"> -->
<!--                         <label for="telefone2">Telefone 2</label> -->
<!--                       </div> -->
<!--                       <div class="col-4"> -->
<%--                         <input type="text" class="form-control" id="telefone2" readonly value="${data.telefone2 }"> --%>
<!--                       </div> -->
<!--                     </div> -->
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 2</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.telefone2 }" id="telefone2" name="telefone2" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
<!--                     <div class="row"> -->
<!--                       <div class="col-4"> -->
<!--                         <label for="emailLoja">Email Loja</label> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                     <div class="row"> -->
<!--                       <div class="col-4"> -->
<%--                        <textarea class="emailLoja" id="emailLoja" class="form-control" readonly>${data.email }</textarea> --%>
<!--                       </div> -->
                    <div class="row">
						<div class="col-11">
							<div class="input-group">
  								<div class="input-group-prepend">
    								<span class="input-group-text" style="color: black;"><strong>Email</strong></span>
  								</div>
  								<textarea class="form-control" aria-label="Com textarea" readonly style="resize: none; height: 60px">${data.email }</textarea>
							</div>
						</div>
<!-- 						<div class="col-2"> -->
<!-- 							<div class="input-group input-group-sm mb-3"> -->
<!--   								<div class="input-group-prepend"> -->
<!--     								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black; height: 50px; width: 70px"><strong>Email</strong></span> -->
<!--   								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="col-7"> -->
<%-- 						<textarea class="emailLoja" id="emailLoja" class="form-control" id="emailLoja" name="emailLoja" readonly>${data.email }</textarea> --%>
<!--                     	</div> -->
                    </div>
                  </div>
                  <div id="erro" style="padding-top: 30px;" >
                  <c:choose>
    				<c:when test="${erro != null}">
                    	<div class="alert alert-danger" role="alert">
                			<div class="row" style="text-align: center;">
                  				${erro}
                  				Caso possua os dados da loja para cadastro clique aqui!!
                			</div>
                			<div class="row">
                  				<div class="col-3"></div>
                  				<div class="col-7">
                  					<form action="/EncaminharEmail" method="POST">
                  						<button type="submit" class="btn btn-warning">Solicitar Cadastro</button>
                  					</form>
                  				</div>
                  				<div class="col-2"></div>
                			</div>
              			</div>
    				</c:when>
    				<c:when test="${erro == null}">
						<img src="${data.img }" style="width: 100%; height: 100px">
    				</c:when>
				</c:choose>
                  </div>
                  <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 90px;">
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
  								<input type="text" class="form-control" readonly value="${data.ggl }" id="ggl2" name="ggl" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
                      <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Tel. do GGL</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.telefoneGgl }" id="telefoneGGL" name="telefoneGGL" style="text-align: center; background-color: white;">
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
  								<input type="text" class="form-control" readonly value="${data.fieldLocal }" id="fieldLocal" name="fieldLocal" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm"  style="color: black;"><strong>Field Multifuncional</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.fieldMultifuncional }" id="fieldMultifuncional" name="fieldMultifuncional" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
                  </div>
                  <br>
                  <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 80px;">
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
  								<input type="text" class="form-control" readonly value="${data.segASex }" id="segASex" name="segASex" style="text-align: center; background-color: white;">
							</div>
						</div>

                      </div>
                      <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Sab.</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.sab }" id="sab" name="sab" style="text-align: center; background-color: white;">
							</div>
						</div>

                      </div>
                      <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Dom.</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.dom }" id="dom" name="dom" style="text-align: center; background-color: white;">
							</div>
						</div>
                      </div>
                      <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>OBS.</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.obs }" name="id" name="obs" style="text-align: center; background-color: white;">
							</div>
						</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-pane fade" id="pills-fp" role="tabpanel" aria-labelledby="pills-fp-tab">
              <div class="row">
                <div class="col-sm">
                  <div id="popular">
                    <div class="row">
                      Dados Fármacia Popular
                    </div>
                    <br>
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Usuario</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.usuarioPopular }" id="usuarioPopular" name="usuarioPopular" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
                    <div class="row">
						<div class="col-11">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Senha</strong></span>
  								</div>
  								<input type="text" class="form-control" readonly value="${data.senhaPopular }" id="senhaPopular" name="senhaPopular" style="text-align: center; background-color: white;">
							</div>
						</div>
                    </div>
                  </div>
                </div>
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
                    <li class="nav-item">
                      <a class="nav-link" id="pills-autoin-tab" data-toggle="pill" href="#pills-autoin" role="tab" aria-controls="pills-autoin" aria-selected="true">AutoIn</a>
                    </li>
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
						<div class="col-8">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Gerente</strong></span>
  								</div>
  								<input type="text" class="form-control" value="" id="gerenteHardware" maxlength="20" style="text-align: center; background-color: white;">
							</div>
						</div>
                      </div>
                      <div class="row">
						<div class="col-10">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Doc. Pandora Utilizado</strong></span>
  								</div>
  								<input type="text" class="form-control" value="" id="docPandora" style="text-align: center; background-color: white;" required>
							</div>
						</div>
						<div class="col-2">
							<a href="#" id="manual"><i class="fas fa-plus-circle"></i></a>
						</div>
                        </div>
                        <div class="row">
                       		<div id="corpo" style="width: 100%; max-height: 80px; overflow-y: scroll"></div>
        					<template>
								<div class="col-12">
									<div class="input-group input-group-sm mb-3">
  										<div class="input-group-prepend">
    										<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Doc. Pandora Utilizado</strong></span>
  										</div>
  										<input type="text" class="form-control" value="" id="docPandora" name="log" style="text-align: center; background-color: white;" required>
									</div>
                        		</div>
        					</template>
                        </div>
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
                        <div class="row" style="padding-left: 40px; padding-top: 70px" >
                        	<div class="col-7">
                        		<div class="input-group mb-3">
  									<div class="input-group-prepend">
    									<label class="input-group-text" for="inputGroupSelect01" style="color: black;"><strong>Micro</strong></label>
  									</div>
  									<select class="custom-select" id="tipoMicroHardware">
    									<option selected value="Selecione">Selecione a opção</option>
										<option value="Balcao">Balcão</option>
                              			<option value="Caixa">Caixa</option>
                              			<option value="Gerente">Gerente</option>
                             			<option value="Impressora">Impressora</option>
  									</select>
								</div>
                        	</div>
                          <div class="col-3">
                          	<div class="input-group input-group-sm mb-3">
  								<input type="text" class="form-control" id="numeroMicro" style="text-align: center;" maxlength="3" onkeypress='return SomenteNumero(event)' value="">
							</div>
                          </div>
                        </div>
                        <div class="row" style="padding-left: 40px">
                        	<div class="col-7">
                        		<div class="input-group input-group-sm mb-3">
  									<div class="input-group-prepend">
    									<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Série</strong></span>
  									</div>
  									<input type="text" class="form-control" aria-label="Exemplo do tamanho do input" aria-describedby="inputGroup-sizing-sm" id="serieHardware" value="">
								</div>
                        	</div>
                        </div>
                        <div class="row" style="padding-left: 40px">
                        	<div class="col-7">
                        		<div class="input-group input-group-sm mb-3">
  									<div class="input-group-prepend">
    									<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Modelo</strong></span>
  									</div>
  									<input type="text" class="form-control" id="modelo" aria-label="Exemplo do tamanho do input" aria-describedby="inputGroup-sizing-sm"  value="">
								</div>
                        	</div>
                        </div>
                          <br>
                          <br>
                        <div class="row" style="padding-left: 40px">
                          <div class="col-6">
                            <button type="button" class="btn btn-success" data-toggle="modal" id="encerraHardware" data-target="#encerramentoHardware" onclick="logHardware()">Gerar log de encerramento</button>
                          </div>
                          <div class="col-6">
                            <div class="row" style="padding-left: 40px">
                              <button type="button" class="btn btn-info" data-toggle="modal" data-target="#notificacao" onclick="logNotificacao()">Gerar log de notificação</button>
                            </div>
                          </div>
                        </div>
                        <br>
                        <div class="row" style="padding-left: 180px">
                          <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#hardware" id="direcionamentoHardware" onclick="logHardware()">Gerar log de direcionamento</button>
                        </div>
                        <br>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane fade" id="pills-pinpad" role="tabpanel" aria-labelledby="pills-pinpad-tab">
                    <div class="row">
                      <div class="col-sm">
                        <div class="row">
						<div class="col-8">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Gerente</strong></span>
  								</div>
  								<input type="text" class="form-control" value="" id="gerentePinpad" maxlength="20" style="text-align: center; background-color: white;">
							</div>
						</div>
                        </div>
                      <div class="row">
						<div class="col-10">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Doc. Pandora Utilizado</strong></span>
  								</div>
  								<input type="text" class="form-control" value="" id="docPandoraPin" style="text-align: center; background-color: white;" required>
							</div>
						</div>
						<div class="col-2">
							<a href="#" id="manualPinpad"><i class="fas fa-plus-circle"></i></a>
						</div>
                        </div>
                        <div class="row">
                       		<div id="corpoPinpad" style="width: 100%; max-height: 80px; overflow-y: scroll"></div>
        					<template>
								<div class="col-12">
									<div class="input-group input-group-sm mb-3">
  										<div class="input-group-prepend">
    										<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Doc. Pandora Utilizado</strong></span>
  										</div>
  										<input type="text" class="form-control" value="" id="docPandoraPin" name="logPinpad" style="text-align: center; background-color: white;" required>
									</div>
                        		</div>
        					</template>
                        </div>
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
                          <div class="row" style="padding-left: 40px; padding-top: 40px">
						<div class="col-8">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Serie</strong></span>
  								</div>
  								<input type="text" class="form-control" value="" id="seriePinpad" style="text-align: center; background-color: white;">
							</div>
						</div>
                          </div>
                          <div class="row" style="padding-left: 40px">
                          						<div class="col-8">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Numero Logico</strong></span>
  								</div>
  								<input type="text" class="form-control" id="cieloLogico" readonly id="gerenteHardware" style="text-align: center;" readonly value="${data.cieloLogico }">
							</div>
						</div>
                          </div>
                          <div class="row" style="padding-left: 40px">
                                                    						<div class="col-8">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Est. Cielo</strong></span>
  								</div>
  								<input type="text" class="form-control" id="estabelecimentoCielo" readonly style="text-align: center;" readonly value="${data.estabelecimentoCielo }">
							</div>
						</div>
                          </div>
                            <br>
                            <br>
                          <div class="row" style="padding-left: 40px">
                            <div class="col-6">
                              <button type="button" class="btn btn-success" data-toggle="modal" id="encerraPinpad" data-target="#encerramentoPinpad" onclick="logPinpad()">Gerar log de encerramento</button>
                            </div>
                            <div class="col-6">
                              <div class="row" style="padding-left: 40px">
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#notificacao" onclick="logNotificacao()">Gerar log de notificação</button>
                              </div>
                            </div>
                          </div>
                          <br>
                          <div class="row" style="padding-left: 180px">
                            <button type="button" class="btn btn-danger" data-toggle="modal" id="direcionamentoPinpad" data-target="#pinpad" onclick="logPinpad()">Gerar log de direcionamento</button>
                          </div>
                        </div>
                      </div>
                  </div>
            <div class="tab-pane fade show" id="pills-autoin" role="tabpanel" aria-labelledby="pills-autoin-tab" >
        		<div class="row">
        		<div class="col-4"></div>
        			<div class="col-4">
        				<div class="input-group input-group-sm mb-3">
  							<div class="input-group-prepend">
    							<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Gerente</strong></span>
  							</div>
  							<input type="text" class="form-control" value="" id="gerenteCobranca" maxlength="20" style="text-align: center; background-color: white;">
						</div>
        			</div>
        			<div class="col-4"></div>
        		</div>
        		<div class="row">
        			<div class="col-4"></div>
        			<div class="col-4">
						<div class="input-group input-group-sm mb-3">
  							<div class="input-group-prepend">
    							<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Tel. Alternativo</strong></span>
  							</div>
  							<input type="text" class="form-control" id="telAlternativo" maxlength="20" style="text-align: center; background-color: white;" value="">
						</div>
        			</div>
        			<div class="col-4"></div>
        		</div>
        		<div class="row">
        			<div class="col-4"></div>
        			<div class="col-4">
        				<div class="row">
                          <strong><label for="problemaHardware">Mais informações</label></strong>
                      	</div>
                      	<div class="row">
                          <textarea name="maisInfo" id="maisInfo"></textarea>
                      </div>
        			</div>
        			<div class="col-4"></div>
        		</div>
        		<div class="row" style="padding-top: 20px">
        			<div class="col-4"></div>
        			<div class="col-4">
        				<button type="button" class="btn btn-warning" style="width: 100%" data-toggle="modal" data-target="#cobranca" onclick="logHardware()">Cobrança</button>
        			</div>
        			<div class="col-4"></div>
        		</div>
        	</div>
        </div>
        </div>
        <div class="tab-pane fade" id="pills-ips" role="tabpanel" aria-labelledby="pills-ips-tab">
                <div id="calculoIp">
                  <div class="row">
                    <div class="col-5"></div>
                    <div class="col-3">
                      Padrão de IP's da loja
                    </div>
                    <br><br>
                    <div class="col-4"></div>
                  </div>
                  <div class="row">
                    <div class="col-6">
                      <div class="row">
                        <div class="col-5">
                          <label for="ipGerencia">Gerência</label>
                        </div>
                        <div class="col-7">
                          <input type="text" class="form-control" id="ipGerencia" readonly value="${data.ipGerencia }">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-5">
                          <label for="ipBalcao">Balcões</label>
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
    <script src="/js/logHardware.js"></script>
    <script src="/js/logPinpad.js"></script>
    <script src="/js/logNotificacao.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  

  <!-- Core plugin JavaScript-->
  <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/js/sb-admin-2.min.js"></script>
  

</body>

</html>
