package com.service.imp;

import java.util.List;

import com.dao.HCinemaDao;
import com.dao.imp.HCinemaDaoImp;
import com.file.HCinema;
import com.service.HCinemaService;

public class HCinemaServiceImp implements HCinemaService {

	@Override
	public void saveCinema(HCinema c) {
		// TODO Auto-generated method stub
		HCinemaDao HD=new HCinemaDaoImp();
		HD.saveCinema(c);
	}

	@Override
	public List<HCinema> getAllCinema() {
		// TODO Auto-generated method stub
		HCinemaDao HD=new HCinemaDaoImp();
		return HD.getAllCinema();
	}

	@Override
	public void deleteFilm(HCinema c) {
		// TODO Auto-generated method stub
		HCinemaDao HD=new HCinemaDaoImp();
		HD.deleteFilm(c);
	}

	@Override
	public boolean updateFilm(HCinema c) {
		// TODO Auto-generated method stub
		HCinemaDao HD=new HCinemaDaoImp();
		return HD.updateFilm(c);
	}

	@Override
	public List<HCinema> searchfilm(int fid) {
		// TODO Auto-generated method stub
		HCinemaDao HD=new HCinemaDaoImp();
		return HD.searchfilm(fid);
	}

}
