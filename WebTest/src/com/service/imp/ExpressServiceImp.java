package com.service.imp;

import java.util.List;

import com.dao.ExpressDao;
import com.dao.imp.ExpressDapImp;
import com.file.Express;
import com.service.ExpressService;

public class ExpressServiceImp implements ExpressService {

	@Override
	public void save(Express e) {
		// TODO Auto-generated method stub
		ExpressDao ED=new ExpressDapImp();
		ED.save(e);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		ExpressDao ED=new ExpressDapImp();
		ED.delete(id);
		
	}

	@Override
	public List<Express> getAll() {
		ExpressDao ED=new ExpressDapImp();
		return ED.getAll();
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Express> getU(int uid) {
		ExpressDao ED=new ExpressDapImp();
		return ED.getU(uid) ;
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Express> getF(int fid) {
		ExpressDao ED=new ExpressDapImp();
		return ED.getF(fid);
		// TODO Auto-generated method stub
		
	}

	
}
