package com.service.imp;

import java.util.List;

import com.dao.StarCinemaDao;
import com.dao.imp.StarCinemaDaoImp;
import com.file.StarCinema;
import com.service.StarCinemaService;

public class StarCinemaServiceImp implements StarCinemaService {

	@Override
	public void saveCinema(StarCinema c) {
		// TODO Auto-generated method stub
		StarCinemaDao SD=new StarCinemaDaoImp();
		SD.saveCinema(c);
	}

	@Override
	public List<StarCinema> getAllCinema() {
		// TODO Auto-generated method stub
		StarCinemaDao SD=new StarCinemaDaoImp();
		return SD.getAllCinema();
	}

	@Override
	public void deleteFilm(StarCinema c) {
		// TODO Auto-generated method stub
		StarCinemaDao SD=new StarCinemaDaoImp();
		SD.deleteFilm(c);
	}

	@Override
	public boolean updateFilm(StarCinema c) {
		// TODO Auto-generated method stub
		StarCinemaDao SD=new StarCinemaDaoImp();
		return SD.updateFilm(c);
	}

	@Override
	public List<StarCinema> searchfilm(int fid) {
		// TODO Auto-generated method stub
		StarCinemaDao SD=new StarCinemaDaoImp();
		return SD.searchfilm(fid);
	}

}
