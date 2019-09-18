/*****************************************************************************
 * Copyright IBM Corp. 2018                                                  *
 *                                                                           *
 * Licensed under the Apache License, Version 2.0 (the "License");           *
 * you may not use this file except in compliance with the License.          *
 * You may obtain a copy of the License at                                   *
 *                                                                           *
 *    http://www.apache.org/licenses/LICENSE-2.0                             *
 *                                                                           *
 * Unless required by applicable law or agreed to in writing, software       *
 * distributed under the License is distributed on an "AS IS" BASIS,         *
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  *
 * See the License for the specific language governing permissions and       *
 * limitations under the License.                                            *
 *****************************************************************************/
package com.ibm.dpsp.DadosDPSP.model.entity;

/**
 * Represents a Visitor document stored in Cloudant.
 */

public class Data {
    private String _id;
    
    private String _rev;
    
    private String name = null;

	private String loja;

	private String endereco;
	
	private String bairro;
	
	private String cidade;
	
	private String uf;
	
	private String cep;
	
	private transient String enderecoCompleto;
	
	private String ggl;
	
	private String telefone1;
	
	private String telefone2;
	
	private String email;
	
	private String cnpj;
	
	private String segASex;
	
	private String sab;
	
	private String dom;
	
	private String obs;

	private String fieldLocal;
	
	private String fieldMultifuncional;
	
	private String bandeira;
	
	private String telefoneGgl;
	
	private String inscEstadual;
	
	private transient String vdLoja;
	
	private String cieloLogico;
	
	private String estabelecimentoCielo;
	
	private String usuarioPopular;
	
	private String senhaPopular;
	
	private String inauguracao;
	
	private transient String img;
	
	private transient String ipGerencia;
	
	private transient String ipBalcao;
	
	private transient String ipCaixa;
	
	private transient String ipImpCupom;
	
	private transient String ipLink;
	
	private transient String ipRoteador;
	
	private transient String ipTiraTeima;
	
	private transient String ipVoip;
	
	private transient String ipMultifuncional;

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String get_rev() {
		return _rev;
	}

	public void set_rev(String _rev) {
		this._rev = _rev;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoja() {
		return loja;
	}

	public void setLoja(String loja) {
		this.loja = loja;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEnderecoCompleto() {
		return enderecoCompleto;
	}

	public void setEnderecoCompleto(String enderecoCompleto) {
		this.enderecoCompleto = enderecoCompleto;
	}

	public String getGgl() {
		return ggl;
	}

	public void setGgl(String ggl) {
		this.ggl = ggl;
	}

	public String getTelefone1() {
		return telefone1;
	}

	public void setTelefone1(String telefone1) {
		this.telefone1 = telefone1;
	}

	public String getTelefone2() {
		return telefone2;
	}

	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getSegASex() {
		return segASex;
	}

	public void setSegASex(String segASex) {
		this.segASex = segASex;
	}

	public String getSab() {
		return sab;
	}

	public void setSab(String sab) {
		this.sab = sab;
	}

	public String getDom() {
		return dom;
	}

	public void setDom(String dom) {
		this.dom = dom;
	}

	public String getObs() {
		return obs;
	}

	public void setObs(String obs) {
		this.obs = obs;
	}

	public String getFieldLocal() {
		return fieldLocal;
	}

	public void setFieldLocal(String fieldLocal) {
		this.fieldLocal = fieldLocal;
	}

	public String getFieldMultifuncional() {
		return fieldMultifuncional;
	}

	public void setFieldMultifuncional(String fieldMultifuncional) {
		this.fieldMultifuncional = fieldMultifuncional;
	}

	public String getBandeira() {
		return bandeira;
	}

	public void setBandeira(String bandeira) {
		this.bandeira = bandeira;
	}

	public String getTelefoneGgl() {
		return telefoneGgl;
	}

	public void setTelefoneGgl(String telefoneGgl) {
		this.telefoneGgl = telefoneGgl;
	}

	public String getInscEstadual() {
		return inscEstadual;
	}

	public void setInscEstadual(String inscEstadual) {
		this.inscEstadual = inscEstadual;
	}

	public String getVdLoja() {
		return vdLoja;
	}

	public void setVdLoja(String vdLoja) {
		this.vdLoja = vdLoja;
	}

	public String getCieloLogico() {
		return cieloLogico;
	}

	public void setCieloLogico(String cieloLogico) {
		this.cieloLogico = cieloLogico;
	}

	public String getEstabelecimentoCielo() {
		return estabelecimentoCielo;
	}

	public void setEstabelecimentoCielo(String estabelecimentoCielo) {
		this.estabelecimentoCielo = estabelecimentoCielo;
	}

	public String getUsuarioPopular() {
		return usuarioPopular;
	}

	public void setUsuarioPopular(String usuarioPopular) {
		this.usuarioPopular = usuarioPopular;
	}

	public String getSenhaPopular() {
		return senhaPopular;
	}

	public void setSenhaPopular(String senhaPopular) {
		this.senhaPopular = senhaPopular;
	}

	public String getInauguracao() {
		return inauguracao;
	}

	public void setInauguracao(String inauguracao) {
		this.inauguracao = inauguracao;
	}
	
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}

	public String getIpGerencia() {
		return ipGerencia;
	}

	public void setIpGerencia(String ipGerencia) {
		this.ipGerencia = ipGerencia;
	}

	public String getIpBalcao() {
		return ipBalcao;
	}

	public void setIpBalcao(String ipBalcao) {
		this.ipBalcao = ipBalcao;
	}

	public String getIpCaixa() {
		return ipCaixa;
	}

	public void setIpCaixa(String ipCaixa) {
		this.ipCaixa = ipCaixa;
	}

	public String getIpImpCupom() {
		return ipImpCupom;
	}

	public void setIpImpCupom(String ipImpCupom) {
		this.ipImpCupom = ipImpCupom;
	}

	public String getIpLink() {
		return ipLink;
	}

	public void setIpLink(String ipLink) {
		this.ipLink = ipLink;
	}

	public String getIpRoteador() {
		return ipRoteador;
	}

	public void setIpRoteador(String ipRoteador) {
		this.ipRoteador = ipRoteador;
	}

	public String getIpTiraTeima() {
		return ipTiraTeima;
	}

	public void setIpTiraTeima(String ipTiraTeima) {
		this.ipTiraTeima = ipTiraTeima;
	}

	public String getIpVoip() {
		return ipVoip;
	}

	public void setIpVoip(String ipVoip) {
		this.ipVoip = ipVoip;
	}

	public String getIpMultifuncional() {
		return ipMultifuncional;
	}

	public void setIpMultifuncional(String ipMultifuncional) {
		this.ipMultifuncional = ipMultifuncional;
	}
}
