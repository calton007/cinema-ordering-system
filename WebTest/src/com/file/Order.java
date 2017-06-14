package com.file;

import java.sql.Time;

public class Order {
	private Integer  id;
	private Integer cid;
	private Integer listid;
	public Integer getListid() {
		return listid;
	}
	public void setListid(Integer listid) {
		this.listid = listid;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	private Integer uid;
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	private Integer fid;
	private Integer status;
	
	private String time;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	

}
