package com.ibm.dpsp.DadosDPSP.controller;


import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.ws.rs.QueryParam;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;

import kong.unirest.HttpResponse;
import kong.unirest.Unirest;



@Controller
public class LoginController {
	
	private HttpSession sessao;
	@Autowired
	 private Database db;
	
	
//	@RequestMapping(value="/Entrar", method = RequestMethod.GET)
//    public String autenticador(@RequestParam("user") String user, @RequestParam("password") String password) throws IOException{
//		
//		
//		Usuario usuario = db.find(Usuario.class, user);
//		
//		if(usuario != null) {
//			return "Dados";
//		}else {
//			return "Login";
//		}
	
	@RequestMapping(value="/Entrar", method = RequestMethod.GET)
	public String autenticador(@QueryParam("code") String code) throws IOException{
		
		
//		Usuario usuario = db.find(Usuario.class, user);
//		
//		if(usuario != null) {
//			return "Dados";
//		}else {
//			return "Login";
//		}
		
		HttpResponse<String> httpResponse = Unirest.post("https://5f79b33f-41aa-4c0b-8638-054c46439673:MzAxZTE1ZmMtZGYxMS00YTFmLThjN2YtMzUyOTY4YWY1MWYx@us-south.appid.cloud.ibm.com/oauth/v4/9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68/token")
  			  .header("Content-Type", "application/x-www-form-urlencoded")
  			  .body("username=5f79b33f-41aa-4c0b-8638-054c46439673&password=MzAxZTE1ZmMtZGYxMS00YTFmLThjN2YtMzUyOTY4YWY1MWYx&grant_type=authorization_code&redirect_uri=https://dpspteam.mybluemix.net/Entrar&code="+code)
  			  .asString();

		JSONObject json = new JSONObject(httpResponse.getBody());
  	
		HttpResponse<String> res = Unirest.post("https://us-south.appid.cloud.ibm.com/oauth/v4/9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68/userinfo")
			  .header("acept", "application/json")
			  .header("Authorization", "Bearer "+json.getString("access_token"))
			  .body("tenantId=9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68&Authorization=Bearer " + json.getString("access_token"))
			  .asString();
		
		
		JSONObject json2 = new JSONObject(res.getBody());
			
		Usuario usuario = db.find(Usuario.class, json2.getString("email"));

		if(usuario != null) {
			sessao.setAttribute("user", usuario.getLogin());
			sessao.setAttribute("password", usuario.getSenha());
			return "Dados";
		}else {
			return "Login";
		}	
	}
}