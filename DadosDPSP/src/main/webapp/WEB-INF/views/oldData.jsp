<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">

    <!-- CSS de Estilos -->
    <link rel="stylesheet" href="/css/style.css">
    
    <!-- FontAwesome -->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    
    <!--Icone do navegador-->
	<link rel="icon" type="imagem/png" href="/img/favicon.ico" />
	
    <title>Dados DPSP</title>
  
	
  </head>
  <body>
<div class="container-fluid">
<br>
          <div class="row">
            <div class="col-4">
                    	<div class="row">
        		<div class="col-9" style="text-align: center; background-color: #FFFFFF; width: 100%; height: 100%; border-radius:20px; box-shadow: 10px 10px 10px 1px #000000; border:solid 1px;">
        			<h6>Analista logado: <%= request.getUserPrincipal().getName() %></h6>
        		</div>
        		<div class="col-6"></div>
        	</div>  
            </div>
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
                    <li class="nav-item">
                      <a class="nav-link" id="pills-desvio-tab" data-toggle="pill" href="#pills-desvio" role="tab" aria-controls="pills-desvio" aria-selected="false">Desvios</a>
                    </li>
                  </ul>
            </div>
            <div class="col-2">
            	        <form action="/Logout">
        	<a href="<c:url value="/logout" />"><button type="button" class="btn btn-primary">Logout</button></a>
        </form>
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
							<div class="col-12">
								<div class="input-group input-group-sm mb-3">
  									<div class="input-group-prepend">
    									<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black; width: 330px;"><strong>Endereço Completo</strong></span>
  									</div>
  									<textarea class="endereco" class="form-control" id="enderecoCompleto" name="enderecoCompleto" style="background-color: white;" readonly>${data.enderecoCompleto }</textarea>
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
						<div class="col-2">
							<div class="input-group input-group-sm mb-3">
  								<div class="input-group-prepend">
    								<span class="input-group-text" id="inputGroup-sizing-sm" style="color: black; height: 50px; width: 76px"><strong>Email</strong></span>
  								</div>
							</div>
						</div>
						<div class="col-7">
						<textarea class="emailLoja" id="emailLoja" class="form-control" id="emailLoja" name="emailLoja" readonly>${data.email }</textarea>
                    	</div>
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
        	<div class="tab-pane fade" id="pills-desvio" role="tabpanel" aria-labelledby="pills-desvio-tab">
				<div class="row">
					<div class="col-4"></div>
					<div class="col-4">
						<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    		<li class="nav-item">
                      			<a class="nav-link active" id="pills-desvioPend-tab" data-toggle="pill" href="#pills-desvioPend" role="tab" aria-controls="pills-desvioPend" aria-selected="true">Desvios Pendentes de Feedback</a>
                    		</li>
                    		<li class="nav-item">
                      			<a class="nav-link" id="pills-desvioComp-tab" data-toggle="pill" href="#pills-desvioComp" role="tab" aria-controls="pills-desvioComp" aria-selected="false">Todos Desvios</a>
                    		</li>
                    	</ul>
					</div>
					<div class="col-4"></div>
				</div>
				<div class="tab-content" id="pills-tabContent">
            		<div class="tab-pane fade show active" id="pills-desvioPend" role="tabpanel" aria-labelledby="pills-desvioPend-tab" >
            			            <div class="row">
                <div class="col-2"></div>
                <div class="col-9">
                    <div class="row"></div>
                    <div class="row">
                    	<div class="col-10">
                    		<h1>Lista de Desvios Pendentes de Feedback</h1>
                    	</div>
                    	<div class="col-2">
                        	<a href="/ListarDesvioAnalista"><button type="button" class="btn btn-primary">Carregar Lista</button></a>
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
                                        <th scope="col">Analista Desvio</th>
                                        <th scope="col">Tipo Desvio</th>
                                        <th scope="col">Justicativa</th>
                                        <th scope="col">Ação</th>
                                    </tr>
                                </thead>
                                <tbody >                           	
                                 	<c:forEach var="Desvio" items="${listPendente}">
                                 		<tr>
                                            <td>
                                                ${Desvio._id }
                                            </td>
                                           	<td>
                                                ${Desvio.dataDesvio }
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
                                           		<form action="DeAcordoDesvio" method="GET">
                                                	<input type="hidden" name="_id"	value="${Desvio._id }">
                                                	<button type="submit" class="btn btn-primary" style="width: 80%">De Acordo</button>
                                                </form>
                                            </td>
                                        </tr>
                                 	</c:forEach>
                                </tbody>
                            </table>
					</div>
            		</div>
            		<div class="tab-pane fade" id="pills-desvioComp" role="tabpanel" aria-labelledby="pills-desvioComp-tab" >
            			            <div class="row">
                <div class="col-4"></div>
                <div class="col-7">
                    <div class="row"></div>
                    <div class="row">
                    	<div class="col-10">
                    		<h1>Lista de Desvios Completa</h1>
                    	</div>
                        <div class="col-2">
                        	<a href="/ListarDesvioAnalista"><button type="button" class="btn btn-primary">Carregar Lista</button></a>
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
                                        <th scope="col">Analista Desvio</th>
                                        <th scope="col">Tipo Desvio</th>
                                        <th scope="col">Justicativa</th>
                                        <th scope="col">Ação</th>
                                    </tr>
                                </thead>
                                <tbody >                           	
                                 	<c:forEach var="Desvio" items="${listCompleta }">
                                 		<tr>
                                            <td>
                                                ${Desvio._id }
                                            </td>
                                           	<td>
                                                ${Desvio.dataDesvio }
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
                                                	<button type="submit" class="btn btn-primary" style="width: 80%">Detalhes</button>
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
      	</div>
       </div>
             	        	      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Ferlapx 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

      
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
						Enviada notificação para a loja, via Service Now, solicitando contato, pois não estou conseguindo contato 
						nos seguintes telefones da filial: <label id="telefone1NotModal"></label> e <label id="telefone2NotModal"></label> e VOIP.
          			</div>
          			<div class="modal-footer">
            			<a href="#" id="btnCopiarLogNotificacao" data-clipboard-action="copy" data-clipboard-target="#copiarLogNotificacao1"><i class="fas fa-copy" style="size: 20px">  Copiar Log</i></a>
          			</div>
				</div>
				<div class="tab-pane fade" id="pills-not2" role="tabpanel" aria-labelledby="pills-not2-tab" >
					<div class="modal-body" id="copiarLogNotificacao2">
						#2 Tentativa de Contato
						<br>
						Enviada notificação para a loja, via Service Now, solicitando contato, pois não estou conseguindo contato 
						nos seguintes telefones da filial: <label id="telefone1NotModal2"></label> e <label id="telefone2NotModal2"></label> e VOIP. 
						E tambem com o(a) GGL: <label id="nomeGGLNotModal"></label> no <label id="telGGLNotModal"></label>.
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
   
    <script src="/js/clipboard.min.js"></script>
  	<script src="/js/copiarLogClipboard.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="/js/somenteNumero.js"></script>
    <script src="/js/logHardware.js"></script>
    <script src="/js/logPinpad.js"></script>
    <script src="/js/logNotificacao.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
