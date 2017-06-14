package com.dao;

import java.util.List;

import com.file.Cinema;

public interface CinemaDao {
	
	public void saveCinema(Cinema c);
	
	public List<Cinema> getAllCinema();
	
	public void deleteFilm(Cinema c);
	
	
	public boolean updateFilm(Cinema c);
	
	
	public List<Cinema> searchfilm(int fid);
	

}
