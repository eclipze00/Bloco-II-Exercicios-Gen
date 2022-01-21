package com.atividade1.ment_hab.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ment_hab")

public class Atividade_1Controller {
	
	
	@GetMapping
	public String ment_hab () {
		return "Mentalidade Persistência - Habilidade Atenção aos Detalhes";
	}

}
