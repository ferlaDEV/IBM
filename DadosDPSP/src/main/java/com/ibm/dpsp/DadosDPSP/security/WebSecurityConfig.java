package com.ibm.dpsp.DadosDPSP.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Override
	public void configure(HttpSecurity http) throws Exception{
		http.csrf().disable().authorizeRequests()
		.antMatchers(HttpMethod.GET, "/Login").permitAll()
		.antMatchers(HttpMethod.GET, "/Entrar").permitAll()
//		.ANTMATCHERS(HTTPMETHOD.GET, "/DADOS").PERMITALL()
//		.ANTMATCHERS(HTTPMETHOD.GET, "/BUSCAR").PERMITALL()
		.anyRequest().authenticated()
		.and().formLogin().loginPage("/Login").permitAll()
		.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception{
		auth.inMemoryAuthentication()
		.withUser("ferlapx@br.ibm.com").password("9720").roles("ADMIN");
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception{
		web.ignoring().antMatchers("/css/**" , "/js/**", "/bootstrap/**", "/img/*");
	}

}
