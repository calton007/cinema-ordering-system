package com.service.imp;
import java.util.List;

import com.dao.FilmDao;
import com.dao.imp.FilmDaoImp;
import com.file.Film;
import com.service.FilmService;

public class FilmServiceImp implements FilmService{

	@Override
	public void saveFilm(Film film) {
		// TODO Auto-generated method stub
		FilmDao filmdao=new FilmDaoImp();
		filmdao.saveFilm(film);
	}

	@Override
	public List<Film> checkAll() {
		// TODO Auto-generated method stub
		
		FilmDao dao=new FilmDaoImp();
		
		return dao.checkAll();
	}

	@Override
	public Film checkById(int id) {
		// TODO Auto-generated method stub
		FilmDao dao=new FilmDaoImp();
		return dao.checkById(id);
	}

	@Override
	public Film checkByName(String name) {
		// TODO Auto-generated method stub
		FilmDao dao=new FilmDaoImp();
		return dao.checkByName(name);
	}
	

}
