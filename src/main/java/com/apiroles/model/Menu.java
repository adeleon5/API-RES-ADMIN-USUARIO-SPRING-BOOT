package com.apiroles.model;

import javax.persistence.*;

@Entity
public class Menu {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", nullable=true)
	private int id;
	@Column(name="descripcion", nullable=false)
	private String descripcion;
	@Column(name="ruta", nullable=false)
	private String ruta;
	@Column(name="icono", nullable=false)
	private String icono;
	@Column(name="raiz", nullable=false)
	private int raiz;
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
	public String getRuta() {
		return ruta;
	}
	public void setRuta(String ruta) {
		this.ruta = ruta;
	}
	public String getIcono() {
		return icono;
	}
	public void setIcono(String icono) {
		this.icono = icono;
	}
	public int getRaiz() {
		return raiz;
	}
	public void setRaiz(int raiz) {
		this.raiz = raiz;
	}
	

	
	
}
