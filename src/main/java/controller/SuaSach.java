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
 * Servlet implementation class SuaSach
 */
@WebServlet("/SuaSach")
public class SuaSach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaSach() {
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
		// lay list sach ve
		ArrayList<sachbean> listsach = sach.findAll();	
	    // lay thogn tin sach can update
		String maloai=request.getParameter("maloai");
		String tensach=request.getParameter("Tensach");
		String masach=request.getParameter("masach");
		String tacgia=request.getParameter("tacgia");
		String soluong=request.getParameter("soluong");
		String gia=request.getParameter("gia");
		String anh=request.getParameter("anh");
		
		for (sachbean a: listsach)
			{		
				if( (masach.equals(a.getMasach() )))
				{
				 sach.update(new sachbean(masach,tensach,tacgia,Integer.parseInt(soluong),Integer.parseInt(gia),anh,maloai));
				 
				 RequestDispatcher rd1=request.getRequestDispatcher("loai_admin");
				 rd1.forward(request, response);
				break;
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
