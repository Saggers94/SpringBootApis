package com.springboot.reactAstronauts.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.reactAstronauts.model.Astronaut;

@Repository
public interface AstronautRepository extends JpaRepository<Astronaut, Long>{

}
