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
 * Servlet implementation class htsach
 */
@WebServlet("/htsach")
public class htsach extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htsach() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// lay so trang
		String pageS = request.getParameter("page");
		String pageSizeS = request.getParameter("pageSize");
		//lay cac tu khoa tim kiem
		String maloai= request.getParameter("maloai");
		String key= request.getParameter("key");
		int page = 1;
		int pageSize = 15;
		if(pageS != null ) page = Integer.parseInt(pageS);
		if(pageSizeS != null ) pageSize = Integer.parseInt(pageSizeS);
		loaibo lbo = new loaibo();
		sachbo sachbo = new sachbo();
		//lay cac sach va loai sach
		ArrayList<sachbean> list = sachbo.findAll(page, pageSize);
		ArrayList<loaibean> listloai = lbo.findAll();
		
		//tim kiem
			
//		if (maloai!=null) 
//			{
//		list=sachbo.TimMa(maloai,list);
//			request.setAttribute("trang", page);
//			request.setAttribute("dsSach", list);
//			request.setAttribute("loaisach", listloai);
//			request.getRequestDispatcher("htsach.jsp").forward(request, response);
//			}
////		System.out.println(list.size());
//		if (key!=null) {
//			list=sachbo.Tim(key,list);  
//			request.setAttribute("trang", page);
//			request.setAttribute("dsSach", list);
//			request.setAttribute("loaisach", listloai);
//			request.getRequestDispatcher("htsach.jsp").forward(request, response);
//			}   	
		     
		request.setAttribute("trang", page);
		request.setAttribute("dsSach", list);
		request.setAttribute("loaisach", listloai);
		request.getRequestDispatcher("htsach.jsp").forward(request, response);
//		response.sendRedirect("htsach");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
