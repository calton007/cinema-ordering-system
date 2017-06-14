package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import antlr.collections.List;

import com.file.User;
import com.service.UserService;
import com.service.imp.UserServiceImp;

public class Servlet1 extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Servlet1() {
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
	 
		
		UserService US=new UserServiceImp();
		
		String username=req.getParameter("username");
		String email=req.getParameter("mail");
		String password=req.getParameter("password");
		String tel=req.getParameter("tel");
				
		User user=new User();
		
		user.setU_name(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setTel(tel);
		user.setType(1);
		user.setRemainder(100.0);
		user.setC_name(null);
		
		if(US.insertsearchUser(user) ==null)
		{
			US.saveUser(user);
		
		 req.getSession().setAttribute("user",user);
			
			
		    req.getRequestDispatcher("/success.jsp").forward(req, resp);;
		 //req.setAttribute("user",user);//����  setname �ķ���һ���
	    // req.getRequestDispatcher("/success.jsp").forward(req, resp); 
	     //当前路径servlet
		}
		else
		{
			resp.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html");
			PrintWriter out = resp.getWriter();
			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
			out.println("  <BODY>");
			out.print(" 用户名不能重复 ，请重新输入！！");
			
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		}
		
		
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
