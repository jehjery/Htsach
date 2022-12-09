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

import Bo.Giohang;
import bean.sachbean;
import dao.sachdao;

/**
 * Servlet implementation class giohang
 */
@WebServlet("/giohang")
public class giohang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public giohang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession();
		String masach=request.getParameter("ms");
		String tensach=request.getParameter("ts");
		long soluong=(long) 1;
		long gia = 0;
		if(request.getParameter("gia") != null)
			gia= Long.parseLong(request.getParameter("gia"));
		String anh=request.getParameter("anh");
		Giohang gh;
		//Neu mua lan dau
		if(session.getAttribute("gio")==null){
			gh= new Giohang();
			session.setAttribute("gio", gh);
		}
		
		
		
		
		//b1: gan session vao 1 bien
		gh=(Giohang) session.getAttribute("gio");
		//b2: Thao tac trên bien: 
		gh.Them(masach, tensach, 1, gia, anh);
		//b3: Luu gh vao session
		
		session.setAttribute("gio", gh);
		//Hien thi gio
			if (request.getParameter("clean")!=null) {
				session.removeAttribute("gio");
				RequestDispatcher rd1=request.getRequestDispatcher("giohang.jsp");
				rd1.forward(request, response);	
				return;
		}
			
			if (request.getParameter("rm")!=null) {
				
					gh.remove(request.getParameter("msrm"));
					RequestDispatcher rd1=request.getRequestDispatcher("giohang.jsp");
					rd1.forward(request, response);
				
	    		return ;	
			}
		
		
			RequestDispatcher rd1=request.getRequestDispatcher("giohang.jsp");
			rd1.forward(request, response);
		
	
			
		
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
