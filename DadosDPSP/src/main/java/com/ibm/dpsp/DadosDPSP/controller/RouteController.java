package com.ibm.dpsp.DadosDPSP.controller;

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
		if(user.getAccess().equals("ADM")) {
			return "DataADM";
		}else {
			return "Data";
		}
	}
	
	@RequestMapping("/Data")
	public String data(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "DataADM";
		}else {
			return "Data";
		}
	}
	
	@RequestMapping("/DataADM")
	public String dataADM(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "DataADM";
		}else {
			return "Data";
		}
	}
	
	@RequestMapping("/Email")
	public String email() {
		return "EncaminharEmail";
	}
	
	@RequestMapping("/Dashboard")
	public String adm(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request){
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
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
