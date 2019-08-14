package com.ibm.dpsp.DadosDPSP.repository;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import com.cloudant.client.api.Database;
import com.ibm.dpsp.DadosDPSP.model.entity.Usuario;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	 private Database db;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    		
		try {
			Usuario user = db.find(Usuario.class, username);
			return user;
		}catch(Exception e) {
			e.printStackTrace();
			throw new BadCredentialsException(String.format("Usuário não possui acesso ao sistema, favor contatar a liderança de DPSP para solicitar o acesso!!"));
		}
    }
}
