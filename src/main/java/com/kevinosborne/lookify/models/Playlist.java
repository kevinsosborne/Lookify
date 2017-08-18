package com.kevinosborne.lookify.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Playlist {
	
	@PrePersist
	protected void onCreate() {
		this.created_at = new Date();
	}
	
	@PreUpdate
	protected void onUpdate() {
		this.updated_at = new Date();
	}

	@Id
	@GeneratedValue
	private Long id;
	
	@Column
	@Size(min = 5, max= 50, message="Artist name must be at least 5 characters long.")
	private String artistName;
	
	@Column
	@Size(min = 5, max= 50, message="Artist title must be at least 5 characters long.")
	private String artistTitle;
	
	@Column
	@Min(value=1 , message="Must choose a rating between 1 and 10.")
	private int rating;
	
	@Column
	@DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
	private Date created_at;
	
	@Column
	@DateTimeFormat(pattern = "MM/dd/yyyy HH:mm:ss")
	private Date updated_at;
	
	public Playlist() {
	}
	
	@Autowired
	public Playlist(String artistname, String artisttitle, int rating) {
		this.artistName = artistname;
		this.artistTitle = artisttitle;
		this.rating = rating;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getArtistName() {
		return artistName;
	}

	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}

	public String getArtistTitle() {
		return artistTitle;
	}

	public void setArtistTitle(String artistTitle) {
		this.artistTitle = artistTitle;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}
	
	
	
	
}
