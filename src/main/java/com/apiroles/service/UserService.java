package com.apiroles.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.apiroles.dao.UsuarioDAO;
import com.apiroles.model.Usuario;


@Service
public class UserService implements UserDetailsService {
	
	@Autowired
	private UsuarioDAO repo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserDetails userDet = null;
		String correo = "";
		String clave = "";
		
		List<Usuario> us = repo.findAll();
		for(Usuario lt : us) {
			correo = lt.getCorreo();
			if(correo.equals(username)) {
				List<GrantedAuthority> roles = new ArrayList<>();
				roles.add(new SimpleGrantedAuthority("ADMIN"));
				clave=lt.getClave();
				return userDet = new User(correo,clave, roles);
			}
		}
		return userDet;
	}

}
