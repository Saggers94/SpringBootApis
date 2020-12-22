package com.springboot.reactAstronauts.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;



@Entity
@Table(name = "astronauts")
public class Astronaut {

	//id bigint(20) UN AI PK 
	//name varchar(255) 
	//image varchar(255) 
	//slug varchar(255) 
	//personal_data text 
	//description longtext 
	//service enum('serving','retired') 
	//days_spent_in_space int(11) 
	//category_id bigint(20) UN 
	//created_at timestamp 
	//updated_at timestamp
	
//	astronaut_id bigint(20) AI PK 
//	created datetime 
//	days_spent_in_space int(11) 
//	description longtext 
//	image varchar(255) 
//	name varchar(255) 
//	personal_data text 
//	service varchar(255) 
//	slug varchar(255) 
//	updated datetime 
//	category_id bigint(20)
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long astronaut_id;
	
	@Column(name = "astronaut_name")
	private String name;
	
	@Column(name = "astronaut_image")
	private String image;
	
	@Column(name = "astronaut_slug")
	private String slug;
	
	@Column(name="personal_data",length=65535, columnDefinition="text")
	private String personal_data;
	
	@Column(name="description",length=2147483647, columnDefinition="longtext")
	private String description;
	
	@Column(name="astronaut_service")
	@Enumerated(EnumType.STRING)
	private ServiceEnum service;
	
	@Column(name="days_spent_in_space")
	private int days_spent_in_space;
	
	@ManyToOne
	@JoinColumn(name="category_id")
	private Category category;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="created",nullable=false)
	private Date created;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updated",nullable=false)
	private Date updated;	
	
	@PrePersist
	protected void onCreate() {
		updated = created = new Date();
	}
	
	@PreUpdate
	protected void onUpdate() {
		updated = new Date();
	}
	
	
	public Astronaut() {
		
	}

	
	
	public Astronaut(String name, String image, String slug, String personal_data, String description,
			ServiceEnum service, int days_spent_in_space, Category category, Date created, Date updated) {
		super();
		this.name = name;
		this.image = image;
		this.slug = slug;
		this.personal_data = personal_data;
		this.description = description;
		this.service = service;
		this.days_spent_in_space = days_spent_in_space;
		this.category = category;
		this.created = created;
		this.updated = updated;
	}

	public long getAstronaut_id() {
		return astronaut_id;
	}

	public void setAstronaut_id(long astronaut_id) {
		this.astronaut_id = astronaut_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public String getPersonal_data() {
		return personal_data;
	}

	public void setPersonal_data(String personal_data) {
		this.personal_data = personal_data;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ServiceEnum getService() {
		return service;
	}

	public void setService(ServiceEnum service) {
		this.service = service;
	}

	public int getDays_spent_in_space() {
		return days_spent_in_space;
	}

	public void setDays_spent_in_space(int days_spent_in_space) {
		this.days_spent_in_space = days_spent_in_space;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Date getUpdated() {
		return updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	
	
	

	
	
	
	
	
}
