package com.dao;

import java.util.List;

import com.file.Cinema;
import com.file.HCinema;



public interface HCinemaDao {

public void saveCinema(HCinema c);
	
	public List<HCinema> getAllCinema();
	
	public void deleteFilm(HCinema c);
	
	
	public boolean updateFilm(HCinema c);
	public List<HCinema> searchfilm(int fid);
}
