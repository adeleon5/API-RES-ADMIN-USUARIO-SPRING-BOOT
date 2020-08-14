package com.apiroles.rest;

//import java.util.List;
//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.apiroles.dao.MenuDAO;
import com.apiroles.model.Menu;
import com.google.gson.Gson;

@SpringBootApplication
@RestController
@RequestMapping("/menu")
@CrossOrigin(origins="*")
public class MenuRest {
	
	@Autowired
	private MenuDAO menudao;
	
	@GetMapping("/get")
	public String Get(){
		return new Gson().toJson(menudao.findAll());
	}
	
	@GetMapping("/get/{id}")
	public String GetId(@PathVariable("id") int id){
		return new Gson().toJson(menudao.findById(id));
	} 
	
	@PostMapping("/add")
	public void Add(@RequestBody Menu menu) {
		menudao.save(menu);
	}
	
	@DeleteMapping("/delete/{id}")
	public void Delete(@PathVariable("id") int id) {
		menudao.deleteById(id);
	}
	
	@PutMapping("/update")
	public void Update(@RequestBody Menu menu) {
		menudao.save(menu);
	}
}
