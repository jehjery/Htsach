package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.eclipse.jdt.internal.compiler.ast.MessageSend;

import Bo.Giohang;
import Bo.hoadonbo;
import Bo.userbo;
import bean.hoadonbean;
import bean.userbean;

/**
 * Servlet implementation class ThanhToan
 */
@WebServlet("/ThanhToan")
public class ThanhToan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThanhToan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session= request.getSession();
		hoadonbo hoadon= new hoadonbo();
		// lấy giỏ về 
		Giohang gh=(Giohang) session.getAttribute("gio");
		if(gh.TongTien()==0) 
			{
			RequestDispatcher rd=request.getRequestDispatcher("giohang.jsp");
			rd.forward(request, response);
			}
		else
		{
		hoadon.insert(new hoadonbean(gh.TongTien(),new Date(),gh.getds()));
		// lưu vào csdl và xóa giỏ
		session.setAttribute("gio", null);
		}
		RequestDispatcher rd=request.getRequestDispatcher("giohang.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
