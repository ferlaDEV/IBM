package com.ibm.dpsp.DadosDPSP.controller;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {

	@RequestMapping("/EnviarEmail")
	public String email(@RequestParam("id") String vdLoja, @RequestParam("bandeira") String bandeira, @RequestParam("loja") String loja, 
			@RequestParam("inscEstadual") String inscEstadual,  @RequestParam("cnpj") String cnpj, @RequestParam("inauguracao")String inauguracao, 
			@RequestParam("telefone1") String telefone1, @RequestParam("telefone2") String telefone2, @RequestParam("emailLoja") String emailLoja, 
			@RequestParam("nomeGGL") String nomeGGL, @RequestParam("telefoneGGL") String telefoneGGL, @RequestParam("fieldLocal") String fieldLocal,
			@RequestParam("fieldMultifuncional") String fieldMultifuncional, @RequestParam("segASex") String segASex, @RequestParam("sab") String sab, 
			@RequestParam("dom") String dom, @RequestParam("obs") String obs, @RequestParam("endereco") String endereco, @RequestParam("bairro") String bairro, 
			@RequestParam("cidade") String cidade, @RequestParam("uf") String uf, @RequestParam("cep") String cep, HttpServletRequest request, Model model) {
		Properties props = new Properties();
		String mensagemSuccess = null;
	    /** Parâmetros de conexão com servidor Gmail */
	    props.put ("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.debug", "true");
	    props.put("mail.smtp.debug", "true");
	    props.put("mail.mime.charset", "ISO-8859-1");
	    props.put("mail.smtp.port", "465");
	    props.put ("mail.smtp.starttls.enable", "true");
	    props.put ("mail.smtp.socketFactory.port", "465");
	    props.put ("mail.smtp.socketFactory.fallback", "false");
	    props.put ("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	 
	    Session session = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	           protected PasswordAuthentication getPasswordAuthentication() 
	           {
	                 String user = "sd.dpspteam@gmail.com";
					String pass = "009720@tHena";
					return new PasswordAuthentication(user, pass);
	           }
	      });
	 
	    /** Ativa Debug para sessão */
	    session.setDebug(true);
	 
	    try {
	 
	    	//Remetente
	      Message message = new MimeMessage(session);
	      message.setFrom(new InternetAddress("sd.dpspteam@gmail.com")); 
	      
	 
	    //Destinatário(s)
	      Address[] toUser = InternetAddress 
	                 .parse("ferlapx@br.ibm.com, sd.dpspteam@gmail.com,");  
	 
	      message.setRecipients(Message.RecipientType.TO, toUser);
	      message.setSubject("Dados para cadastro de loja");//Assunto
	      message.setText("Senhores favor cadastrar a loja abaixo:"
	      		+ "\nVDLoja: " + vdLoja + 
	      		"\nBandeira: " + bandeira + 
	      		"\nNome da Loja: " + loja +
	      		"\nInscrição Estadual: " + inscEstadual +
	      		"\nCNPJ: " + cnpj +
	      		"\nInauguração: " + inauguracao +
	      		"\nEndereco: " + endereco +
	    		"\nBairro: " + bairro +
	    		"\nCidade: " + cidade +
	    		"\nUF: " + uf +
	    		"\nCEP: " + cep +
	      		"\nTelefone 1: " + telefone1 +
	      		"\nTelefone 2: " + telefone2 +
	      		"\nEmail da Loja: " + loja +
	      		"\nNome do GGL: " + nomeGGL +
	      		"\nTelefone do GGL: " + telefoneGGL +
	      		"\nField Local: " + fieldLocal +
	      		"\nField Impressora: " + fieldMultifuncional +
	      		"\nAtedimento de Seg a Sex: " + segASex + 
	      		"\nAtedimento de Sabado: " + sab +
	    		"\nAtedimento de Domingo: " + dom +
	    		"\nObservações: " + obs +
	    		"\nRequisição feita pelo analista: " + request.getUserPrincipal().getName());
	      /**Método para enviar a mensagem criada*/
	      Transport.send(message);
	 
	      System.out.println("Feito!!!");
	      mensagemSuccess = "Email para cadastro da loja "+ vdLoja +  " encaminhado com sucesso!!";
	      model.addAttribute("mensagemSuccess", mensagemSuccess);
	      
	      return "EncaminharEmail";
	 
	     } catch (MessagingException e1) {
	        throw new RuntimeException(e1);
	    }
	}
}
