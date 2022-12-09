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
		//String kqq=request.getParameter("kq");
		//if (kqq!=null)	{
		double kq=0;
		if( request.getAttribute("kq")!=null){
		 kq=(double) request.getAttribute("kq");}
		%>
    <form action="test" method="post">
       a= <input name="txta" type="number" value="0"> <br>
       b= <input name="txtb" type="number" value="0"> <br>
       kq= <input name="txtkq" type="number" value="<%=kq %>"> <br>
       <input name="butc" type="submit" value="+"> 
       <input name="butt" type="submit" value="-">
       <input name="butn" type="submit" value="*">
       <input name="butchia" type="submit" value="/">
    </form>
</body>

</html>