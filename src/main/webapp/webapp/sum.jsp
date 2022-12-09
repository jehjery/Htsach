<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="sum.jsp" method="get">
      <input name="txtn" type="number"> <br>
      <input name="butdn" type="submit" value="Tong" >
   	</form>	 <br>
   	<%
   		String nn=request.getParameter("txtn");
   		//tao biến session
   		if(session.getAttribute("s")==null)//Nếu chưa tạo
   		session.setAttribute("s", 0);
   		if(nn!=null){
   			int n=Integer.parseInt(nn);
   			//b1: gan bien session cho 1 bien
   			int ss=(int)session.getAttribute("s");
   			//b2: Tham ta tren bien
   			ss=ss+n;
   			session.setAttribute("s", ss);
   			out.print("Tong: " + session.getAttribute("s"));
   		}
   	%>
   	<a href="htsach.jsp">trang chu</a>
</body>
</html>