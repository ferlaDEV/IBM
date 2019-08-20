package com.ibm.dpsp.DadosDPSP.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Data;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;


@Controller
public class UserController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping("/CadastrarAnalista")
	public String cadastrarAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id, @RequestParam("fullName") String fullName, @RequestParam("access") String access) {
			
		System.out.println("chamou");
		
		String mensagemSuccess = null;
		String mensagemError = null;
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			if(db.contains(_id)) {
				mensagemSuccess = "Analista já está cadastrado!!";
			    mensagemError = null;;
			    model.addAttribute("mensagemError", mensagemSuccess);	
			    model.addAttribute("mensagemSuccess", mensagemError);	
				return "CadastroAnalista";
			}else {
				mensagemError = "Analista "+ _id + " cadastrado com sucesso!!";
			    mensagemSuccess = null;
				Usuario newUser = new Usuario();
				newUser.set_id(_id);
				newUser.setFullName(fullName);
				newUser.setAccess(access);
				newUser.setPass(new BCryptPasswordEncoder().encode("teamDPSP"));
				db.post(newUser);
			    model.addAttribute("mensagemSuccess", mensagemError);	
			    model.addAttribute("mensagemError", mensagemSuccess);	
				return "CadastroAnalista";
			}	
		}else {
			return "Data";
		}	
	}
	
	@RequestMapping("/AlterarAnalista")
	public String alterarAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id, @RequestParam("fullName") String fullName, @RequestParam("access") String access) {
			
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			Usuario usuario = db.find(Usuario.class, _id);
			
			usuario.setFullName(fullName);
			usuario.setAccess(access);
			usuario.set_rev(usuario.get_rev());
			db.update(usuario);
			
			
				String mensagemSuccess = "Analista Alterado com sucesso!!";
			    model.addAttribute("mensagemSuccess", mensagemSuccess);	
				return "CadastroAnalista";	
		}else {
			return "Data";
		}	
	}
	
	@RequestMapping("/ExcluirAnalista")
	public String excluirAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("id") String _id) throws IOException {
					
		Usuario usuario = db.find(Usuario.class, _id);
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
				db.remove(_id, usuario.get_rev());
				String mensagemSuccess = "Analista deletado com sucesso";
				Usuario u;
				List<Usuario> allAnalistas = null;
				List<Usuario> list = new ArrayList<Usuario>();
				allAnalistas = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
		        .getDocsAs(Usuario.class);
				
				for(int i=0; i< allAnalistas.size(); i++) {
					u = allAnalistas.get(i);
					if(u.getFullName() != null) {
						list.add(u);
					}
				}
				model.addAttribute("list", list);
			    model.addAttribute("mensagemSuccess", mensagemSuccess);
				return "ListarAnalista";
		}else {
			return "Data";
		}	
	}
	
	
}
