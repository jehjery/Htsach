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
import bean.loaibean;

/**
 * Servlet implementation class XoaLoai
 */
@WebServlet("/XoaLoai")
public class XoaLoai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaLoai() {
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
		loaibo loai= new loaibo();
		ArrayList<loaibean> listloai = loai.findAll();
		int d=0;	
	    String ma=request.getParameter("maloai");

		for (loaibean a: listloai)
			{		
				if( (ma.equals(a.getMaloai() )))
				{
				 loai.delete(ma);
				 request.getRequestDispatcher("loai_admin").forward(request, response);
				 break;
				}
			
		
			}
		request.getRequestDispatcher("loai_admin").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
