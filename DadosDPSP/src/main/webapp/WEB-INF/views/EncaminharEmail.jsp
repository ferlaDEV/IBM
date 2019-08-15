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
    
    <!--Icone do navegador-->
	<link rel="icon" type="imagem/png" href="/img/favicon.ico" />
	
    <title>Dados DPSP</title>
  
	
  </head>
  <body>
    <div class="container-fluid" style="padding-top: 70px">
                <form class="" action="EnviarEmail" method="POST">
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
                          <div class="col-4">
                            <div class="input-group input-group-sm mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>VD</strong></span>
                              </div>
                              <input type="text" class="form-control" name="id" placeholder="" id="id" maxlength="4" onkeypress='return SomenteNumero(event)' required value=""style="text-align: center;">
                            </div>
                          </div>
                          <div class="col-7">
                              <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <label class="input-group-text" style="color: black;"><strong>Bandeira</strong></label>
                                  </div>
                                  <select class="custom-select" name="bandeira">
                                    <option selected>Escolha</option>
                                    <option value="DSP">Drogaria São Paulo</option>
                                    <option value="DP">Drogaria Pacheco</option>
                                  </select>
                                </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-11">
                            <div class="input-group input-group-sm mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Loja</strong></span>
                              </div>
                              <input type="text" class="form-control" value="" id="loja" name="loja" style="text-align: center;">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-11">
                            <div class="input-group input-group-sm mb-3">
                              <div class="input-group-prepend">
                                <span class="input-group-text" id="inputGroup-sizing-sm"  style="color: black;"><strong>Insc. Estadual</strong></span>
                              </div>
                              <input type="text" class="form-control"  value="" id="inscEstadual" name="inscEstadual" style="text-align: center;">
                            </div>
                          </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CNPJ</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="cnpj" name="cnpj" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Inauguração</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="inauguracao" name="inauguracao" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Endereço</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" name="endereco" style="text-align: center;">
                                  </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Bairro</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value=""  name="bairro" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Cidade</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" name="cidade" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                          <div class="col-5">
                              <div class="input-group mb-3">
                                  <div class="input-group-prepend">
                                    <label class="input-group-text" style="color: black;"><strong>UF</strong></label>
                                  </div>
                                  <select class="custom-select" name="uf">
                                    <option selected>Escolha</option>
                                    <option value="AL">AL</option>
                                    <option value="BA">BA</option>
                                    <option value="DF">DF</option>
                                    <option value="ES">ES</option>
                                    <option value="GO">GO</option>
                                    <option value="MG">MG</option>
                                    <option value="PE">PE</option>
                                    <option value="PR">PR</option>
                                    <option value="RJ">RJ</option>
                                    <option value="SP">SP</option>
                                  </select>
                                </div>
                          </div>
                          <div class="col-6">
                              <div class="input-group input-group-sm mb-3">
                                  <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>CEP</strong></span>
                                  </div>
                                  <input type="text" class="form-control" name="cep" class="form-control" value="" style="text-align: center;">
                                </div>
                          </div>
                        </div>
                      </div>
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
                                    <input type="text" class="form-control" value="" id="telefone1" name="telefone1" style="text-align: center;">
                                </div>
                              </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group input-group-sm mb-3">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Telefone 2</strong></span>
                                    </div>
                                    <input type="text" class="form-control" value="" id="telefone2" name="telefone2" style="text-align: center;">
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
                              <textarea class="emailLoja" id="emailLoja" class="form-control" id="emailLoja" name="emailLoja" value="" style="text-align: center;"></textarea>
                                        </div>
                          <!-- <div class="col-4">
                            <label for="emailLoja">Email Loja</label>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-4">
                           <textarea class="emailLoja" id="emailLoja" name="emailLoja" class="form-control" ></textarea>
                          </div>-->
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
                      </div>
                      <div class="row" style="padding-left: 13px; padding-right: 12px; padding-top: 75px;">
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
                                      <input type="text" class="form-control" value="" id="nomeGGL" name="nomeGGL" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Tel. do GGL</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="telefoneGGL" name="telefoneGGL" style="text-align: center;">
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
                                  <div class="input-group mb-3">
                                      <div class="input-group-prepend">
                                        <label class="input-group-text" style="color: black;"><strong>Field Local</strong></label>
                                      </div>
                                      <select class="custom-select" name="fieldLocal">
                                        <option selected>Escolha</option>
                                        <option value="UNISYS">Unisys</option>
                                        <option value="VERHAW">Verhaw</option>
                                      </select>
                                    </div>
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-11">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                      <label class="input-group-text" style="color: black;"><strong>Field Multifuncional</strong></label>
                                    </div>
                                    <select class="custom-select" name="fieldMultifuncional">
                                      <option selected>Escolha</option>
                                      <option value="OTG">OTG</option>
                                      <option value="LEXMARK">Lexmark</option>
                                    </select>
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
                                      <input type="text" class="form-control" value="" id="segASex" name="segASex" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Sab.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="sab" name="sab" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>Dom.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" id="dom" name="dom" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                          <div class="row">
                              <div class="col-11">
                                  <div class="input-group input-group-sm mb-3">
                                      <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroup-sizing-sm" style="color: black;"><strong>OBS.</strong></span>
                                      </div>
                                      <input type="text" class="form-control" value="" name="obs" style="text-align: center;">
                                  </div>
                                </div>
                          </div>
                        </div>
                      </div>
                       <div class="row" style="padding-top: 25px">
                       <div class="col-2"></div>
                        <div class="col-6">
                            <button type="submit" class="btn btn-success">Encaminhar Email</button>
                        </div>
                        <div class="col-3">
                        	<a href="/Data"><button type="button" class="btn btn-primary">Voltar</button></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
          </div>
          </form>
</div>

    
    <script src="/js/somenteNumero.js"></script>
    <script src="/js/logHardware.js"></script>
    <script src="/js/logPinpad.js"></script>
    <script src="/js/logNotificacao.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
