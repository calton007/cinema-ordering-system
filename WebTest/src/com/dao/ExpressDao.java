package com.dao;

import java.util.List;

import com.file.Express;

public interface ExpressDao {
	public void save(Express e);
	
	public void delete(int id);
	
	public List<Express> getAll();
	public List<Express> getU(int uid);
	
	public List<Express> getF(int fid);
	

}
