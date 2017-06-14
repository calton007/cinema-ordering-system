package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.file.Cinema;
import com.file.HCinema;
import com.file.Order;
import com.file.StarCinema;
import com.service.CinemaService;
import com.service.HCinemaService;
import com.service.OrderService;
import com.service.StarCinemaService;
import com.service.imp.CinemaServiceImp;
import com.service.imp.HCinemaServiceImp;
import com.service.imp.OrderServiceImp;
import com.service.imp.StarCinemaServiceImp;

public class orderServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public orderServlet() {
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
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		Integer id=Integer.parseInt(req.getParameter("id"));
		String cid=req.getParameter("cid");
		String uid=req.getParameter("uid");
		String fid=req.getParameter("fid");
		//String listid=req.getParameter("listid");
	
		
		Integer flag=0;		
		Order order=new Order();
		
		order.setCid(Integer.parseInt(cid));
		order.setFid(Integer.parseInt(fid));
		order.setUid(Integer.parseInt(uid));
		order.setListid(id);
		order.setStatus(flag);
		
		OrderService OS=new OrderServiceImp();
		
		OS.saveOrder(order);
		
		
		//从这个里面加如
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print(" order success!");
		
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
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
