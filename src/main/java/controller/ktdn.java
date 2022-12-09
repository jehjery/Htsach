package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bo.userbo;

import bean.userbean;

/**
 * Servlet implementation class ktdn
 */
@WebServlet("/ktdn")
public class ktdn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userbo user= new userbo();
		ArrayList<userbean> listuser = user.findAll();
		
		//tao session
		HttpSession session= request.getSession();
	    String un=request.getParameter("txtun");
		String pass=request.getParameter("txtpass");
		//login admin

		int d=0;
//		if ((lg!=null)||(session.getAttribute("dn")==null)) session.setAttribute("dn","");
		session.setAttribute("dn",un);
//		if(un.equals(dn)&&pass.equals("123")){//Neu dang nhap dung
			//Mo trang maytinh.jsp	
		//login dang nhap user
		if ((un != null) && (pass != null)) 
		{
			
			for( userbean a : listuser)
			{	if(un.equals("111")&&(pass.equals("111"))) d=-1000;
				
				if(un.equals(a.getUsername())&&(pass.equals(a.getPass())))
						{
							d++;
							System.out.println(d);
						}
			}
			if (d==0)	
				{
				RequestDispatcher rd1=request.getRequestDispatcher("login.jsp");
				rd1.forward(request, response);
				}
			if (d<0) 
			{
			RequestDispatcher rd1=request.getRequestDispatcher("loai_admin");
			rd1.forward(request, response);
			}
			if (d>0) 
			{
			RequestDispatcher rd1=request.getRequestDispatcher("htsach");
			rd1.forward(request, response);
			}
		}
		else 
		{
		RequestDispatcher rd1=request.getRequestDispatcher("login.jsp");
		rd1.forward(request, response);
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
