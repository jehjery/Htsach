
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
						   		 <td><a href="Xemchitiet?ngay=<%=aa.getNgaythanhtoan().toString()%>">Xem Chi Tiết</a></td>
					   		 </tr>
					   	<%} %>
					 
</table>
<%if( request.getAttribute("dssachmua")!=null ){ %>
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
			     <% 
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
