package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bo.loaibo;
import Bo.sachbo;
import bean.loaibean;
import bean.sachbean;

/**
 * Servlet implementation class loai_admin
 */
@WebServlet("/loai_admin")
public class loai_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loai_admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		loaibo lbo = new loaibo();
		ArrayList<loaibean> listloai = lbo.findAll();
		request.setAttribute("loai", listloai);
	
		sachbo sachbo= new sachbo();
		ArrayList<sachbean> listsach= sachbo.findAll();
		
		request.setAttribute("trang", 1);
		request.setAttribute("dsSach", listsach);
		
		request.getRequestDispatcher("admin.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
