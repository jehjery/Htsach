<%@page import="java.util.ArrayList"%>
<%@page import="Bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@ page language="java" contentType="text/html; chars	et=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.form-label{
    color: darkturquoise;
    form-check-label{
    color: darkturquoise!important;
    }
}
</style>
<link rel="stylesheet" href="./sachonl.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<title>Registation Form * Form Tutorial</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<section class="vh-100">
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">sửa sách </h2>
			</div>
			<%
			response.setCharacterEncoding("utf-8");
		    String maloai=request.getParameter("maloai");
			String tensach=request.getParameter("Tensach");
			String masach=request.getParameter("masach");
			String tacgia=request.getParameter("tacgia");
			String soluong=request.getParameter("soluong");
			String gia=request.getParameter("gia");
			String anh=request.getParameter("anh");%>
			<form action="SuaSach"method="post">
			<div class="panel-body">
				<div class="form-group">
				
				  <label for="usr">Mã loại:</label>
				  <input 	value="<%=maloai %>" 
				  
				  name= "maloai" required="true" type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="usr">Tên Sách:</label>
				  <input value="<%=tensach %>" 
				  name= "Tensach" required="true" type="text" class="form-control" id="usr">
				</div>
				
					<div class="form-group">
				  <label for="usr">Mã Sách:</label>
				  <input value="<%=masach %>" 
				  name= "masach" required="true" type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="usr">Tác giả:</label>
				  <input value="<%=tacgia %>" 
				  name= "tacgia" required="true" type="text" class="form-control" id="usr">
				</div>
						<div class="form-group">
				  <label for="usr">Số Lượng :</label>
				  <input value="<%=soluong %>" 
				  name= "soluong" required="true" type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="usr">Giá:</label>
				  <input value="<%=gia %>" 
				  name= "gia" required="true" type="text" class="form-control" id="usr">
				</div>
				
					<div class="form-group">
				  <label for="usr">Ảnh hoặc Link Ảnh:</label>
				  <input <%if(anh!=null) %>value="<%=anh%>" 
				  		 <%if(anh==null) %>value="<%="https://www.netabooks.vn/Data/Sites/1/Product/32015/1.jpg"%>" 
				  name= "anh" required="true" type="text" class="form-control" id="usr">
				</div>
			
				<!-- <div class="form-group">
				  <label for="address">Address:</label>
				  <input type="text" class="form-control" id="address">
				</div> -->
				<!-- <div class="form-group">
				  <label for="email">Email:</label>
				  <input required="true" type="email" class="form-control" id="email">
				</div> -->
				<!-- <div class="form-group">
				  <label for="birthday">Birthday:</label>
				  <input type="date" class="form-control" id="birthday">
				</div> -->
				<button  class="btn btn-success">Register</button>
			</div>
			</form>
			
				<form action="XoaSach"method="post" style="margin: -2px;">
						<button style="color: #000;
    					background: red;" value="<%=masach%>" 
    					name="SACHXOA"type="submit">XÓA</button>
						</form>
		</div>
	</div>
</body>
</html>