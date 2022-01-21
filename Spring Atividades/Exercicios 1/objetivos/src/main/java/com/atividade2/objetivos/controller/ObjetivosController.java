package com.atividade2.objetivos.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping ("/objetivos")

public class ObjetivosController {
	
	@GetMapping
	public String objetivos () {
		return "Aprofundar meus conhecimentos em DB para conseguir estruturar o Projeto Integrador corretamente." + 
			   "E iniciar os estudos em Spring Boot. ";
	}

}
