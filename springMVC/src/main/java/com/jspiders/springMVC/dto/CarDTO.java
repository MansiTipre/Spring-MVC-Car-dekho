package com.jspiders.springMVC.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="carMVC")
public class CarDTO {

//	@Id
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	private int id;
//	@Column(nullable = false)
//	private String name;
//	@Column(nullable = false)
//	private String brand;
//	@Column(nullable = false)
//	private double price;
//	
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String brand;
	@Column(nullable = false)
	private double price;
	
}
