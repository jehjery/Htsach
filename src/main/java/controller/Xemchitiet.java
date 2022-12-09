package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bo.hoadonbo;
import bean.giohangbean;
import bean.hoadonbean;

/**
 * Servlet implementation class Xemchitiet
 */
@WebServlet("/Xemchitiet")
public class Xemchitiet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Xemchitiet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
			String ngay=request.getParameter("ngay");
			hoadonbo hdo = new hoadonbo();
			ArrayList<hoadonbean> listhd = hdo.findAll();
			
			request.setAttribute("dssachmua", null);
			ArrayList<giohangbean> dssachmua= new ArrayList<>();
			
			for (hoadonbean a: listhd)
			{	
				if(ngay.equals(a.getNgaythanhtoan().toString())) 
					{
						dssachmua= a.getListsach();
						request.setAttribute("dssachmua", dssachmua);
					}
				
			}
			request.setAttribute("listhd", listhd);
			request.getRequestDispatcher("Lichsumuahang.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
