<%@page import="bean.giohangbean"%>
<%@page import="Bo.Giohang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
   		String n=request.getParameter("number");
		String masach=request.getParameter("masach");
   		//tao biến session

		Giohang gh= new Giohang();
		//b1: gan session vao 1 bien
		gh=(Giohang) session.getAttribute("gio");
		//b2: Thao tac trên bien: gh
		gh.Up(masach, Long.parseLong(n));
		//b3: Luu gh vao session
		session.setAttribute("gio", gh);
		//Hien thi gio
   		response.sendRedirect("htsach.jsp");
   	%>
 	
   
</body>
</html>