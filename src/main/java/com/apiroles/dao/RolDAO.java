package com.apiroles.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.apiroles.model.Rol;

public interface RolDAO extends JpaRepository<Rol, Integer> {

}
