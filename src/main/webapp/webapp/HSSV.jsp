<%@page import="bean.Sinhvienbean"%>
<%@page import="dao.SinhVienDao"%>
<%@page import="dao.MonHocDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Monhocbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<table 	width="1000" align="center" border="solid 1px #000"  style="text-align:center;">
				<tr>
			<td colspan="3"><h1>Quản lí thông tin</h1></td>
		</tr>
		<tr>
			<td valign="top" width="200" style="text-align:left;">Danh sách các loại
				<table>
				<%	
					MonHocDao monhoc= new MonHocDao();
					for( Monhocbean l:monhoc.GetMonHoc()){%>
					<tr><td>
					<a href="HSSV.jsp?ml=<%=l.getMaMon()%>" >
						<%=l.getTenMon()%></a><% }%>
				</table>
				
			</td>
				<td valign="top" width="600"  >
				Danh sách các sinh vien
				<table>
				<%	
					SinhVienDao sv= new SinhVienDao();
					for( Sinhvienbean n:sv.GetSV()){%>
						<tr><td>
						
						<a href="HSSV.jsp?ml=<%=n.getMaSV()%>" >
							<%=n.getTenSV()%></a>
								<% }%>
					
					
				
				</table>
			
   		 </table>
   		 </td>
		</tr>	
	</table>
</body>
</html>