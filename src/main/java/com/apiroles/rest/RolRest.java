package com.apiroles.rest;

//import java.util.ArrayList;
//import java.util.List;
//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.apiroles.dao.RolDAO;
//import com.apiroles.model.Menu;
import com.apiroles.model.Rol;
//import com.apiroles.model.Rol;
import com.google.gson.Gson;

@SpringBootApplication
@RestController
@RequestMapping("rol")
@CrossOrigin(origins="*")
public class RolRest {
	
	@Autowired
	private RolDAO roldao;
	
	@GetMapping("/get")
	public String Get(){
		return new Gson().toJson(roldao.findAll());
	}
	
	@GetMapping("/get/{id}")
	public String GetId(@PathVariable("id") int id){
		return new Gson().toJson(roldao.findById(id));
	} 
	
	@PostMapping("/add")
	public void Add(@RequestBody Rol rol) {
		roldao.save(rol);
	}

}
