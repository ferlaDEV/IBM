package com.ibm.dpsp.DadosDPSP.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Desvio;


@Controller
public class DashboardDesviosController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping(value="/DashboardDesvio", method = RequestMethod.GET)
	public String dashboardDesvio(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		
		Desvio d;
		List<Desvio> allDesvios = null;
		int contDesvioSD = 0;
		int contDesvioDPSP = 0;
		int contProativo = 0;
		int contReativo = 0;
		int contDPSP = 0;
		int contProblemProat = 0;
		int contScript = 0;
		int contParado = 0;
		int contCategoria = 0;
		int contNotificacao = 0;
		int contProblemReat = 0;
		int contPositivacao = 0;
		int contDescricao = 0;
		int contDirecionamento = 0;
		int andrespx = 0;
		int buenoga = 0;
		int eduaopa = 0;
		int enasilva = 0;
		int felneves = 0;
		int felsan = 0;
		int ferlapx = 0;
		int gabaf = 0;
		int gsoli = 0;
		int guhfs = 0;
		int jquei = 0;
		int juancda = 0;
		int leiper = 0;
		int ligiar = 0;
		int lilianfp = 0;
		int malonenc = 0;
		int marcoabj = 0;
		int mariaels = 0;
		int mayss = 0;
		int mfdiaspx = 0;
		int munizn = 0;
		int murisil = 0;
		int ofaria = 0;
		int oliversi = 0;
		int petma = 0;
		int phperepx = 0;
		int pjordaot = 0;
		int rafaelos = 0;
		int rafsanco = 0;
		int rodolfob = 0;
		int rrslima = 0;
		int ssabrina = 0;
		int tdom = 0;
		int vilanopx = 0;
		int wellinlo = 0;
		int contJustificativa = 0;
		int contIndevido = 0;
		int contInformacao = 0;
		
		allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
        .getDocsAs(Desvio.class);
		
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getTipoDesvio() != null) {
				if(d.getTimeDesvio().equals("Desvios_SD")) {
					contDesvioSD ++;
				}else if(d.getTimeDesvio().equals("Desvios_DPSP")) {
					contDesvioDPSP ++;
				}
			}
		}
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getTipoDesvio() != null) {
				if(d.getTipoAnalise().equals("Proativo")) {
					contProativo ++;
				}else if(d.getTipoAnalise().equals("Reativo")){
					contReativo ++;
				}else if(d.getTipoAnalise().equals("DPSP")){
					contDPSP ++;
				}
			}
		}
		
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getTipoDesvio() != null) {
				if(d.getTipoDesvio().equals("[PROATIVO] - Problem Determination")) {
					contProblemProat ++;
				}else if(d.getTipoDesvio().equals("[PROATIVO] - Script/Descricao")) {
					contScript ++;
				}else if(d.getTipoDesvio().equals("[PROATIVO] - Chamado parado sem justificativa")) {
					contParado ++;
				}else if(d.getTipoDesvio().equals("[PROATIVO] - Categoria incorreta / nao alterada")) {
					contCategoria ++;
				}else if(d.getTipoDesvio().equals("[PROATIVO] - Notificacao de chamado")) {
					contNotificacao ++;
				}
			}
		}
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getTipoDesvio() != null) {
				if(d.getTipoDesvio().equals("[DPSP] - Chamado devolvido sem justificativa em log")) {
					contJustificativa ++;
				}else if(d.getTipoDesvio().equals("[DPSP] - Chamado devolvido indevidamente")) {
					contIndevido ++;
				}else if(d.getTipoDesvio().equals("[DPSP] - Solicitado informacoes que ja constam no chamado")) {
					contInformacao ++;
				}
			}
		}
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getTipoDesvio() != null) {
				if(d.getTipoDesvio().equals("[REATIVO] - Problem Determination")) {
					contProblemReat ++;
				}else if(d.getTipoDesvio().equals("[REATIVO] - Falta de Positivacao dos Dados")) {
					contPositivacao ++;
				}else if(d.getTipoDesvio().equals("[REATIVO] - Descricao Incompleta ou Errada")) {
					contDescricao ++;
				}else if(d.getTipoDesvio().equals("[REATIVO] - Direcionamento Indevido")) {
					contDirecionamento ++;
				}
			}
		}
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getLogon() != null) {
				if(d.getLogon().equals("andrespx")) {
					andrespx ++;
				}else if(d.getLogon().equals("buenoga")) {
					buenoga ++;
				}else if(d.getLogon().equals("eduaopa")) {
					eduaopa ++;
				}else if(d.getLogon().equals("enasilva")){
					enasilva ++;
				}else if(d.getLogon().equals("felneves")) {
					felneves ++;
				}else if (d.getLogon().equals("felsan")) {
					felsan ++;
				}else if(d.getLogon().equals("ferlapx")) {
					ferlapx ++;
				}else if(d.getLogon().equals("gabaf")) {
					gabaf ++;
				}else if(d.getLogon().equals("gsoli")) {
					gsoli ++;
				}else if(d.getLogon().equals("guhfs")) {
					guhfs ++;
				}else if(d.getLogon().equals("jquei")) {
					jquei ++;
				}else if(d.getLogon().equals("juancda")) {
					juancda ++;
				}else if(d.getLogon().equals("leiper")) {
					leiper ++;
				}else if(d.getLogon().equals("ligiar")) {
					ligiar ++;
				}else if(d.getLogon().equals("lilianfp")) {
					lilianfp ++;
				}else if(d.getLogon().equals("malonenc")) {
					malonenc ++;
				}else if(d.getLogon().equals("mariaels")) {
					mariaels ++;
				}else if(d.getLogon().equals("mayss")) {
					mayss ++;
				}else if(d.getLogon().equals("mfdiaspx")) {
					mfdiaspx ++;
				}else if(d.getLogon().equals("munizn")) {
					munizn ++;
				}else if(d.getLogon().equals("murisil")) {
					murisil ++;
				}else if(d.getLogon().equals("ofaria")) {
					ofaria ++;
				}else if(d.getLogon().equals("oliversi")) {
					oliversi ++;
				}else if(d.getLogon().equals("petma")) {
					petma ++; 
				}else if(d.getLogon().equals("phperepx")) {
					phperepx ++;
				}else if(d.getLogon().equals("pjordaot")) {
					pjordaot ++;
				}else if(d.getLogon().equals("rafaelos")) {
					rafaelos ++;
				}else if(d.getLogon().equals("rafsanco")) {
					rafsanco ++;
				}else if(d.getLogon().equals("rodolfob")) {
					rodolfob ++;
				}else if(d.getLogon().equals("rrslima")) {
					rrslima ++;
				}else if(d.getLogon().equals("ssabrina")) {
					ssabrina ++;
				}else if(d.getLogon().equals("tdom")) {
					tdom ++;
				}else if(d.getLogon().equals("vilanopx")) {
					vilanopx ++;
				}else if(d.getLogon().equals("wellinlo")) {
					wellinlo ++;
				}
			}
		}
		System.out.println(malonenc);
		model.addAttribute("Desvios_SD", contDesvioSD);
		model.addAttribute("Desvios_DPSP", contDesvioDPSP);
		model.addAttribute("proativo", contProativo);
		model.addAttribute("reativo", contReativo);
		model.addAttribute("dpsp", contDPSP);
		model.addAttribute("problemProat", contProblemProat);
		model.addAttribute("script", contScript);
		model.addAttribute("parado", contParado);
		model.addAttribute("categoria", contCategoria);
		model.addAttribute("notificacao", contNotificacao);
		model.addAttribute("problemReat", contProblemReat);
		model.addAttribute("positivacao", contPositivacao);
		model.addAttribute("descricao", contDescricao);
		model.addAttribute("direcionamento", contDirecionamento);
		model.addAttribute("andrespx", andrespx);
		model.addAttribute("buenoga", buenoga);
		model.addAttribute("eduaopa", eduaopa);
		model.addAttribute("enasilva", enasilva);
		model.addAttribute("felneves", felneves);
		model.addAttribute("felsan", felsan);
		model.addAttribute("ferlapx", ferlapx);
		model.addAttribute("gabaf", gabaf);
		model.addAttribute("gsoli", gsoli);
		model.addAttribute("guhfs", guhfs);
		model.addAttribute("jquei", jquei);
		model.addAttribute("juancda", juancda);
		model.addAttribute("leiper", leiper);
		model.addAttribute("ligiar", ligiar);
		model.addAttribute("lilianfp", lilianfp);
		model.addAttribute("malonenc", malonenc);
		model.addAttribute("marcoabj", marcoabj);
		model.addAttribute("mariaels", mariaels);
		model.addAttribute("mayss", mayss);
		model.addAttribute("mfdiaspx", mfdiaspx);
		model.addAttribute("munizn", munizn);
		model.addAttribute("murisil", murisil);
		model.addAttribute("ofaria", ofaria);
		model.addAttribute("oliversi", oliversi);
		model.addAttribute("petma", petma);
		model.addAttribute("phperepx", phperepx);
		model.addAttribute("pjordaot", pjordaot);
		model.addAttribute("rafaelos", rafaelos);
		model.addAttribute("rafsanco", rafsanco);
		model.addAttribute("rodolfob", rodolfob );
		model.addAttribute("rrslima", rrslima);
		model.addAttribute("ssabrina", ssabrina);
		model.addAttribute("tdom", tdom);
		model.addAttribute("vilanopx", vilanopx);
		model.addAttribute("wellinlo", wellinlo);
		model.addAttribute("informacao", contInformacao);
		model.addAttribute("indevido", contIndevido);
		model.addAttribute("justificativa", contJustificativa);
		return "DashboardDesvio";
	}
}
