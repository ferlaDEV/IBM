package com.ibm.dpsp.DadosDPSP.security;

import javax.ws.rs.HttpMethod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.ibm.dpsp.DadosDPSP.repository.UserDAO;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
    private UserDAO userDAO;
	

	@Override
	public void configure(HttpSecurity http) throws Exception{
		http.headers().frameOptions().disable();
		http.csrf().disable().authorizeRequests()
		.antMatchers(HttpMethod.GET, "/LoginW3").permitAll()
		.antMatchers(HttpMethod.GET, "/AuthW3").permitAll()
		.antMatchers(HttpMethod.POST, "/Post").permitAll()
		.antMatchers(HttpMethod.GET, "/Login").permitAll()
//		.antMatchers(HttpMethod.GET, "/CadastroAnalista").permitAll()
//		.antMatchers(HttpMethod.GET, "/CadastroLoja").permitAll()
//		.antMatchers(HttpMethod.POST, "/CadastrarAnalista").permitAll()
//		.antMatchers(HttpMethod.POST, "/BuscarId").permitAll()
		.anyRequest().authenticated().and().formLogin().
		loginPage("/LoginW3").loginProcessingUrl("/Post").failureUrl("/access_denied").isCustomLoginPage();
	}

	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		auth.userDetailsService(userDAO)
		.passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception{
		web.ignoring().antMatchers("/css/**" , "/js/**", "/bootstrap/**", "/img/*");
	}

}
