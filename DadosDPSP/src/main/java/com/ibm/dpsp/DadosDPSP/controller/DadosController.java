package com.ibm.dpsp.DadosDPSP.controller;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Dados;

@Controller
public class DadosController {
	
	@Autowired
	 private Database db;

	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public String login() {
		return "Login";
	}
	
	@RequestMapping("/Dados")
	public String dados() {
		return "Dados";
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/Buscar")
	public String getGreeting(@RequestParam("id") String id, Model model) throws IOException {
		
			Dados dados = db.find(Dados.class, id);
			String enderecoCompleto = (dados.getEndereco() + " - " + dados.getBairro() + " - " + dados.getCidade() + " - " + dados.getUf() + " - " + dados.getCep());
			Dados novoDados = new Dados();
			
			novoDados.set_id(dados.get_id());
			novoDados.setBandeira(dados.getBandeira());
			novoDados.setCnpj(dados.getCnpj());
			novoDados.setDom(dados.getDom());
			novoDados.setEmail(dados.getEmailGGL());
			novoDados.setEmailGGL(dados.getEmailGGL());
			novoDados.setEnderecoComplero(enderecoCompleto);
			novoDados.setGgl(dados.getGgl());
			novoDados.setInauguracao(dados.getInauguracao());
			novoDados.setInscEstadual(dados.getInscEstadual());
			novoDados.setLoja(dados.getLoja());
			novoDados.setMultifuncional(dados.getMultifuncional());
			novoDados.setPrestador(dados.getPrestador());
			novoDados.setSab(dados.getSegASex());
			novoDados.setSegASex(dados.getSegASex());
			novoDados.setTelefone1(dados.getTelefone1());
			novoDados.setTelefone2(dados.getTelefone2());
			novoDados.setTelefoneGGL(dados.getTelefoneGGL());
			novoDados.setObs(dados.getObs());
			
			model.addAttribute("dados", novoDados);	
			return "Dados";
	}
}

