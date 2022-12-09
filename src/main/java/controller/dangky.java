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
 * Servlet implementation class dangky
 */
@WebServlet("/dangky")
public class dangky extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangky() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		userbo user= new userbo();
		ArrayList<userbean> listuse = user.findAll();
		int d=0;
		//tao session
		HttpSession session= request.getSession();
	    String un=request.getParameter("username");
		String pass=request.getParameter("pass");
		String cp=request.getParameter("checkpass");
		if ((pass!=null)&&(un!=null)&&(cp!=null) && (pass.equals(cp)))
		{

		for (userbean a: listuse)
			{		
				if( (un.equals(a.getUsername() )))
					{
					d++;
					}
			}
		if (d==0) 
				{
				 user.insert(new userbean(un, pass));
				 session.setAttribute("dn",un);
				 RequestDispatcher rd1=request.getRequestDispatcher("htsach");
				 rd1.forward(request, response);
				 
				}
				 //}else //Neu dang nhap sai
				 else	
				 {
					 RequestDispatcher rd1=request.getRequestDispatcher("dangky.jsp");
					 rd1.forward(request, response);
				 }
		
		
		}
		 else	
		 {
			 RequestDispatcher rd1=request.getRequestDispatcher("dangky.jsp");
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
