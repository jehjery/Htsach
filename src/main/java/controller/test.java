package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public test() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//Lay ve a,b tu client gui len
  		String tama=request.getParameter("txta");
 		String tamb=request.getParameter("txtb");
 			
			double kq=0;
 		if(tama!=null && tamb!=null)
 			//Doi tama, tamb ra so
 			{
 			double a= Double.parseDouble(tama);
			double b= Double.parseDouble(tamb);
 				if(request.getParameter("butc")!=null)
 					kq=a+b;
 				if(request.getParameter("butt")!=null)
 					kq=a-b;
 				if(request.getParameter("butn")!=null)
 					kq=a*b;
 				if(request.getParameter("butchia")!=null)
 					kq=a/b;
 				//response.sendRedirect("maytinh.jsp?kq="+kq);
 				request.setAttribute("kq", kq);
 			}
 		
 	//	request.setAttribute("kq", kq);
 			RequestDispatcher rd=request.getRequestDispatcher("maytinh.jsp");
			rd.forward(request, response);
 		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
