package com.springboot.reactAstronauts.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.reactAstronauts.exception.ResourceNotFoundException;
import com.springboot.reactAstronauts.model.Astronaut;
import com.springboot.reactAstronauts.repository.AstronautRepository;

//remember not to use '/' in the end to work this api with the vue project
//@CrossOrigin(origins = "http://localhost:8080")
@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class AstronautController {
	@Autowired
	private AstronautRepository astronautRepository;
	 
	@GetMapping("/astronauts")
	public List<Astronaut> getAllAstronauts(){
		return astronautRepository.findAll();
	}
	
	@GetMapping("/astronauts/{id}")
	public Optional<Astronaut> one(@PathVariable Long id) {
		return astronautRepository.findById(id);
	}
	 
	
}
