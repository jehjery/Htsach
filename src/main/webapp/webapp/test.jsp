<!DOCTYPE html>
<%@page import="java.util.Calendar"%>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>                              
<h1>bảng cửu chương</h1>
    <script>
function bangcuuchuong()
{
document.write("<table border=1 width=100%>")
    for(i=1;i<=9;i++)   
    {
	document.write("<tr>")
    for(n=2;n<=9;n++) document.write("<td>" +n + "x" + i +"="+ (n*i),"</td>");
	document.write("</tr>")
    }
document.write("</tr></table>")
}     
	
bangcuuchuong();
    </script><link rel="stylesheet" type="text/css" href="">

         <table border='1' width ="1000" align="center" cellpadding="0" cellspacing="0">
      <tr bgcolor="red">
          <td colspan="3"> Menu ngang </td>
      </tr>
    <tr>
          <td width="200" valign="top" > 
             Menu trai 1<hr> Menu trai 2<hr> 
             
             </td>
          <td width="800"> Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr>Noi dung 1 <hr> </td>
          <td width="200"> Tim Kiem</td>
    </tr>
    <tr>
        <td colspan="3"> Ban quyen </td>     
 <%
	Calendar cld=Calendar.getInstance();
	int ngay= cld.get(Calendar.DAY_OF_MONTH);
	int thang= cld.get(Calendar.MONTH);
	int nam=cld.get(Calendar.YEAR);
%>
	<h1 style="text-align: right;"> <i>Hôm nay, ngày <%=ngay %> tháng <%=thang+1 %> năm <%=nam %></i></h1>
	<div class="date-time ">
		<select  name="ngay">
			<option>Ngày</option>
			<%for(int i=1;i<=31;i++) { %>
			<option value="<%=i %>" <%=(i==ngay)?"selected":"" %>> <%=i %> </option>
			<% } %>
		</select> 
		<select  name="thang">
			<option>Tháng</option>
			<%for(int i=1;i<=12;i++) { %>
			<option value="<%=i %>" <%=(i==thang)?"selected":"" %>><%=i+1 %></option>
			<% } %>
		</select>
		 <select name="nam">
			<option>Năm</option>
			<%for(int i=2000;i<=2022;i++) { %>
			<option value="<%=i %>" <%=(i==nam)?"selected":"" %>><%=i %></option>
			<% } %>
		</select>
	</div>
	        
out.pr 
 
 
 
 
</body>
</html>