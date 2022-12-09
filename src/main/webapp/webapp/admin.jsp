<%@page import="Bo.Giohang"%>
<%@page import="bean.giohangbean"%>
<%@page import="Bo.loaibo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
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
	<nav class="navbar navbar-inverse" style="min-width:1300px;width:100%;margin:0; color: #fff ; background-color: #02225D; opacity: 0.9;top:0;'">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="loai_admin">Trang quản trị</a>
    </div>
    <ul class="nav navbar-nav ">
      
      <li><a href="">Loại sách</a></li>
      <li><a href="">Sách</a></li>
      <li>
      <a href="">Xác Nhận Hóa Đơn</a>
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
    <div class="app">
      <div class="app__container">
        <div class="grid wide">
          <div class="row sm-gutter app__content">
            <!-- Category -->
            <div class="col l-2 m-0 c-0">
              <nav class="category">
                <h3 class="category__heading">
                  Danh mục
                </h3>
                <ul class="category-list">
                  <li class="category-item category-item--active">
                    <a href="#" class="category-item__link"><%= session.getAttribute("dn")%></a>
                  
				<%	   
						request.setCharacterEncoding("utf-8");
						response.setCharacterEncoding("utf-8");
					
				   ArrayList<loaibean> listloai = (ArrayList<loaibean>)request.getAttribute("loai");
				   for(loaibean l: listloai){ %>	
					<%if (l.getTenloai()!=null){ %>
					<tr><td>
					<li style="display: flex;" class="category-item ">
					<a href="XoaLoai?maloai=<%=l.getMaloai()%>&tenloai=<%=l.getTenloai()%>">Xoa</a>
					<a class="category-item__link" href="Sualoai.jsp?maloai=<%=l.getMaloai()%>&tenloai=<%=l.getTenloai()%>" >
						<%= l.getTenloai()%></a><% }%>
								</li><%} %> 
					<li><a href="Themloai">Thêm mới loại sách</a></li>	
					<li><a href="ThemSach">Thêm mới sách</a></li>	
                </ul>
              </nav>
            </div>
    <div class="col l-10 m-12 c-12">
              <!-- Filter -->
              <div class="home-filter hide-on-mobile-tablet">
                <span class="home-filter__label">Sắp xếp theo</span>
                <button class="home-filter__btn btn">Phổ biến</button>
                <button class="home-filter__btn btn btn--primary">
                  Mới nhất
                </button>
                <button class="home-filter__btn btn">Bán chạy</button>
                <div class="select-input">
                  <span class="select-input__label">Giá</span>
                  <i class="select-input__icon fas fa-angle-down"></i>
                  <!-- List option -->
                  <ul class="select-input__list">
                    <li class="select-input__item">
                      <a href="#" class="select-input__link"
                        >Giá: Thấp đến Cao</a
                      >
                    </li>
                    <li class="select-input__item">
                      <a href="#" class="select-input__link"
                        >Giá: Cao đến Thấp</a
                      >
                    </li>
                  </ul>
                </div>
                <div class="home-filter__page">
                  <span class="home-filter__page-num">
                    <span class="home-filter__page-current"><%=request.getAttribute("trang") %></span>/<%=listloai.size() %>
                  </span>

                  <div class="home-filter__page-control">
                    <a
                      href="htsach?page=<%=(int) request.getAttribute("trang")-1 %>"
                      class="home-filter__page-btn home-filter__page-btn--disabled">
                      <i class="home-filter__page-icon fas fa-angle-left"></i>
                    </a>
                    <a  href="htsach?page=<%=(int) request.getAttribute("trang")+1 %>" class="home-filter__page-btn">
                      <i class="home-filter__page-icon fas fa-angle-right"></i>
                    </a>
                    
                  </div>
                </div>
              </div>

              <!-- Mobile Category -->
              <nav class="mobile-category">
                <ul class="mobile-category__list">
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                  <li class="mobile-category__item">
                    <a href="#" class="mobile-category__link">Dụng cụ & Thiết bị tiện ích</a>
                  </li>
                </ul>
              </nav>
              <!-- Product -->
          

              <div class="home-product">
                <div class="row sm-gutter">
                  <!-- Product item -->
                <%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
                ArrayList<sachbean> list = (ArrayList<sachbean>)request.getAttribute("dsSach");
	   		    for(int i=0;i<list.size();i++){	
	   		    	sachbean  s=list.get(i);
	   		     %>
                  <div class="col l-2-4 m-4 c-6">
                    <a href="SuaSach.jsp?masach=<%=s.getMasach()%>&maloai=<%=s.getMaloai()%>&Tensach=<%=s.getTensach()%>&tacgia=<%=s.getTacgia()%>&soluong=<%=s.getSoluong() %>&gia=<%=s.getGia() %>&anh=<%=s.getAnh()%>" 
                    class="home-product-item">
                      <div
                        class="home-product-item__img"
                        style="background-image: url(<%=s.getAnh() %>); ">
                        </div>
                      <h4 class="home-product-item__name">
                         <%=s.getTensach() %>
                      </h4>
                      <div class="home-product-item__price">
                        <span class="home-product-item__price-old"
                          ><%=s.getGia()*1.5 %></span
                        >
                        <span class="home-product-item__price-current" style="font-size: 2.6rem;"
                          ><%=s.getGia() %></span>
                      </div>
                      <div class="home-product-item__action">
                        <span
                          class="home-product-item__like home-product-item__like--liked"
                        >
                          <i
                            class="home-product-item__like-icon-empty far fa-heart"
                          ></i>
                          <i
                            class="home-product-item__like-icon-fill fas fa-heart"
                          ></i>
                        </span>
                        <div class="home-product-item__rating">
                          <i
                            class="home-product-item__star--gold fas fa-star"
                          ></i>
                          <i
                            class="home-product-item__star--gold fas fa-star"
                          ></i>
                          <i
                            class="home-product-item__star--gold fas fa-star"
                          ></i>
                          <i
                            class="home-product-item__star--gold fas fa-star"
                          ></i>
                          <i class="fas fa-star"></i>
                        </div>
                        <div class="home-product-item__sold">88 Đã bán</div>
                      </div>
                      <div class="home-product-item__origin">
                        <span class="home-product-item__brand"><%=s.getTacgia()%></span>
                        <span class="home-product-item__origin-name">		
                        <form action="XoaSach"method="post" style="margin: -2px;">
						<button style="color: #000;
    					background: red;" value="<%=s.getMasach() %>" 
    					name="SACHXOA"type="submit">XÓA</button>
						</form>
						</span
                        >
                      </div>
                      <div class="home-product-item__favourite">
                        <i class="fas fa-check "></i>
                        <span>Yêu thích</span>
                      </div>
                      <div class="home-product-item__sale-off">
                        <span class="home-product-item__sale-off-percent"
                          >43%</span
                        >
                        <span class="home-product-item__sale-off-label"
                          >GIẢM</span
                        >
                      </div>
                    </a>
                  </div>
                      <%} %>
          		</div>
        
       		 </div>
       		   <ul class="pagination home-product__pagination">
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" 
    				href="" class="pagination-item__link">
                    <i class="pagination-item__icon fas fa-angle-left"></i>
                  </a>
                </li>
                <li  class="pagination-item pagination-item--active">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;"href="htsach?page=1" class="pagination-item__link">1</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="htsach?page=2" class="pagination-item__link">2</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="htsach?page=3" class="pagination-item__link">3</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="htsach?page=4" class="pagination-item__link">4</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="htsach?page=5" class="pagination-item__link">5</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="htsach?page=6" class="pagination-item__link">6</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="" class="pagination-item__link">...</a>
                </li>
                <li class="pagination-item">
                  <a style="	
    padding-bottom: 32px;
    --height: 30px;
    text-decoration: none;
    font-size: 2rem;
    font-weight: 300;
    color: #939393;
    min-width: 40px;
    height: var(--height);
    display: block;
    text-align: center;
    line-height: var(--height);
    border-radius: 2px;
    border: none;
    background-color: transparent;" href="" class="pagination-item__link">
                    <i class="pagination-item__icon fas fa-angle-right"></i>
                  </a>
                </li>
              </ul>
        </div>
        </div>
        </div>
      </div>
      <!-- Footer -->
      <footer class="footer">
        <div class="grid wide footer__content">
          <div class="row">
            <div class="col l-2-4 m-4 c-6">
              <h3 class="footer__heading">CHĂM SÓC KHÁCH HÀNG</h3>
              <ul class="footer-list">
                <li class="footer-item">
                  <a href="#" class="footer-item__link">Trung Tâm Trợ Giúp</a>
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">Hướng Dẫn Mua Hàng</a>
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link"
                    >Chính Sách Vận Chuyển</a
                  >
                </li>
              </ul>
            </div>
            <div class="col l-2-4 m-4 c-6">
              <h3 class="footer__heading">VỀ CHÚNG TÔI</h3>
              <ul class="footer-list">
                <li class="footer-item">
                  <a href="#" class="footer-item__link">Giới Thiệu Về Shop</a>
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">Tuyển Dụng</a>
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">Điều Khoản Shop</a>
                </li>
              </ul>
            </div>
            <div class="col l-2-4 m-4 c-6">
              <h3 class="footer__heading">DANH MỤC</h3>
              <ul class="footer-list">
                <li class="footer-item">
                  <a href="#" class="footer-item__link">mức</a>
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">Đầu buồi</a>
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">ôn lằn</a>
                </li>
              </ul>
            </div>
            <div class="col l-2-4 m-4 c-6">
              <h3 class="footer__heading">THEO DÕI CHÚNG TÔI TRÊN</h3>
              <ul class="footer-list">
                <li class="footer-item">
                  <a href="#" class="footer-item__link">
                    <i class="footer-item__icon fab fa-facebook-square"></i>
                    Facebook</a
                  >
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">
                    <i class="footer-item__icon fab fa-instagram-square"></i>
                    Instagram</a
                  >
                </li>
                <li class="footer-item">
                  <a href="#" class="footer-item__link">
                    <i class="footer-item__icon fab fa-linkedin"></i>
                    Linkedin</a
                  >
                </li>
              </ul>
            </div>
            <div class="col l-2-4 m-8 c-12">
              <h3 class="footer__heading">VÀO CỬA HÀNG TRÊN ỨNG DỤNG</h3>
              <div class="footer__download">
                <img
                  src="data:image/png;base64,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"
                  alt="Download QR"
                  class="footer__dowload-qr"
                />
                <div class="footer__download-apps">
                  <a href="#" class="footer__download-app-link">
                    <img
                      src="./assets/img/google_play.png"
                      alt="Google Play"
                      class="footer__download-app-img"
                    />
                  </a>
                  <a href="#" class="footer__download-app-link">
                    <img
                      src="./assets/img/appstore.png"
                      alt="App store"
                      class="footer__download-app-img"
                    />
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="footer__bottom">
          <div class="grid wide">
            <p class="footer__text">
              © 2022 sốp pi phake
            </p>
          </div>
        </div>
</body>
</html>