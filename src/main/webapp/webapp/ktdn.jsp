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
    String un=request.getParameter("txtun");
	String pass=request.getParameter("txtpass");
	String lg=request.getParameter("lg");
	{if ((lg!=null)||(session.getAttribute("dn")==null)) session.setAttribute("dn","");
	session.setAttribute("dn",un);
//	if(un.equals(dn)&&pass.equals("123")){//Neu dang nhap dung
		//Mo trang maytinh.jsp
	if ((session.getAttribute("dn")!=null)&&(pass!=""))	response.sendRedirect("htsach.jsp");
	//}else //Neu dang nhap sai
	else	response.sendRedirect("login.jsp?lg=1");}
%>
</body>

</html>