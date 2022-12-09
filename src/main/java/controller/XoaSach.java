package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class XoaSach
 */
@WebServlet("/XoaSach")
public class XoaSach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaSach() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		sachbo sach= new sachbo();
		ArrayList<sachbean> list = sach.findAll();
		int d=0;	
	    String ma=request.getParameter("SACHXOA");

		for (sachbean a: list )
			{		
				if( (ma.equals(a.getMasach() )))
				{
				 sach.delete(ma);	 
				}
		
		 }
		RequestDispatcher rd1=request.getRequestDispatcher("loai_admin");
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
