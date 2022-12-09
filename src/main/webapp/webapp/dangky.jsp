<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<nav class="navbar navbar-inverse" style="
    display: flex;
    line-height: 40px;
min-width:1300px;width:100%;margin:0; color: #fff ; background-color: #02225D; opacity: 0.9;top:0;'">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SÁCH ONLINE</a>
    </div>
    <ul class="nav navbar-nav ">
     
      <li><a href="htsach">Trang Chủ</a></li>
      <li>
      
      <i class="fa-solid fa-cart-shopping search__cart"></i>
      </li>
    </ul>
       <div valign="top" style="display:inline-block;  text-align:center;">

		</div>
    <ul class="nav navbar-nav navbar-right">
      
      <%if( session.getAttribute("dn")==null)
      	{%>
      	<li><a href="ktdn"><span class="glyphicon glyphicon-user"></span> Đăng Nhập</a></li> 
  
    		<%}else {%>
    			 <li><a href="ktdn" <% request.setAttribute("lg", "o"); %>><span class="glyphicon glyphicon-log-in"></span> Đăng Xuất</a></li>
    			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> hi <%= session.getAttribute("dn") %></a></li> 
    			
    		<%} %>
    </ul>
  </div>
</nav>
	<section class="vh-100">
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Đăng Ký Tài khoản mua sách</h2>
			</div>
			<form action="dangky"method="post">
			<div class="panel-body">
				<div class="form-group">
				  <label for="usr">UseName:</label>
				  <input name= "username" required="true" type="text" class="form-control" id="usr">
				</div>
				
				<div class="form-group">
				  <label for="pwd">Password:</label>
				  <input name= "pass" required="true" type="password" class="form-control" id="pwd">
				</div>
				
				<div class="form-group">
				  <label  for="confirmation_pwd">Confirmation Password:</label>
				  <input name="checkpass" required="true" type="password" class="form-control" id="check_pwd">
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