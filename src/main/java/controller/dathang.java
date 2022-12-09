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
import Bo.sachbo;
import bean.sachbean;
import dao.sachdao;

/**
 * Servlet implementation class dathang
 */
@WebServlet("/dathang")
public class dathang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dathang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session= request.getSession();
		Giohang gh;
		//Neu mua lan dau
		if(session.getAttribute("gio")==null){
			gh= new Giohang();
			session.setAttribute("gio", gh);
		}
		
		sachbo sachbo = new sachbo();
		ArrayList<sachbean> list = sachbo.findAll();
		
		long soluong=(long) 1;
		//b1: gan session vao 1 bien
		
		gh=(Giohang) session.getAttribute("gio");
		//b2: Thao tac trên bien: 
		//b3: Luu gh vao session
		String key=request.getParameter("dathang"); 
		//tìm sách lấy các thuộc tính ra 
	    int n=list.size();
	    for(int i=0;i<n;i++){	
	    	sachbean s =list.get(i);
	    	if (s.getMasach().equals(key))
	    	{
	    		System.out.println(soluong);
	    		gh.Them(s.getMasach(), s.getTensach(),soluong, s.getGia(), s.getAnh());
	    		break;
	    		// tìm đúng 1 lần xong thoát vòng lặp, do m chưa thoát nỡ, nhớ 
	    	}
	    	
	    }
	    // ?? sao có vòng for ở đây , à tìm cái mã sách để thêm vô á, cái ni không cần nhá, vào trong nó có
	    session.setAttribute("gio", gh);
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
