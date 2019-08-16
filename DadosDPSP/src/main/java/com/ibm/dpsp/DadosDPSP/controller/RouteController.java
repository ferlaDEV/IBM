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
import com.ibm.dpsp.DadosDPSP.model.entity.Data;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;


@Controller
public class RouteController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public String login() {
		return "Login";
	}
	
	@RequestMapping(value="/Logout", method = RequestMethod.GET)
	public String logout() {
		return "/logout";
	}
	
	@RequestMapping(value="/LoginW3", method = RequestMethod.GET)
	public String loginW3() {
		return "LoginW3";
	}
	
	@RequestMapping(value="/EncaminharEmail")
	public String encaminharEmail() {
		return "EncaminharEmail";
	}
	
	@RequestMapping("/")
	public String index(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Data data = new Data();
		if(user.getAccess().equals("ADM")) {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "DataADM";
		}else {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "Data";
		}
	}
	
	@RequestMapping("/Data")
	public String data(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Data data = new Data();
		if(user.getAccess().equals("ADM")) {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "DataADM";
		}else {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "Data";
		}
	}
	
	@RequestMapping("/DataADM")
	public String dataADM(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Data data = new Data();
		if(user.getAccess().equals("ADM")) {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "DataADM";
		}else {
			data.setImg("/img/dpsp.jpg");
			model.addAttribute("data", data);
			return "Data";
		}
	}
	
	@RequestMapping("/Email")
	public String email() {
		return "EncaminharEmail";
	}
	
	@RequestMapping("/Dashboard")
	public String adm(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException{
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			List<Data> allLojas = null;
			
			int DSP = 0;
			int AL = 0;
			int BA = 0;
			int DF = 0;
			int GO = 0;
			int MGSP = 0;
			int PE = 0;
			int RJSP = 0;
			int SP = 0;
			int DP = 0;
			int ES = 0;
			int PR = 0;
			int RJ = 0;
			int MG = 0;
			int analista = 0;
			Data as;

	        allLojas = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Data.class);
	        
	        
	        for(int i=0; i< allLojas.size(); i++) {
	        	as = allLojas.get(i);
	        	if(as.getBandeira() != null) {
	            	if(as.getBandeira().equals("DSP")) {
	            		DSP ++;
	            		if(as.getUf().equals("SP")) {
	            			SP ++;
	            		}else {
	            			if(as.getUf().equals("AL")) {
	            				AL ++;
	            			}else if(as.getUf().equals("BA")) {
	            				BA ++;
	            			}else if(as.getUf().equals("DF")) {
	            				DF ++;
	            			}else if(as.getUf().equals("GO")) {
	            				GO ++;
	            			}else if(as.getUf().equals("MG")) {
	            				MGSP ++;
	            			}else if(as.getUf().equals("PE")) {
	            				PE ++;
	            			}else if(as.getUf().equals("RJ")) {
	            				RJSP ++;
	            			}
	            		}
	            	}else {
	            		if(as.getBandeira().equals("DP")) {
	                		DP ++;
	                		if(as.getUf().equals("RJ")) {
	                			RJ ++;
	                		}else {
	                			if(as.getUf().equals("ES")) {
	                				ES ++;
	                			}else if(as.getUf().equals("MG")) {
	                				MG ++;
	                			}else if(as.getUf().equals("PR")) {
	                				PR ++ ;
	                			}
	                		}
	            		}
	            	}
	        	}else {
	        		analista ++;
	        	}
	        }
	        
	        
	        System.out.println("Lojas DSP: " + DSP);
	        System.out.println("Lojas DP: " + DP);
	        System.out.println("Analistas: " + analista);
	        System.out.println("Lojas DSP em SP: " + SP);
	        System.out.println("Lojas DSP em AL: " + AL);
	        System.out.println("Lojas DSP em BA: " + BA);
	        System.out.println("Lojas DSP em DF: " + DF);
	        System.out.println("Lojas DSP em GO: " + GO);
	        System.out.println("Lojas DSP em MG: " + MGSP);
	        System.out.println("Lojas DSP em PE: " + PE);
	        System.out.println("Lojas DSP em RJ: " + RJSP);
	        System.out.println("Lojas DP em RJ: " + RJ);
	        System.out.println("Lojas DP em ES: " + ES);
	        System.out.println("Lojas DP em MG: " + MG);
	        System.out.println("Lojas DP em PR: " + PR);
	        model.addAttribute("lojasDSP", DSP);
	        model.addAttribute("lojasDP", DP);
	        model.addAttribute("es", ES);
	        model.addAttribute("mgDP", MG);
	        model.addAttribute("pr", PR);
	        model.addAttribute("rjDP", RJ);
			return "Dashboard";
		}else {
			return "Data";
		}
	}	
	
	@RequestMapping("/AtualizaLoja")
	public String atualizaLoja(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "AtualizaLoja";
		}else {
			return "Data";
		}
	}
	
	@RequestMapping("/CadastroLoja")
	public String cadastroLoja(HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "CadastroLoja";
		}else {
			return "Data";
		}
	}
	
	@RequestMapping("/CadastroAnalista")
	public String cadastroAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "CadastroAnalista";
		}else {
			return "Data";
		}
	}
}
