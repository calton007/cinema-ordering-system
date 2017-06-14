package com.service;

import java.util.List;


import com.file.StarCinema;

public interface StarCinemaService {
	public void saveCinema(StarCinema c);
	
	public List<StarCinema> getAllCinema();
	
	public void deleteFilm(StarCinema c);
	
	public boolean updateFilm(StarCinema c);
	
	public List<StarCinema> searchfilm(int fid);
}
