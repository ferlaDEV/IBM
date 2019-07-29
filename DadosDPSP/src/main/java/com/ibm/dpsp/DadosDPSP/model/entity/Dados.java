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

public class Dados {
    private String _id;
    private String _rev;
    private String name = null;

	private String loja;

	private String endereco;
	
	private String bairro;
	
	private String cidade;
	
	private String uf;
	
	private String cep;
	
	private String enderecoCompleto;
	
	private String ggl;
	
	private String telefone1;
	
	private String telefone2;
	
	private String email;
	
	private String cnpj;
	
	private String segASex;
	
	private String sab;
	
	private String dom;
	
	private String obs;

	private String prestador;
	
	private String multifuncional;
	
	private String bandeira;
	
	private String emailGGL;
	
	private String telefoneGGL;
	
	private String inscEstadual;
	
	private transient String vdLoja;
	
	public String getVdLoja() {
		return vdLoja;
	}
	
	public void setVdLoja(String vdLoja) {
		this.vdLoja = vdLoja;
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
	
	public void setEnderecoComplero(String enderecoCompleto) {
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

	public String getPrestador() {
		return prestador;
	}

	public void setPrestador(String prestador) {
		this.prestador = prestador;
	}

	public String getMultifuncional() {
		return multifuncional;
	}

	public void setMultifuncional(String multifuncional) {
		this.multifuncional = multifuncional;
	}

	public String getBandeira() {
		return bandeira;
	}

	public void setBandeira(String bandeira) {
		this.bandeira = bandeira;
	}

	public String getEmailGGL() {
		return emailGGL;
	}

	public void setEmailGGL(String emailGGL) {
		this.emailGGL = emailGGL;
	}

	public String getTelefoneGGL() {
		return telefoneGGL;
	}

	public void setTelefoneGGL(String telefoneGGL) {
		this.telefoneGGL = telefoneGGL;
	}

	public String getInscEstadual() {
		return inscEstadual;
	}

	public void setInscEstadual(String inscEstadual) {
		this.inscEstadual = inscEstadual;
	}

	public String getInauguracao() {
		return inauguracao;
	}

	public void setInauguracao(String inauguracao) {
		this.inauguracao = inauguracao;
	}

	private String inauguracao;
    

    public Dados() {
        this.name = "";
    }

    /**
     * Gets the ID.
     * 
     * @return The ID.
     */
    public String get_id() {
        return _id;
    }

    /**
     * Sets the ID
     * 
     * @param _id
     *            The ID to set.
     */
    public void set_id(String _id) {
        this._id = _id;
    }

    /**
     * Gets the revision of the document.
     * 
     * @return The revision of the document.
     */
    public String get_rev() {
        return _rev;
    }

    /**
     * Sets the revision.
     * 
     * @param _rev
     *            The revision to set.
     */
    public void set_rev(String _rev) {
        this._rev = _rev;
    }

    /**
     * Gets the visitorName of the document.
     * 
     * @return The name of the document.
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the name
     * 
     * @param name
     *            The visitorName to set.
     */
    public void setName(String visitorName) {
        this.name = visitorName;
    }
}
