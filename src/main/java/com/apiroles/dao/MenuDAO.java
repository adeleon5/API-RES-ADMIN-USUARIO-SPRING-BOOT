package com.apiroles.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.apiroles.model.Menu;

public interface MenuDAO extends JpaRepository<Menu, Integer> {

}
