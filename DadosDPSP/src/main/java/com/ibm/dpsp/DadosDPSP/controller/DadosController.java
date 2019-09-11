package com.ibm.dpsp.DadosDPSP.controller;



import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Data;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;

@Controller
public class DadosController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping(method = RequestMethod.GET, value="/Buscar")
	public String buscar(@RequestParam("id") String id, Model model, Data data, 
			HttpSession session, HttpServletRequest request, HttpServletRequest response) throws IOException {
		
		data.setImg("/img/dpsp.jpg");
		String erro = null;
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		

 
		
		if(id.charAt(0) <= '0') {
				StringBuilder sb = new StringBuilder();
				char num1 = id.charAt(1);
				char num2 = id.charAt(2);
				sb.append(num1);
				sb.append(num2);
				id = sb.toString();
			}
		
		if(db.contains(id)) {
	            data = db.find(Data.class, id);

			String enderecoCompleto = (data.getEndereco() + " - " + data.getBairro() + " - " + data.getCidade() + " - " + data.getUf() + " - " + data.getCep());
			Data newData = new Data();
			int vdLoja = Integer.parseInt(id);
			if(data.getBandeira().equals("DSP")) {
				if(vdLoja <= 249 ) {
					data.setIpGerencia("10.0."+vdLoja+".100");
					data.setIpBalcao("Entre 10.0."+vdLoja+".101" + " " + "até" + " " + "10.0."+vdLoja+".109");
					data.setIpCaixa("Entre 10.0."+vdLoja+".50" + " " + "até" + " " + "10.0."+vdLoja+".59");
					data.setIpImpCupom("10.0."+vdLoja+".118");
					data.setIpLink("10.0."+vdLoja+".125");
					data.setIpRoteador("10.0."+vdLoja+".254");
					data.setIpTiraTeima("10.0."+vdLoja+".110");
					data.setIpVoip("10.0."+vdLoja+".99");
				}else if(vdLoja >= 250 && vdLoja <=999) {
					int a = vdLoja / 100;
					int b = vdLoja / 10 % 10;
					int c = vdLoja % 10;
					data.setIpGerencia("10."+a+b+"."+c+".100");
					data.setIpBalcao("Entre 10."+a+b+"."+c+".101" + " " + "até" + " " + "10."+a+b+"."+c+".109");
					data.setIpCaixa("Entre 10."+a+b+"."+c+".50" + " " + "até" + " " + "10."+a+b+"."+c+".59");
					data.setIpImpCupom("10."+a+b+"."+c+".118");
					data.setIpLink("10."+a+b+"."+c+".125");
					data.setIpRoteador("10."+a+b+"."+c+".254");
					data.setIpTiraTeima("10."+a+b+"."+c+".110");
					data.setIpVoip("10."+a+b+"."+c+".99");
				}else if(vdLoja >= 2000 && vdLoja < 2100) {
					int a = vdLoja / 1000;
					int b = vdLoja / 10 % 10;
					int c = vdLoja % 10;
					if(b == 0) {
						data.setIpGerencia("10."+a+"."+c+".100");
						data.setIpBalcao("Entre 10."+a+"."+c+".101" + " " + "até" + " " + "10."+a+"."+c+".109");
						data.setIpCaixa("Entre 10."+a+"."+c+".50" + " " + "até" + " " + "10."+a+"."+c+".59");
						data.setIpImpCupom("10."+a+"."+c+".118");
						data.setIpLink("10."+a+"."+c+".125");
						data.setIpRoteador("10."+a+"."+c+".254");
						data.setIpTiraTeima("10."+a+"."+c+".110");
						data.setIpVoip("10."+a+"."+c+".99");
					}else {
						data.setIpGerencia("10."+a+"."+b+c+".100");
						data.setIpBalcao("Entre 10."+a+"."+b+c+".101" + " " + "até" + " " + "10."+a+"."+b+c+".109");
						data.setIpCaixa("Entre 10."+a+"."+b+c+".50" + " " + "até" + " " + "10."+a+"."+b+c+".59");
						data.setIpImpCupom("10."+a+"."+b+c+".118");
						data.setIpLink("10."+a+"."+b+c+".125");
						data.setIpRoteador("10."+a+"."+b+c+".254");
						data.setIpTiraTeima("10."+a+"."+b+c+".110");
						data.setIpVoip("10."+a+"."+b+c+".99");
					}
				}else if(vdLoja >= 2100 && vdLoja < 3000) {
                    int a=vdLoja /1000;
                    int b=vdLoja /100 % 10;
                    int c=vdLoja / 10 % 10;
                    int d=vdLoja % 10;
					data.setIpGerencia("10."+a+"."+b+c+d+".100");
					data.setIpBalcao("Entre 10."+a+"."+b+c+d+".101" + " " + "até" + " " + "10."+a+b+"."+c+d+".109");
					data.setIpCaixa("Entre 10."+a+"."+b+c+d+".50" + " " + "até" + " " + "10."+a+b+"."+c+d+".59");
					data.setIpImpCupom("10."+a+"."+b+c+d+".118");
					data.setIpLink("10."+a+"."+b+c+d+".125");
					data.setIpRoteador("10."+a+"."+b+c+d+".254");
					data.setIpTiraTeima("10."+a+"."+b+c+d+".110");
					data.setIpVoip("10."+a+"."+b+c+d+".99");
				}
				newData.setImg("/img/dsp.jpg");
			}else{
				if (vdLoja <= 1200) {
					vdLoja = vdLoja - 1000;
					data.setIpGerencia("10.226."+vdLoja+".1");
					data.setIpBalcao("Entre 10.226."+vdLoja+".50" + " " + "até" + " " + "10.226."+vdLoja+".59");
					data.setIpCaixa("Entre 10.226."+vdLoja+".2" + " " + "até" + " " + "10.226."+vdLoja+".9");
					data.setIpImpCupom("10.226."+vdLoja+".118");
					data.setIpLink("10.226."+vdLoja+".125");
					data.setIpRoteador("10.226."+vdLoja+".254");
					data.setIpTiraTeima("10.226."+vdLoja+".110");
					data.setIpVoip("10.226."+vdLoja+".70" + " " + "ou" + " " + "10.226."+vdLoja+".71");
				}else if (vdLoja >= 1201 && vdLoja <=1399) {
					vdLoja = vdLoja - 1200;
					data.setIpGerencia("10.228."+vdLoja+".1");
					data.setIpBalcao("Entre 10.228."+vdLoja+".50" + " " + "até" + " " + "10.228."+vdLoja+".59");
					data.setIpCaixa("Entre 10.228."+vdLoja+".2" + " " + "até" + " " + "10.228."+vdLoja+".9");
					data.setIpImpCupom("10.228."+vdLoja+".118");
					data.setIpLink("10.228."+vdLoja+".125");
					data.setIpRoteador("10.228."+vdLoja+".254");
					data.setIpTiraTeima("10.228."+vdLoja+".110");
					data.setIpVoip("10.228."+vdLoja+".70" + " " + "ou" + " " + "10.228."+vdLoja+".71");
				}else if (vdLoja > 1400 && vdLoja < 1651) {
					vdLoja = vdLoja - 1400;
					data.setIpGerencia("10.229."+vdLoja+".1");
					data.setIpBalcao("Entre 10.229."+vdLoja+".50" + " " + "até" + " " + "10.229."+vdLoja+".59");
					data.setIpCaixa("Entre 10.229."+vdLoja+".2" + " " + "até" + " " + "10.229."+vdLoja+".9");
					data.setIpImpCupom("10.229."+vdLoja+".118");
					data.setIpLink("10.226."+vdLoja+".125");
					data.setIpRoteador("10.229."+vdLoja+".254");
					data.setIpTiraTeima("10.229."+vdLoja+".110");
					data.setIpVoip("10.229."+vdLoja+".70" + " " + "ou" + " " + "10.229."+vdLoja+".71");
				}
				newData.setImg("/img/dp.jpg");
			}

			newData.set_id(data.get_id());
			newData.setBandeira(data.getBandeira());
			newData.setCnpj(data.getCnpj());
			newData.setDom(data.getDom());
			newData.setEmail(data.getEmail());
			newData.setEnderecoCompleto(enderecoCompleto);
			newData.setGgl(data.getGgl());
			newData.setInauguracao(data.getInauguracao());
			newData.setInscEstadual(data.getInscEstadual());
			newData.setLoja(data.getLoja());
			newData.setFieldMultifuncional(data.getFieldMultifuncional());
			newData.setFieldLocal(data.getFieldLocal());
			newData.setSab(data.getSegASex());
			newData.setSegASex(data.getSegASex());
			newData.setTelefone1(data.getTelefone1());
			newData.setTelefone2(data.getTelefone2());
			newData.setTelefoneGgl(data.getTelefoneGgl());
			newData.setObs(data.getObs());
			newData.setCieloLogico(data.getCieloLogico());
			newData.setEstabelecimentoCielo(data.getEstabelecimentoCielo());
			newData.setUsuarioPopular(data.getUsuarioPopular());
			newData.setSenhaPopular(data.getSenhaPopular());
			newData.setIpGerencia(data.getIpGerencia());
			newData.setIpBalcao(data.getIpBalcao());
			newData.setIpCaixa(data.getIpCaixa());
			newData.setIpImpCupom(data.getIpImpCupom());
			newData.setIpLink(data.getIpLink());
			newData.setIpRoteador(data.getIpRoteador());
			newData.setIpTiraTeima(data.getIpTiraTeima());
			newData.setIpVoip(data.getIpVoip());
			erro = null;
        	model.addAttribute("erro", erro);	
			model.addAttribute("data", newData);
			
			if(user.getAccess().equals("Lider")) {
				return "DataLideranca";
			}else {
				if(user.getAccess().equals("ADM")) {
					return "DataADM";
				}else {
					return "Data";
				}
			}
		}else {
			erro = "Loja não Cadastrada!";
        	model.addAttribute("erro", erro);	
			if(user.getAccess().equals("Lider")) {
				return "DataLideranca";
			}else {
				if(user.getAccess().equals("ADM")) {
					return "DataADM";
				}else {
					return "Data";
				}
			}
		}
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/BuscarAtualizar")
	public String buscarAtualizar(@RequestParam("id") String id, Model model, Data data, 
			HttpSession session, HttpServletRequest request, HttpServletRequest response) throws IOException {
		String mensagemError = null;
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		
		if(id.charAt(0) <= '0') {
			StringBuilder sb = new StringBuilder();
			char num1 = id.charAt(1);
			char num2 = id.charAt(2);
			sb.append(num1);
			sb.append(num2);
			id = sb.toString();
			System.out.println(id);	
		}
		
		if(db.contains(id)) {
			data = db.find(Data.class, id);
			Data newData = new Data();

			newData.set_id(data.get_id());
			newData.setBandeira(data.getBandeira());
			newData.setCnpj(data.getCnpj());
			newData.setDom(data.getDom());
			newData.setEmail(data.getEmail());
			newData.setGgl(data.getGgl());
			newData.setInauguracao(data.getInauguracao());
			newData.setInscEstadual(data.getInscEstadual());
			newData.setLoja(data.getLoja());
			newData.setFieldMultifuncional(data.getFieldMultifuncional());
			newData.setFieldLocal(data.getFieldLocal());
			newData.setSab(data.getSegASex());
			newData.setSegASex(data.getSegASex());
			newData.setTelefone1(data.getTelefone1());
			newData.setTelefone2(data.getTelefone2());
			newData.setTelefoneGgl(data.getTelefoneGgl());
			newData.setObs(data.getObs());
			newData.setEndereco(data.getEndereco());
			newData.setBairro(data.getBairro());
			newData.setUf(data.getUf());
			newData.setCep(data.getCep());
			newData.setCidade(data.getCidade());
			
			if(user.getAccess().equals("Lider")) {
				model.addAttribute("data", newData);
				return "AtualizaLojaLideranca";
			}else {
				if(user.getAccess().equals("ADM")) {
					model.addAttribute("data", newData);
					return "AtualizaLojaLideranca";
				}else {
					return "Data";
				}
			}
		}else{
			if(user.getAccess().equals("Lider")) {
				mensagemError = "Loja " + id + " não está cadastrada!!!";
			    model.addAttribute("mensagemError", mensagemError);	
				return "AtualizaLojaLideranca";
			}else {
				mensagemError = "Loja " + id + " não está cadastrada!!!";
			    model.addAttribute("mensagemError", mensagemError);	
				return "AtualizaLojaLideranca";
			}
		}
	}
	
	@RequestMapping("/CadastrarLoja")
	public String cadastrarLoja(@RequestParam("id") String vdLoja, @RequestParam("bandeira") String bandeira, @RequestParam("loja") String loja, @RequestParam("inscEstadual") String inscEstadual, 
			@RequestParam("cnpj") String cnpj, @RequestParam("inauguracao")String inauguracao, @RequestParam("telefone1") String telefone1, @RequestParam("telefone2") String telefone2,
			@RequestParam("emailLoja") String emailLoja, @RequestParam("nomeGGL") String nomeGGL, @RequestParam("telefoneGGL") String telefoneGGL, @RequestParam("fieldLocal") String fieldLocal,
			@RequestParam("fieldMultifuncional") String fieldMultifuncional, @RequestParam("segASex") String segASex, @RequestParam("sab") String sab, @RequestParam("dom") String dom, 
			@RequestParam("obs") String obs, @RequestParam("endereco") String endereco, @RequestParam("bairro") String bairro, @RequestParam("cidade") String cidade, @RequestParam("uf") String uf, 
			@RequestParam("cep") String cep, HttpServletRequest request, Model model, HttpSession session, HttpServletRequest response){
		
		String mensagemSuccess = null;
		String mensagemError = null;
	
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			if(db.contains(vdLoja)) {
				mensagemError = "Loja já está cadastrada!!";
			    mensagemSuccess = null;
			    model.addAttribute("mensagemSuccess", mensagemSuccess);	
			    model.addAttribute("mensagemError", mensagemError);	
				return "CadastroLoja";
			}else {
				mensagemSuccess = "Loja "+ vdLoja + " cadastrada com sucesso!!";
				mensagemError = null;
				Data newData = new Data();
				newData.set_id(vdLoja);
				newData.setBandeira(bandeira);
				newData.setLoja(loja);
				newData.setInscEstadual(inscEstadual);
				newData.setCnpj(cnpj);
				newData.setInauguracao(inauguracao);
				newData.setTelefone1(telefone1);
				newData.setTelefone2(telefone2);
				newData.setEmail(emailLoja);
				newData.setGgl(nomeGGL);
				newData.setTelefoneGgl(telefoneGGL);
				newData.setFieldLocal(fieldLocal);
				newData.setFieldMultifuncional(fieldMultifuncional);
				newData.setSegASex(segASex);
				newData.setSab(sab);
				newData.setDom(dom);
				newData.setObs(obs);
				newData.setUf(uf);
				newData.setEndereco(endereco);
				newData.setBairro(bairro);
				newData.setCidade(cidade);
				newData.setCep(cep);
				db.post(newData);
			    model.addAttribute("mensagemSuccess", mensagemSuccess);	
			    model.addAttribute("mensagemError", mensagemError);	
				return "CadastroLoja";
			}
		}else {
			if(user.getAccess().equals("Lider")) {
				if(db.contains(vdLoja)) {
					mensagemError = "Loja já está cadastrada!!";
				    mensagemSuccess = null;
				    model.addAttribute("mensagemSuccess", mensagemSuccess);	
				    model.addAttribute("mensagemError", mensagemError);	
					return "CadastroLojaLideranca";
				}else {
					mensagemSuccess = "Loja "+ vdLoja + " cadastrada com sucesso!!";
					mensagemError = null;
					Data newData = new Data();
					newData.set_id(vdLoja);
					newData.setBandeira(bandeira);
					newData.setLoja(loja);
					newData.setInscEstadual(inscEstadual);
					newData.setCnpj(cnpj);
					newData.setInauguracao(inauguracao);
					newData.setTelefone1(telefone1);
					newData.setTelefone2(telefone2);
					newData.setEmail(emailLoja);
					newData.setGgl(nomeGGL);
					newData.setTelefoneGgl(telefoneGGL);
					newData.setFieldLocal(fieldLocal);
					newData.setFieldMultifuncional(fieldMultifuncional);
					newData.setSegASex(segASex);
					newData.setSab(sab);
					newData.setDom(dom);
					newData.setObs(obs);
					newData.setUf(uf);
					newData.setEndereco(endereco);
					newData.setBairro(bairro);
					newData.setCidade(cidade);
					newData.setCep(cep);
					db.post(newData);
				    model.addAttribute("mensagemSuccess", mensagemSuccess);	
				    model.addAttribute("mensagemError", mensagemError);	
					return "CadastroLojaLideranca";
				}
			}else {
				return "Data";
			}
		}
	}
	
	@RequestMapping("/ExcluirLoja")
	public String excluirLoja(@RequestParam("id") String teste, HttpServletRequest request, Model model, HttpSession session, HttpServletRequest response) {
		String mensagemSuccess = null;
		String mensagemError = null;
	
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
					if(db.contains(teste)) {
					Data data = db.find(Data.class, teste);
					db.remove(teste, data.get_rev());
					mensagemSuccess = "Loja " + teste + " deletada com sucesso";
				    model.addAttribute("mensagemSuccess", mensagemSuccess);	
					return "AtualizaLoja";
				}else {
					mensagemError = "Loja " + teste + " não está cadastrada!!!";
				    model.addAttribute("mensagemError", mensagemError);	
					return "AtualizaLoja";
				}
				
			}else{
				if(user.getAccess().equals("Lider")) {
					if(db.contains(teste)) {
					Data data = db.find(Data.class, teste);
					db.remove(teste, data.get_rev());
					mensagemSuccess = "Loja " + teste + " deletada com sucesso";
				    model.addAttribute("mensagemSuccess", mensagemSuccess);	
					return "AtualizaLojaLideranca";
				}else {
					mensagemError = "Loja " + teste + " não está cadastrada!!!";
				    model.addAttribute("mensagemError", mensagemError);	
					return "AtualizaLojaLideranca";
				}
				
			}else {
				return "Data";
			}
		}
	}
		
	@RequestMapping("/AtualizarLoja")
	public String AtualizarLoja(@RequestParam("id") String vdLoja, @RequestParam("bandeira") String bandeira, @RequestParam("loja") String loja, @RequestParam("inscEstadual") String inscEstadual, 
			@RequestParam("cnpj") String cnpj, @RequestParam("inauguracao")String inauguracao, @RequestParam("telefone1") String telefone1, @RequestParam("telefone2") String telefone2,
			@RequestParam("emailLoja") String emailLoja, @RequestParam("nomeGGL") String nomeGGL, @RequestParam("telefoneGGL") String telefoneGGL, @RequestParam("fieldLocal") String fieldLocal,
			@RequestParam("fieldMultifuncional") String fieldMultifuncional, @RequestParam("segASex") String segASex, @RequestParam("sab") String sab, @RequestParam("dom") String dom, 
			@RequestParam("obs") String obs, @RequestParam("endereco") String endereco, @RequestParam("bairro") String bairro, @RequestParam("cidade") String cidade, @RequestParam("uf") String uf, 
			@RequestParam("cep") String cep, HttpServletRequest request, Model model, HttpSession session, HttpServletRequest response){
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		String mensagemSuccess = null;
		if(user.getAccess().equals("ADM")) {
			Data data = db.find(Data.class, vdLoja);
				mensagemSuccess = "Loja " + vdLoja + " atualizada com sucesso";
				data.set_id(vdLoja);
				data.setBandeira(bandeira);
				data.setLoja(loja);
				data.setInscEstadual(inscEstadual);
				data.setCnpj(cnpj);
				data.setInauguracao(inauguracao);
				data.setTelefone1(telefone1);
				data.setTelefone2(telefone2);
				data.setEmail(emailLoja);
				data.setGgl(nomeGGL);
				data.setTelefoneGgl(telefoneGGL);
				data.setFieldLocal(fieldLocal);
				data.setFieldMultifuncional(fieldMultifuncional);
				data.setSegASex(segASex);
				data.setSab(sab);
				data.setDom(dom);
				data.setObs(obs);
				data.setUf(uf);
				data.setEndereco(endereco);
				data.setCidade(cidade);
				data.setCep(cep);
				data.setBairro(bairro);
				data.set_rev(data.get_rev());
				db.update(data);
			    model.addAttribute("mensagemSuccess", mensagemSuccess);	
				return "AtualizaLoja";
		}else {
			if(user.getAccess().equals("Lider")) {
				Data data = db.find(Data.class, vdLoja);
					mensagemSuccess = "Loja " + vdLoja + " atualizada com sucesso";
					data.set_id(vdLoja);
					data.setBandeira(bandeira);
					data.setLoja(loja);
					data.setInscEstadual(inscEstadual);
					data.setCnpj(cnpj);
					data.setInauguracao(inauguracao);
					data.setTelefone1(telefone1);
					data.setTelefone2(telefone2);
					data.setEmail(emailLoja);
					data.setGgl(nomeGGL);
					data.setTelefoneGgl(telefoneGGL);
					data.setFieldLocal(fieldLocal);
					data.setFieldMultifuncional(fieldMultifuncional);
					data.setSegASex(segASex);
					data.setSab(sab);
					data.setDom(dom);
					data.setObs(obs);
					data.setUf(uf);
					data.setEndereco(endereco);
					data.setCidade(cidade);
					data.setCep(cep);
					data.setBairro(bairro);
					data.set_rev(data.get_rev());
					db.update(data);
				    model.addAttribute("mensagemSuccess", mensagemSuccess);	
					return "AtualizaLojaLideranca";
			}else {
				return "Data";
			}
		}	
	}
}

