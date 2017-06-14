package com.dao;

import java.util.List;

import com.file.Cinema;
import com.file.StarCinema;

public interface StarCinemaDao {

	
	public void saveCinema(StarCinema c);
	
	public List<StarCinema> getAllCinema();
	
	public void deleteFilm(StarCinema c);
	
	
	public boolean updateFilm(StarCinema c);
	
	public List<StarCinema> searchfilm(int fid);
}
