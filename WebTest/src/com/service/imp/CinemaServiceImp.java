package com.service.imp;

import java.util.List;

import com.dao.CinemaDao;
import com.dao.imp.CinemaDaoImp;
import com.file.Cinema;
import com.service.CinemaService;

public class CinemaServiceImp implements CinemaService {

	@Override
	public void saveCinema(Cinema c) {
		// TODO Auto-generated method stub
		
		CinemaDao CD=new CinemaDaoImp();
		CD.saveCinema(c);
		
	}

	@Override
	public List<Cinema> getAllCinema() {
		// TODO Auto-generated method stub
		CinemaDao dao=new CinemaDaoImp();
		
		return dao.getAllCinema();
	}

	@Override
	public void deleteFilm(Cinema c) {
		// TODO Auto-generated method stub
		CinemaDao dao=new CinemaDaoImp();
		dao.deleteFilm(c);
	}

	@Override
	public boolean updateFilm(Cinema c) {
		// TODO Auto-generated method stub
		CinemaDao dao=new CinemaDaoImp();
		return dao.updateFilm(c);
	}

	@Override
	public List<Cinema> searchfilm(int fid) {
		// TODO Auto-generated method stub
		CinemaDao dao=new CinemaDaoImp();
		return dao.searchfilm(fid);
	}

}
