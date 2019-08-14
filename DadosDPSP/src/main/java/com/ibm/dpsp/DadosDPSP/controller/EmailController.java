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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmailController {

	@RequestMapping("/EnviarEmail")
	public void email(@RequestParam("id") String a, @RequestParam("bandeira") String b, @RequestParam("loja") String c, @RequestParam("inscEstadual") String d, 
			@RequestParam("cnpj") String e, @RequestParam("inauguracao")String f, @RequestParam("telefone1") String g, @RequestParam("telefone2") String h,
			@RequestParam("emailLoja") String i, @RequestParam("nomeGGL") String j, @RequestParam("telefoneGGL") String k, @RequestParam("fieldLocal") String l,
			@RequestParam("fieldMultifuncional") String m, @RequestParam("segASex") String n, @RequestParam("sab") String o, @RequestParam("dom") String p, 
			@RequestParam("obs") String q, HttpServletRequest request) {
		Properties props = new Properties();
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
	      		+ "\nVDLoja: " + a + 
	      		"\nBandeira: " + b + 
	      		"\nNome da Loja: " + c +
	      		"\nInscrição Estadual: " + d +
	      		"\nCNPJ: " + e +
	      		"\nInauguração: " + f +
	      		"\nTelefone 1: " + g +
	      		"\nTelefone 2: " + h +
	      		"\nEmail da Loja: " + i +
	      		"\nNome do GGL: " + j +
	      		"\nTelefone do GGL: " + k +
	      		"\nField Local: " + l +
	      		"\nField Impressora: " + m +
	      		"\nAtedimento de Seg a Sex: " + n + 
	      		"\nAtedimento de Sabado: " + o +
	    		"\nAtedimento de Domingo: " + p +
	    		"\nObservações: " + q + 
	    		"\nRequisição feita pelo analista: " + request.getUserPrincipal().getName());
	      /**Método para enviar a mensagem criada*/
	      Transport.send(message);
	 
	      System.out.println("Feito!!!");
	 
	     } catch (MessagingException e1) {
	        throw new RuntimeException(e1);
	    }
	}
}
