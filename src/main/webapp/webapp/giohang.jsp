
<%@page import="Bo.loaibo"%>
<%@page import="Bo.Giohang"%>
<%@page import="bean.giohangbean"%>
<%@page import="Bo.Giohang"%>
<%@page import="Bo.sachbo"%>
<%@page import="Bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.loaibean"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<%
		Giohang gh;
		if(session.getAttribute("gio")==null){
			gh= new Giohang();
			session.setAttribute("gio", gh);
		}
		//b1: gan session vao 1 bien
		gh=(Giohang) session.getAttribute("gio");
		//b2: Thao tac trên bien: gh
		//b3: Luu gh vao session
		session.setAttribute("gio", gh);
		//Hien thi gio
		%>    
<nav class="navbar navbar-inverse" style="width:1300px;width:100%;margin:0; color: #fff ; background-color: #02225D; opacity: 0.9;top:0;'">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SÁCH ONLINE</a>
    </div>
    <ul class="nav navbar-nav ">
     
      <li><a href="htsach">Trang Chủ</a></li>
      <li>
      <a href="dathang">Giỏ Hàng</a>
      <i class="fa-solid fa-cart-shopping search__cart"></i>
      </li>
    </ul>
       <div valign="top" style="display:inline-block;  text-align:center;">
       
	<form action="htsach.jsp" method="post" style="display:inline-flex; margin-top: 5px;">
      <input style="color: black;padding:8px 700px 8px 8px; name="txttk" type="text" value="" placeholder="Tìm Kiếm"> <br>
      <input style="height: 43px;"  class="btn btn-warning "name="buttim" type="submit" value="Tim">
   	</form>
   	
		</div>
    <ul class="nav navbar-nav navbar-right">
      
      <%if( session.getAttribute("dn")==null)
      	{%>
      	<li><a href="dangky"><span class="glyphicon glyphicon-user"></span> Đăng Ký</a></li> 
      <li><a href="ktdn"><span class="glyphicon glyphicon-log-in"></span> Đăng Nhập</a></li>
    		<%}else {%>
    			 <li><a href="ktdn" <% request.setAttribute("lg", "o"); %>><span class="glyphicon glyphicon-log-in"></span> Đăng Xuất</a></li>
    			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> hi <%= session.getAttribute("dn") %></a></li> 
    			
    		<%} %>
    </ul>
  </div>
</nav>

  <table class="table giohang" style="    margin: 0 25% 0 25%;    display: list-item;" >
						<thead>
							<tr>
								<th style="text-align: center;"	>Hình Ảnh</th>
								<th style="text-align: center;">Tên Sách</th>
								<th style="text-align: center;">Giá Sách</th>
								<th style="text-align: center;">Số Lượng</th>
							</tr>
						</thead>
						
			   <%Giohang SSS = (Giohang) session.getAttribute("gio");    	    	   		       		    	
				 for(giohangbean o: SSS.ds) {    	
				   		     %>
				   		     <tr>
					   		     
					   		     <td >
					   		     
					   		   		<img width = "100px" src="<%=o.getAnh()%>">						   		   
						   		 </td>
						   		 <td>
					   		   		<a href="#"><%=o.getTensach() %></a>					   		   
						   		 </td>
						   		 <td>
					   		   		<%=o.getGia() %>						   		   
						   		 </td>
						   		 <td>
						   		 	<form action="Upload" method="post" >
						   		 		<input name="number"  
						   		 		method="post" style = "width: 100px;" type="number" 
						   		 		min="1" value="<%=o.getSoluong()%>">
						   		 		</input>
						   		 		<button value=<%=o.getMasach()%> name="masach"type="submit">save </button>
						   		 	</form>
						   		 </td>
						   		<td>
						   			<a href="giohang?msrm=<%=o.getMasach()%>&rm=1">Xóa Bỏ</a>
						   		</td>
					   		 </tr>
					   		 <% } %>
					 <tr>
						<th></th>
						<th></th>			
						<th><form action="giohang"method="post">
							<button value="1" name="clean"type="submit">clear</button>
							</form>
							</th>
						
					</tr>
					<tr>
						<th></th>
						<th><a style="width: 130px " href="ThanhToan">Thanh Toán</a></th>
						<th><%=gh.TongTien()%></th>
						<th>Ngày <%=java.time.LocalDate.now()%></th>
					</tr>
					<tr>
					<th><a href="lichsuhoadon" style="text-align: center;">Lịch sử mua hàng</a></th>
					</tr>
	   		 		</table>

</body>
</html>
