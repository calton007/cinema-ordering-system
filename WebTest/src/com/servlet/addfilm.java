package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.file.Cinema;
import com.file.Film;
import com.file.HCinema;
import com.file.StarCinema;
import com.file.User;
import com.service.CinemaService;
import com.service.FilmService;
import com.service.HCinemaService;
import com.service.StarCinemaService;
import com.service.imp.CinemaServiceImp;
import com.service.imp.FilmServiceImp;
import com.service.imp.HCinemaServiceImp;
import com.service.imp.StarCinemaServiceImp;

public class addfilm extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public addfilm() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		req.setCharacterEncoding("UTF-8");
		
		
		User u=(User) req.getSession(false).getAttribute("user");
		System.out.print(u.getC_name());
		Integer fid=Integer.valueOf(req.getParameter("fid"));
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		//java.sql.Date date=java.sql.Date.valueOf(req.getParameter("time"));
		
		String date=req.getParameter("time");
		String place=req.getParameter("place");
		String showtext=req.getParameter("show");
		Double price=Double.valueOf(req.getParameter("price"));
		
		if(u.getC_name().equals("c1"))
		{
		 Cinema temp=new Cinema();
		 temp.setFid(fid);
		
		 temp.setPlace(place);
		 temp.setTime(date);
		 temp.setShowtext(showtext);
		 temp.setPrice(price);
		 temp.setNum(300);
		 
		 CinemaService CS=new CinemaServiceImp();
		 
		 CS.saveCinema(temp);
		}
		else if(u.getC_name().equals("c2"))
		{
			HCinema temp=new HCinema();
			temp.setFid(fid);
			
			 temp.setPlace(place);
			 temp.setTime(date);
			 temp.setShowtext(showtext);
			 temp.setPrice(price);
			 temp.setNum(300);
			 
			 HCinemaService HS=new HCinemaServiceImp();
			 
			HS.saveCinema(temp);
			 
		}
		else
		{
			StarCinema temp=new StarCinema();
			temp.setFid(fid);
			
			 temp.setPlace(place);
			 temp.setTime(date);
			 temp.setShowtext(showtext);
			 temp.setPrice(price);
			 temp.setNum(300);
			 
			 StarCinemaService SS=new StarCinemaServiceImp();
			 
			SS.saveCinema(temp);
		}
		
		    resp.setContentType("text/html");
			PrintWriter out = resp.getWriter();
			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
			out.println("addfilm");
			out.print(" success ");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
	
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
