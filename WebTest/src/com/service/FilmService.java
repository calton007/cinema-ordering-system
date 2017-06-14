package com.service;

import java.util.List;

import com.file.Film;

public interface FilmService {
	
	public void saveFilm(Film film);
	
	public List<Film> checkAll();
	
	public Film checkById(int id);
	
	public Film checkByName(String name);

}
