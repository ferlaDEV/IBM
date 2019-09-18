package com.ibm.dpsp.DadosDPSP.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import com.ibm.dpsp.DadosDPSP.model.entity.Desvio;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;


@Controller
public class DesvioController {
	
	@Autowired
	 private Database db;
	
	@RequestMapping("/BuscarData")
	public String buscarData(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, @RequestParam("data") String data) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			Desvio d;
			List<Desvio> allDesvios = null;
			List<Desvio> list = new ArrayList<Desvio>();
			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Desvio.class);
			
			for(int i=0; i< allDesvios.size(); i++) {
				d = allDesvios.get(i);
				if(d.getTipoDesvio() != null) {
					if(d.getDtAnalise().equals(data))
					list.add(d);
				}
			}
			model.addAttribute("list", list);
			return "ListarDesvio";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}else {
				return "Data";
			}
		}
	}	
	
	@RequestMapping("/BuscarDataDeAcordo")
	public String buscarDataDeAcordo(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, @RequestParam("data") String data) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			Desvio d;
			List<Desvio> allDesvios = null;
			List<Desvio> listPendentes = new ArrayList<Desvio>();
			List<Desvio> listNaoDeAcordo = new ArrayList<Desvio>();
			List<Desvio> listDeAcordo = new ArrayList<Desvio>();
			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Desvio.class);
			

			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Desvio.class);
						
			for(int i=0; i< allDesvios.size(); i++) {
				d = allDesvios.get(i);
				if(d.getTipoDesvio() != null) {
					if(d.getDtAnalise().equals(data)) {
						if(d.getDeAcordo() == null){
							listPendentes.add(d);
						}else {
							if(d.getDeAcordo().equals("Nao")) {
								listNaoDeAcordo.add(d);
							}else {
								listDeAcordo.add(d);
							}
						}
					}				
				}
			}
			model.addAttribute("listPendentes", listPendentes);
			model.addAttribute("listNaoDeAcordo", listNaoDeAcordo);
			model.addAttribute("listDeAcordo", listDeAcordo);
			return "ListarPendenciaReplica";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}else {
				return "Data";
			}
		}
	}
	
