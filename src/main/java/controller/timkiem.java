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
 * Servlet implementation class timkiem
 */
@WebServlet("/timkiem")
public class timkiem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public timkiem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//lay cac tu khoa tim kiem
				String maloai= request.getParameter("maloai");
				String key= request.getParameter("key");
				 request.setAttribute("trang",1);
				loaibo lbo = new loaibo();
				sachbo sachbo = new sachbo();
				//lay cac sach va loai sach
				ArrayList<sachbean> list = null;
				ArrayList<loaibean> listloai = lbo.findAll();
				
				//tim kiem
		
				
				if (maloai!=null) 
					{
					list=sachbo.findloai(maloai);
					request.setAttribute("dsSach", list);
					request.setAttribute("loaisach", listloai);
					request.getRequestDispatcher("htsach.jsp").forward(request, response);
					return;
					}
					
				if (key!=null) 
					{
					list=sachbo.findloai(key);
					request.setAttribute("dsSach", list);
					request.setAttribute("loaisach", listloai);
					request.getRequestDispatcher("htsach.jsp").forward(request, response);
					return;
					}  
				else
				{
					request.setAttribute("dsSach", list);
					request.setAttribute("loaisach", listloai);
					request.getRequestDispatcher("htsach.jsp").forward(request, response);
				}
				
//				response.sendRedirect("htsach");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
