package com.apiroles.model;
import java.util.Set;

import javax.persistence.*;


@Entity
public class Rol {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", nullable=true)
	private int id;
	@Column(name="descripcion", nullable=false)
	private String descripcion;
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="Asig_acceso", joinColumns=@JoinColumn(name="rol_id"), inverseJoinColumns=@JoinColumn(name="menu_id"))
	private Set<Menu> menus;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Set<Menu> getMenus() {
		return menus;
	}

	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}
	
	
	
}
