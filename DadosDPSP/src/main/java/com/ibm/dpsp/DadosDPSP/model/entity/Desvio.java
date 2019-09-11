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

public class Desvio {
	
    private String _id;
    
    private String _rev;
    
    private String dtHoraAbertura;

	private String prioridade;

	private String dtHoraTratativa;
	
	private String dtHoraRetorna;
	
	private String analistaDevolucao;
	
	private String filaDevolucao;
	
	private String timeDesvio;
		
	private String tipoAnalise;
	
	private String dataDesvio;
	
	private String analistaDesvio;
	
	private String tipoDesvio;
	
	private String filaAnalista;
	
	private String justificativa;
	
	private String dtAnalise;
	
	private String analistaAplicouDesvio;
	
	private String logon;
	
	private String comentario;
	
	private String deAcordo;
	
	private String liberar;
	
	private String dtLiberacao;

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

	public String getDtHoraAbertura() {
		return dtHoraAbertura;
	}

	public void setDtHoraAbertura(String dtHoraAbertura) {
		this.dtHoraAbertura = dtHoraAbertura;
	}

	public String getPrioridade() {
		return prioridade;
	}

	public void setPrioridade(String prioridade) {
		this.prioridade = prioridade;
	}

	public String getDtHoraTratativa() {
		return dtHoraTratativa;
	}

	public void setDtHoraTratativa(String dtHoraTratativa) {
		this.dtHoraTratativa = dtHoraTratativa;
	}

	public String getDtHoraRetorna() {
		return dtHoraRetorna;
	}

	public void setDtHoraRetorna(String dtHoraRetorna) {
		this.dtHoraRetorna = dtHoraRetorna;
	}

	public String getAnalistaDevolucao() {
		return analistaDevolucao;
	}

	public void setAnalistaDevolucao(String analistaDevolucao) {
		this.analistaDevolucao = analistaDevolucao;
	}

	public String getFilaDevolucao() {
		return filaDevolucao;
	}

	public void setFilaDevolucao(String filaDevolucao) {
		this.filaDevolucao = filaDevolucao;
	}

	public String getTimeDesvio() {
		return timeDesvio;
	}

	public void setTimeDesvio(String timeDesvio) {
		this.timeDesvio = timeDesvio;
	}

	public String getTipoAnalise() {
		return tipoAnalise;
	}

	public void setTipoAnalise(String tipoAnalise) {
		this.tipoAnalise = tipoAnalise;
	}

	public String getDataDesvio() {
		return dataDesvio;
	}

	public void setDataDesvio(String dataDesvio) {
		this.dataDesvio = dataDesvio;
	}

	public String getAnalistaDesvio() {
		return analistaDesvio;
	}

	public void setAnalistaDesvio(String analistaDesvio) {
		this.analistaDesvio = analistaDesvio;
	}

	public String getTipoDesvio() {
		return tipoDesvio;
	}

	public void setTipoDesvio(String tipoDesvio) {
		this.tipoDesvio = tipoDesvio;
	}

	public String getFilaAnalista() {
		return filaAnalista;
	}

	public void setFilaAnalista(String filaAnalista) {
		this.filaAnalista = filaAnalista;
	}

	public String getJustificativa() {
		return justificativa;
	}

	public void setJustificativa(String justificativa) {
		this.justificativa = justificativa;
	}

	public String getDtAnalise() {
		return dtAnalise;
	}

	public void setDtAnalise(String dtAnalise) {
		this.dtAnalise = dtAnalise;
	}

	public String getAnalistaAplicouDesvio() {
		return analistaAplicouDesvio;
	}

	public void setAnalistaAplicouDesvio(String analistaAplicouDesvio) {
		this.analistaAplicouDesvio = analistaAplicouDesvio;
	}

	public String getLogon() {
		return logon;
	}

	public void setLogon(String logon) {
		this.logon = logon;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public String getDeAcordo() {
		return deAcordo;
	}

	public void setDeAcordo(String deAcordo) {
		this.deAcordo = deAcordo;
	}

	public String getLiberar() {
		return liberar;
	}

	public void setLiberar(String liberar) {
		this.liberar = liberar;
	}

	public String getDtLiberacao() {
		return dtLiberacao;
	}

	public void setDtLiberacao(String dtLiberacao) {
		this.dtLiberacao = dtLiberacao;
	}
}
