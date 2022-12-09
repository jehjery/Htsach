package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bo.hoadonbo;
import bean.hoadonbean;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.time.LocalDate;

/**
 * Servlet implementation class lichsuhoadon
 */
@WebServlet("/lichsuhoadon")
public class lichsuhoadon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsuhoadon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		hoadonbo hdo = new hoadonbo();
		ArrayList<hoadonbean> listhd = hdo.findAll();
		
		for (hoadonbean a: listhd)
		{	
			System.out.println(a.getSotien());
			System.out.println(a.getNgaythanhtoan());
			System.out.println(a.getsize());
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
