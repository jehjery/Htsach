package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bo.Giohang;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/Upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				String n=request.getParameter("number");
				String masach=request.getParameter("masach");
		   		//tao biến session
				HttpSession session= request.getSession();
				Giohang gh= new Giohang();
				//b1: gan session vao 1 bien
				gh=(Giohang) session.getAttribute("gio");
				//b2: Thao tac trên bien: gh
				if (n!=null)
				gh.Up(masach, Long.parseLong(n));
				//b3: Luu gh vao session
				session.setAttribute("gio", gh);
				//Hien thi gio
		   		//response.sendRedirect("htsach.jsp");
				RequestDispatcher rd4=request.getRequestDispatcher("giohang.jsp");
				rd4.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
		
	}

}
