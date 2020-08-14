package com.apiroles.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.apiroles.model.Usuario;

public interface UsuarioDAO extends JpaRepository<Usuario, Integer> {
	

}