//	@RequestMapping("/BuscarDataDeAcordo")
//	public String buscarDataDeAcordo(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, @RequestParam("data") String data) throws IOException {
//		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
//		if(user.getAccess().equals("Lider")) {
//			Desvio d;
//			List<Desvio> allDesvios = null;
//			List<Desvio> listPendentes = new ArrayList<Desvio>();
//			List<Desvio> listNaoDeAcordo = new ArrayList<Desvio>();
//			List<Desvio> listDeAcordo = new ArrayList<Desvio>();
//			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
//	        .getDocsAs(Desvio.class);
//			
//
//			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
//	        .getDocsAs(Desvio.class);
//						
//			for(int i=0; i< allDesvios.size(); i++) {
//				d = allDesvios.get(i);
//				if(d.getTipoDesvio() != null) {
//					if(d.getDeAcordo() == null){
//						if(d.getDtAnalise().equals(data)) {
//							listPendentes.add(d);
//						}
//					}else {
//						if(d.getDeAcordo().equals("Nao")) {
//							listNaoDeAcordo.add(d);
//						}else {
//							listDeAcordo.add(d);
//						}
//					}					
//				}
//			}
//			model.addAttribute("listPendentes", listPendentes);
//			model.addAttribute("listNaoDeAcordo", listNaoDeAcordo);
//			model.addAttribute("listDeAcordo", listDeAcordo);
//			return "ListarPendenciaReplica";
//		}else {
//			if(user.getAccess().equals("ADM")) {
//				return "DataADM";
//			}else {
//				return "Data";
//			}
//		}
//	}
	
	
	@RequestMapping("/CadastrarDesvio")
	public String cadastrarDesvio(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id, @RequestParam("dtHoraAbertura") String dtHoraAbertura, 
			@RequestParam("prioridade") String prioridade, @RequestParam("dtHoraTratativa") String dtHoraTratativa, 
			@RequestParam("dtHoraDevolucao") String dtHoraDevolucao, @RequestParam("analistaDevolucao") String analistaDevolucao,
			@RequestParam("filaDevolucao") String filaDevolucao, @RequestParam("timeDesvio") String timeDesvio, 
			@RequestParam("tipoAnalise") String tipoAnalise, @RequestParam("dtDesvio") String dtDesvio, 
			@RequestParam("analistaDesvio") String analistaDesvio, @RequestParam("tipoDesvio") String tipoDesvio, 
			@RequestParam("filaAnalista") String filaAnalista, @RequestParam("justificativa") String justificativa, 
			@RequestParam("logon") String logon) {

		String mensagemSuccess = null;
		String mensagemError = null;
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			if(db.contains(_id)) {
				mensagemSuccess = "Desvio já está cadastrado!!";
			    mensagemError = null;;
			    model.addAttribute("mensagemError", mensagemSuccess);	
			    model.addAttribute("mensagemSuccess", mensagemError);	
				return "CadastroDesvio";
			}else {
				mensagemError = "Desvio do chamado "+ _id + " cadastrado com sucesso!!";
			    mensagemSuccess = null;
				Desvio newDesvio = new Desvio();
				Date data = new Date(System.currentTimeMillis()); 
				SimpleDateFormat formatarDate = new SimpleDateFormat("dd-MM-yyyy"); 
				newDesvio.set_id(_id);
				newDesvio.setDtHoraAbertura(dtHoraAbertura);
				newDesvio.setPrioridade(prioridade);
				newDesvio.setDtAnalise(formatarDate.format(data));
				newDesvio.setDtHoraTratativa(dtHoraTratativa);
				newDesvio.setDtHoraRetorna(dtHoraDevolucao);
				newDesvio.setAnalistaDevolucao(analistaDevolucao);
				newDesvio.setFilaDevolucao(filaDevolucao);
				newDesvio.setTimeDesvio(timeDesvio);
				newDesvio.setTipoAnalise(tipoAnalise);
				newDesvio.setDataDesvio(dtDesvio);
				newDesvio.setAnalistaDesvio(analistaDesvio);
				newDesvio.setTipoDesvio(tipoDesvio);
				newDesvio.setFilaAnalista(filaAnalista);
				newDesvio.setJustificativa(justificativa);
				newDesvio.setAnalistaAplicouDesvio(request.getUserPrincipal().getName());
				newDesvio.setLogon(logon);
				db.post(newDesvio);
			    model.addAttribute("mensagemSuccess", mensagemError);	
			    model.addAttribute("mensagemError", mensagemSuccess);	
				return "CadastroDesvio";
			}	
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}
			return "Data";
		}	
	}
	
	@RequestMapping("/ListarDesvio")
	public String listarDesvio(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			Desvio d;
			List<Desvio> allDesvios = null;
			List<Desvio> list = new ArrayList<Desvio>();
			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Desvio.class);
			
			for(int i=0; i< allDesvios.size(); i++) {
				d = allDesvios.get(i);
				if(d.getTipoDesvio() != null) {
					list.add(d);
				}
			}
			model.addAttribute("list", list);
			return "ListarDesvio";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}else {
				return "Data";
			}
		}
		
	}
	
	@RequestMapping("/ListarDesvioAnalista")
	public String listarDesvioAnalista(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Desvio d;
		int contaDesvio = 0;
		List<Desvio> allDesvios = null;
		List<Desvio> listPendente = new ArrayList<Desvio>();
		List<Desvio> listCompleta = new ArrayList<Desvio>();
		allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
        .getDocsAs(Desvio.class);
		
		for(int i=0; i< allDesvios.size(); i++) {
			d = allDesvios.get(i);
			if(d.getLogon() != null) {
				if(d.getLiberar() != null) {
					if(d.getLogon().equals(user.get_id())) {
						if(d.getDeAcordo() == null) {
							listPendente.add(d);
							contaDesvio ++;
						}else {
							listCompleta.add(d);
							contaDesvio ++;
						}
					}
				}
			}
		}
		model.addAttribute("listPendente", listPendente);
		model.addAttribute("listCompleta", listCompleta);
		model.addAttribute("contaDesvio", contaDesvio);
		
		if(user.getAccess().equals("Lider")) {
			return "ListarDesvioLideranca";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "ListarDesvioADM";
			}else {
				return "ListarDesvioAnalista";
			}
		}
	}
	
	@RequestMapping("/ExcluirDesvio")
	public String excluirDesvio(@RequestParam("id") String id, HttpServletRequest request, Model model, HttpSession session, HttpServletRequest response) throws IOException {
		String mensagemSuccess = null;
		String mensagemError = null;
	
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("ADM")) {
			return "DataADM";
			}else{
				if(user.getAccess().equals("Lider")) {
					if(db.contains(id)) {
					Data data = db.find(Data.class, id);
					db.remove(id, data.get_rev());
					mensagemSuccess = "Desvio do chamado " + id + " deletado com sucesso";
				    model.addAttribute("mensagemSuccess", mensagemSuccess);	
					return listarDesvio(model, session, response, request);
				}else {
					mensagemError = "Desvio do chamado " + id + " não está cadastrado!!!";
				    model.addAttribute("mensagemError", mensagemError);	
				    return listarDesvio(model, session, response, request);
				}
				
			}else {
				return "Data";
			}
		}
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/LiberarDesvio")
	public String LiberarDesvio(@RequestParam("sexta") String sexta, @RequestParam("sabado") String sabado, 
			@RequestParam("domingo") String domingo, @RequestParam("segunda") String segunda,
			@RequestParam("terca") String terca, @RequestParam("quarta") String quarta, Model model,
			@RequestParam("quinta") String quinta, HttpSession session, HttpServletRequest request, 
			HttpServletRequest response) throws IOException {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		
		if(user.getAccess().equals("Lider")) {
			String mensagemSuccess = null;
			String mensagemError = null;
			Date data = new Date(System.currentTimeMillis()); 
			SimpleDateFormat formatarDate = new SimpleDateFormat("dd-MM-yyyy"); 
			Desvio d;
			List<Desvio> allDesvios = null;
			List<Desvio> list = new ArrayList<Desvio>();
			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Desvio.class);
			
			for(int i=0; i< allDesvios.size(); i++) {
				d = allDesvios.get(i);
				if(d.getPrioridade() != null) {
					if(d.getDtAnalise().equals(sexta) ||  d.getDtAnalise().equals(sabado)
								||  d.getDtAnalise().equals(domingo) ||  d.getDtAnalise().equals(segunda)
								||  d.getDtAnalise().equals(terca) ||  d.getDtAnalise().equals(quarta)
								||  d.getDtAnalise().equals(quinta)) {
						if(d.getLiberar() == null) {
							d.set_id(d.get_id());
							d.set_rev(d.get_rev());
							d.setLiberar("Sim");
							d.setDtLiberacao(formatarDate.format(data));
							db.update(d);
							mensagemSuccess = "Desvios do dia " + sexta + " até " + quinta + " liberados com sucesso!! ";
							model.addAttribute("mensagemSuccess", mensagemSuccess);
							model.addAttribute("mensagemError", mensagemError);
							list.add(d);
						}else {
							mensagemError = "Desvios do dia " + sexta + " até " + quinta + " já  liberados para consulta dos analistas!! ";
							model.addAttribute("mensagemError", mensagemError);
							model.addAttribute("mensagemSuccess", mensagemSuccess);
							return "LiberacaoDeDesvio";
						}
					}
				}
			}
			
			model.addAttribute("list", list);
			
			return "LiberacaoDeDesvio";
		}else {
			if(user.getAccess().equals("ADM")){
				return "DataADM";
			}else {
				return "Data";
			}
		}
		
	}
	
	@RequestMapping(value="/VisualizarDesvio")
	public String visualizarDesvio(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id) {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		
		if(user.getAccess().equals("Lider")) {
			Desvio desvio = db.find(Desvio.class, _id);
			
			model.addAttribute("Desvio", desvio);
			
			return "VisualizarDesvioLideranca";
		}else {
			if(user.getAccess().equals("ADM")) {
				Desvio desvio = db.find(Desvio.class, _id);
				
				model.addAttribute("Desvio", desvio);
				
				return "VisualizarDesvioADM";
			}else {
				Desvio desvio = db.find(Desvio.class, _id);
				
				model.addAttribute("Desvio", desvio);
				
				return "VisualizarDesvio";
			}
		}
	}
	
	@RequestMapping(value="/VisualizarDeAcordo")
	public String visualizarDeAcordo(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id) {
		
		Desvio desvio = db.find(Desvio.class, _id);
		
		model.addAttribute("Desvio", desvio);
		
		return "VisualizarDesvio";
	}
	
	@RequestMapping(value="/DeAcordoDesvio", method = RequestMethod.GET)
	public String deAcordoDesvio(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id) {
		
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		
		if(user.getAccess().equals("Lider")) {
			Desvio desvio = db.find(Desvio.class, _id);
			
			model.addAttribute("Desvio", desvio);
			
			return "FeedbackLideranca";
		}else {
			if(user.getAccess().equals("ADM")) {
				Desvio desvio = db.find(Desvio.class, _id);
				
				model.addAttribute("Desvio", desvio);
				
				return "FeedbackADM";
			}else {
				Desvio desvio = db.find(Desvio.class, _id);
				
				model.addAttribute("Desvio", desvio);
				
				return "FeedbackAnalista";
			}
		}
		

	}
	
	
	
	@RequestMapping("/ListarDesvioNaoDeacordo")
	public String listarDesvioNaoDeAcordo(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			Desvio d;
			List<Desvio> allDesvios = null;
			List<Desvio> listNaoDeAcordo = new ArrayList<Desvio>();
			List<Desvio> listDeAcordo = new ArrayList<Desvio>();
			List<Desvio> listPendentes = new ArrayList<Desvio>();
			allDesvios = db.getAllDocsRequestBuilder().includeDocs(true).build().getResponse()
	        .getDocsAs(Desvio.class);
			
			for(int i=0; i< allDesvios.size(); i++) {
				d = allDesvios.get(i);
				if(d.getLogon() != null) {
						if(d.getDeAcordo() != null) {
							if(d.getDeAcordo().equals("Nao")) {
								listNaoDeAcordo.add(d);
							}else {
								listDeAcordo.add(d);
							}
						}else {
							listPendentes.add(d);
						}
				}
			}
			model.addAttribute("listNaoDeAcordo", listNaoDeAcordo);
			model.addAttribute("listDeAcordo", listDeAcordo);
			model.addAttribute("listPendentes", listPendentes);
			return "ListarPendenciaReplica";
		}else {
			if(user.getAccess().equals("ADM")) {
				return "DataADM";
			}else {
				return "Data";
			}
		}

	}
	
	@RequestMapping(value="/Feedback", method = RequestMethod.GET)
	public String feedback(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request, 
			@RequestParam("_id") String _id, @RequestParam("deAcordo") String deAcordo, @RequestParam("comentario") String comentario) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		Desvio desvio = db.find(Desvio.class, _id);
		
		int contaDesvio = (int) session.getAttribute("contaDesvio");
		
		System.out.println(contaDesvio);
		
		String mensagemSuccess = null;
		String mensagemError = null;
		
		if(desvio.getDeAcordo() == null) {
			desvio.set_id(desvio.get_id());
			desvio.set_rev(desvio.get_rev());
			desvio.setComentario(comentario);
			desvio.setDeAcordo(deAcordo);
			contaDesvio --;
			db.update(desvio);
			if(user.getAccess().equals("Lider")) {
				mensagemSuccess = "Feedback enviado com sucesso!";
				model.addAttribute("mensagemSuccess", mensagemSuccess);
				model.addAttribute("mensagemError", mensagemError);
				session.setAttribute("contaDesvio", contaDesvio);
				return listarDesvioAnalista(model, session, response, request);
			}else {
				if(user.getAccess().equals("ADM")) {
					mensagemSuccess = "Feedback enviado com sucesso!";
					model.addAttribute("mensagemSuccess", mensagemSuccess);
					model.addAttribute("mensagemError", mensagemError);
					session.setAttribute("contaDesvio", contaDesvio);
					return listarDesvioAnalista(model, session, response, request);
				}else {
					mensagemSuccess = "Feedback enviado com sucesso!";
					model.addAttribute("mensagemSuccess", mensagemSuccess);
					model.addAttribute("mensagemError", mensagemError);
					session.setAttribute("contaDesvio", contaDesvio);
					return listarDesvioAnalista(model, session, response, request);
				}
			}
		}else {
			if(user.getAccess().equals("Lider")) {
				mensagemSuccess = "Feedback já foi encaminhado";
				model.addAttribute("mensagemSuccess", mensagemSuccess);
				model.addAttribute("mensagemError", mensagemError);
				return listarDesvioAnalista(model, session, response, request);
			}else {
				if(user.getAccess().equals("ADM")) {
					mensagemError = "Feedback já foi encaminhado";
					model.addAttribute("mensagemSuccess", mensagemSuccess);
					model.addAttribute("mensagemError", mensagemError);
					return listarDesvioAnalista(model, session, response, request);
				}else {
					mensagemError = "Feedback já foi encaminhado";
					model.addAttribute("mensagemSuccess", mensagemSuccess);
					model.addAttribute("mensagemError", mensagemError);
					return listarDesvioAnalista(model, session, response, request);
				}
			}
		}
	}
	
	@RequestMapping(value="/CancelarFeedback", method = RequestMethod.GET)
	public String cancelarFeedback(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			return listarDesvioAnalista(model, session, response, request);
		}else {
			if(user.getAccess().equals("ADM")) {
				return listarDesvioAnalista(model, session, response, request);
			}else {
				return listarDesvioAnalista(model, session, response, request);
			}
		}
	}
	
	@RequestMapping(value="/VoltarVisualizar")
	public String voltarVisualizar(Model model, HttpSession session, HttpServletRequest response, HttpServletRequest request) throws IOException {
		Usuario user = db.find(Usuario.class, request.getUserPrincipal().getName());
		if(user.getAccess().equals("Lider")) {
			return listarDesvioNaoDeAcordo(model, session, response, request);
		}else {
			if(user.getAccess().equals("ADM")) {
				return listarDesvioAnalista(model, session, response, request);
			}else {
				return listarDesvioAnalista(model, session, response, request);
			}
		}
	}
}
