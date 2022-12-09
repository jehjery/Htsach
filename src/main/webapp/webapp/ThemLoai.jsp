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
				<h2 class="text-center">Đăng ký Loại </h2>
			</div>
			<%
			loaibean loai= new loaibean();
				  if (request.getAttribute("loai")!=null) 
				{  loai= (loaibean) request.getAttribute("sach");
			%>
			<%}%>
			<form action="Themloai"method="post">
			<div class="panel-body">
				<div class="form-group">
				  <label for="usr">Mã loại:</label>
				  <input <%if(loai.getMaloai()!=null){%>value="<%=loai.getMaloai()%>" <%}	 %>
				  name= "maloai" required="true" type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="usr">Tên loại:</label>
				  <input <%if(loai.getTenloai()!=null){%>value="<%=loai.getTenloai()%>" <%}	 %> 
				  name= "Tenloai" required="true" type="text" class="form-control" id="usr">
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
		</div>
	</div>
</body>
</html>