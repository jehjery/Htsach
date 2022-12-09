<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./sachonl.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
.form-label{
    color: darkturquoise;
    form-check-label{
    color: darkturquoise!important;
    }
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse" style="min-width:1300px;width:100%;margin:0; color: #fff ; background-color: #02225D; opacity: 0.9;top:0;'">
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
      	<li><a href="dangky"><span class="glyphicon glyphicon-user"></span> Đăng Ký</a></li> 
  
    		<%}else {%>
    			 <li><a href="ktdn" <% request.setAttribute("lg", "o"); %>><span class="glyphicon glyphicon-log-in"></span> Đăng Xuất</a></li>
    			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> hi <%= session.getAttribute("dn") %></a></li> 
    			
    		<%} %>
    </ul>
  </div>
</nav>
	<section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form action="ktdn" method="post" style="    margin-top: 20rem;">
          <!-- Email input -->
          <div class="form-outline mb-4">
         	
         	 <input name="txtun" type="text" id="form1Example13" class="form-control form-control-lg" />
            
            <label class="form-label" for="form1Example13">Email address</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            
            <input name="txtpass" type="password" id="form1Example23" class="form-control form-control-lg" />
            
            <label class="form-label" for="form1Example23">Password</label>
          </div>

          <div class="d-flex justify-content-around align-items-center mb-4">
            <!-- Checkbox -->
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
              <label class="form-check-label" for="form1Example3"> Remember me </label>
            </div>
            <a class="xxx" href="#!">Forgot password?</a>
          </div>

          <!-- Submit button -->
          <input name="butlogin"  type="submit" value="login" 
                    class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"></input>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
          </div>

          <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
            role="button">
            <i class="fab fa-facebook-f me-2"></i>Continue with Facebook
          </a>
          <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
            role="button">
            <i class="fab fa-twitter me-2"></i>Continue with Twitter</a>

        </form>
      </div>
    </div>
  </div>
</section>
	</div>
</body>
</html>