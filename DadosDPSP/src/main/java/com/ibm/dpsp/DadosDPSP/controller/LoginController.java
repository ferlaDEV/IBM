package com.ibm.dpsp.DadosDPSP.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;

import kong.unirest.HttpResponse;
import kong.unirest.Unirest;

@Controller
public class LoginController{
	
	
	@RequestMapping(value="/Post", method = RequestMethod.POST)
	public void autenticadoar() {
	}


	@RequestMapping(value="/AuthW3", method = RequestMethod.GET)
	public String login(HttpServletRequest request,
            HttpServletResponse response, HttpSession session, @RequestParam("code") String code) {
		
//		HttpResponse<String> httpResponse = Unirest.post("https://5f79b33f-41aa-4c0b-8638-054c46439673:MzAxZTE1ZmMtZGYxMS00YTFmLThjN2YtMzUyOTY4YWY1MWYx@us-south.appid.cloud.ibm.com/oauth/v4/9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68/token")
//				  .header("Content-Type", "application/x-www-form-urlencoded")
//				  .body("username=5f79b33f-41aa-4c0b-8638-054c46439673&password=MzAxZTE1ZmMtZGYxMS00YTFmLThjN2YtMzUyOTY4YWY1MWYx&grant_type=authorization_code&redirect_uri=https://dpspteam.mybluemix.net/AuthW3&code="+code)
//				  .asString();
//	
//			JSONObject authW3 = new JSONObject(httpResponse.getBody());
//		
//			HttpResponse<String> res = Unirest.post("https://us-south.appid.cloud.ibm.com/oauth/v4/9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68/userinfo")
//				  .header("acept", "application/json")
//				  .header("Authorization", "Bearer "+authW3.getString("access_token"))
//				  .body("tenantId=9dd7f7b2-dfd9-4d56-b3a7-e8e27a594a68&Authorization=Bearer " + authW3.getString("access_token"))
//				  .asString();
		
		HttpResponse<String> httpResponse = Unirest.post("https://9582ffdf-1331-4e2b-907f-c381883d8e35:ZDIwZDU3MDktODM2Mi00MmNjLTljMzAtNjNkNzE3ODc3MTlh@us-south.appid.cloud.ibm.com/oauth/v4/afd561bf-ab79-4867-a98b-511e2e5ad41d/token")
				  .header("Content-Type", "application/x-www-form-urlencoded")
				  .body("username=9582ffdf-1331-4e2b-907f-c381883d8e35&password=ZDIwZDU3MDktODM2Mi00MmNjLTljMzAtNjNkNzE3ODc3MTlh&grant_type=authorization_code&redirect_uri=https://dpspteam.mybluemix.net/AuthW3&code="+code)
				  .asString();
	
			JSONObject authW3 = new JSONObject(httpResponse.getBody());
		
			HttpResponse<String> res = Unirest.post("https://us-south.appid.cloud.ibm.com/oauth/v4/afd561bf-ab79-4867-a98b-511e2e5ad41d/userinfo")
				  .header("acept", "application/json")
				  .header("Authorization", "Bearer "+authW3.getString("access_token"))
				  .body("tenantId=afd561bf-ab79-4867-a98b-511e2e5ad41d&Authorization=Bearer " + authW3.getString("access_token"))
				  .asString();
			
			
			JSONObject userW3 = new JSONObject(res.getBody());
			
			String id = userW3.getString("email");
	        String [] as = id.split("@");
			
			Usuario user = new Usuario();
			user.set_id(as[0]);
			user.setPass("teamDPSP");
			
			request.setAttribute("user", user);
			
			return "Login";	
	}
}