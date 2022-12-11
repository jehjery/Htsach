<%@page import="bean.hoadonbean"%>
<%@page import="bean.hoadonbean"%>
<%@page import="Bo.hoadonbo"%>
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


<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>admin</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="D:\web\fontawesome-free-6.2.0-web">
    <link rel="stylesheet" href=".\css\css\base.css" />
    <link rel="stylesheet" href=".\css\css\responsive.css" />
    <link rel="stylesheet" href=".\css\css\grid.css" />
    <link rel="stylesheet" href=".\css\css\main.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
  </head>
  <body>
 <style>
.container-fluid{
	font-size: 2rem;
	background-color: #02225D;
}
</style> 
<body>
<nav class="navbar navbar-inverse" style="min-width:1300px;width:100%;margin:0; color: #fff ; background-color: #02225D; opacity: 0.9;top:0;'">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="loai_admin">Trang quản trị</a>
    </div>
    <ul class="nav navbar-nav ">
      
      <li><a href="#">Loại sách</a></li>
      <li><a href="#">Sách</a></li>
      <li>
      <a href="">Các Đơn Hàng</a>
      <i class="fa-solid fa-cart-shopping search__cart"></i>
      </li>
    </ul>
       <div valign="top" style="display:inline-block;  text-align:center;">
	<form action="htsach.jsp" method="post" style="display:inline-flex; margin-top: 5px;">
      <input style="color: black;padding:8px 400px 8px 8px; name="txttk" type="text"  placeholder="Tìm Kiếm"> <br>
      <input style="height: 43px;"  class="btn btn-warning "name="butdn" type="submit" value="Tìm">
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
								<th style="text-align: center;"	>Thời gian thanh toán</th>
								<th style="text-align: center;">Số Tiền thanh toán</th>
								<th style="text-align: center;">Số Lượng Sách đã mua</th>
							</tr>
						</thead>
			     <% ArrayList<hoadonbean> listhd = (ArrayList<hoadonbean>) request.getAttribute("listhd");
				   	for(hoadonbean aa: listhd){%>  
				   		     <tr>
					   			 <td style="text-align: center;"><%=aa.getNgaythanhtoan().toString()%></td>
						   		 <td style="text-align: center;"><%=aa.getSotien()%></td>
						   		 <td style="text-align: center;"><%=aa.getsize()%></td>
						   		 <td><a href="xemchitietadmin?ngay=<%=aa.getNgaythanhtoan().toString()%>">Xem Chi Tiết</a></td>
						   		  <td><a href="XOAKHO?ngay=<%=aa.getNgaythanhtoan().toString()%>">Xóa</a></td>
					   		 </tr>
					   	<%} %>
				</table>
				
 		<table class="table giohang" style=" margin: 100px 25% 0 25%;    display: list-item;" >
						<thead>
							<tr>
								<th style="text-align: center;"	>Mã sách</th>
								<th style="text-align: center;">Hình Ảnh</th>
								<th style="text-align: center;">Tên sách</th>
								<th style="text-align: center;"	>Giá cả</th>
								<th style="text-align: center;">Số lượng mua</th>
								<th style="text-align: center;">Thành tiền</th>
							</tr>
						</thead>
			     <% if( request.getAttribute("dssachmua")!=null ){ 
			     	ArrayList<giohangbean> listsach = (ArrayList<giohangbean>) request.getAttribute("dssachmua");
			     	for(giohangbean a: listsach){%>  
				   		     <tr>
						   		 <td style="text-align: center;"><%=a.getMasach()%></td>
					   			 <td style="text-align: center;"><img width = "100px" src="<%=a.getAnh()%>"></td>
						   		 <td style="text-align: center;"><%=a.getTensach()%></td>
						   		 <td style="text-align: center;"><%=a.getGia()%></td>
						   		 <td style="text-align: center;"><%=a.getSoluong()%></td>
						   		 <td style="text-align: center;"><%=a.getThanhtien()%></td>
					   		 </tr>
					   	<%} %>
					    	<%} %>
					    	
</table>
</body>
</html>