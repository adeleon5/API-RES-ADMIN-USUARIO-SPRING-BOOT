package com.apiroles.rest;
import java.util.ArrayList;
//import java.util.ArrayList;
import java.util.List;
//import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.apiroles.dao.UsuarioDAO;
import com.apiroles.model.Usuario;
import com.google.gson.Gson;


@SpringBootApplication
@RestController
@RequestMapping("usuario")
@CrossOrigin(origins="*")
public class UsurioRest {
	
	@Autowired
	private UsuarioDAO usuariodao;
	
	//@Autowired
	//private BCryptPasswordEncoder encoder;
	
	/////////////////////////////////////////////////////////////////////////////////
	
	@GetMapping("")
	public String Get(){
		return new Gson().toJson(usuariodao.findAll());
	}
	
	@GetMapping("/login")
	public boolean Login(){
		return true;
	}
	
	@GetMapping("/get")
	public String GetId(@RequestParam(value="correo") String correo){		
		List<Usuario> us = usuariodao.findAll();
		List<Usuario> lst = new ArrayList<Usuario>();
		String Ucorreo="";
		
		for(Usuario lt : us) {
			Ucorreo = lt.getCorreo();
			if(Ucorreo.equals(correo)) {
				lst.add(lt);
			}
		}
		String json = new Gson().toJson(lst);
		return json;
	} 
	
	@PostMapping("/add")
	public void Add(@RequestBody Usuario usuario) {
		//System.out.println("PostAdd " + usuario.toString());
		//String clave=usuario.getClave();
		//usuario.setClave(encoder.encode(clave));
		usuariodao.save(usuario);
	}
	
}
