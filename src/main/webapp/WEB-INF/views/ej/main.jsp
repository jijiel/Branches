<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Flat Pro || Buisness HTML template</title>

<!-- Required CSS files -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<link rel="stylesheet" href="/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/assets/css/barfiller.css">
<link rel="stylesheet" href="/assets/css/animate.css">
<link rel="stylesheet" href="/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/slicknav.css">
<link rel="stylesheet" href="/assets/css/main.css">
<link rel="stylesheet" href="/bootstrap.min.css">
</head>
<body>
<div style="overflow: hidden;" class="container">
	<header style="padding-bottom: 10px;">
		<div class="container">
			<div class="row">
				<div class="col-6 col-sm-3 logo-column">
					<a href="index.html" class="logo"> <img src="/img/branches_text.png" alt="logo">
					</a>
				</div>
				<div class="col-6 col-sm-9 nav-column clearfix">
					<div class="right-nav">
						<span class="search-icon fa fa-search"></span>
						<form action="#" class="search-form">
							<input type="search" placeholder="search now">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
						<div class="header-social">
							<a href="#" class="fa fa-facebook"></a> <a href="#" class="fa fa-twitter"></a> <a href="#" class="fa fa-github"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
			<nav id="menu" class="d-none d-lg-block">
				<ul style="padding: 10px;">
					<li class="current-menu-item has-child"><a href="index.html">OUTER</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">TOP</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">BOTTOM</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">SHOES</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">ACC</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">BRAND</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li class="current-menu-item has-child"><a href="index.html">SALE</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul></li>
					<li><a href="index.html">|</a>
					</li>
					<li class="current-menu-item has-child"><a href="index.html">NOTICE</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul>
					</li>
					<li class="current-menu-item has-child"><a href="index.html">MAGAZINE</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul>
					</li>
					<li class="current-menu-item has-child"><a href="index.html" style="margin-right: 38px;">Q&A</a>
						<ul class="sub-menu">
							<li><a href="index.html">Home - 01</a></li>
							<li><a href="index-2.html">Home - 02</a></li>
							<li><a href="index-3.html">Home - 03</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</header>
	<div class="container">
		<section>
			<article>
				<div id="demo" class="carousel slide" data-ride="carousel">
					<!-- 밑 사진 갯수 표시 -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
						<li data-target="#demo" data-slide-to="3"></li>
					</ul>

					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="<c:url value="/img/1.jpg"/>" width="100%" height="650px">
						</div>
						<div class="carousel-item">
							<img src="<c:url value="/img/2.jpg"/>" width="100%" height="650px">
						</div>
						<div class="carousel-item">
							<img src="<c:url value="/img/3.jpg"/>" width="100%" height="650px">
						</div>
						<div class="carousel-item">
							<img src="<c:url value="/img/4.jpg"/>" width="100%" height="650px">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next"> <span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</article>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<article>
				<!-- 상품소개 1 -->
				<div>
					<h2 style="text-align: center; font-family: fantasy;">New Arrival</h2>
					<br />
					<br /> <span class="col"> <img src="<c:url value="/img/5.jpg"/>" width="242px" height="400px">
					</span> <span class="col"> <img src="<c:url value="/img/6.jpg"/>" width="242px" height="400px">
					</span> <span class="col"> <img src="<c:url value="/img/7.jpg"/>" width="242px" height="400px">
					</span> <span class="col"> <img src="<c:url value="/img/8.jpg"/>" width="242px" height="400px">
					</span>
				</div>
			</article>
			<article>
				<a class="text-dark" href="#" style="text-decoration: none; float: left;">
					<p>
						<strong><h5>&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
					</p>
					<h6>
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 78px;">
					<p>
						<strong><h5>Balenciaga</h5></strong>
					</p>
					<h6>
						<strong>[단독]</strong> Denim Jaket & Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 58px;">
					<p>
						<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
					</p>
					<h6>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 5px;">
					<p>
						<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
					</p>
					<h6>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a>
			</article>
			<!-- 상품소개 1 end -->
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<!-- 상품소개 2 -->
			<article>
				<!-- 상품소개 1 -->
				<div>
					<h2 style="text-align: center; font-family: fantasy;">Best Pick</h2>
					<br />
					<br /> <span class="col"> <img src="<c:url value="/img/5.jpg"/>" width="242px" height="400px">
					</span> <span class="col"> <img src="<c:url value="/img/6.jpg"/>" width="242px" height="400px">
					</span> <span class="col"> <img src="<c:url value="/img/7.jpg"/>" width="242px" height="400px">
					</span> <span class="col"> <img src="<c:url value="/img/8.jpg"/>" width="242px" height="400px">
					</span>
				</div>
			</article>
			<article>
				<a class="text-dark" href="#" style="text-decoration: none; float: left;">
					<p>
						<strong><h5>&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
					</p>
					<h6>
						&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 78px;">
					<p>
						<strong><h5>Balenciaga</h5></strong>
					</p>
					<h6>
						<strong>[단독]</strong> Denim Jaket & Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 58px;">
					<p>
						<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
					</p>
					<h6>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a> <a class="text-dark" href="#" style="text-decoration: none; float: left; margin-left: 5px;">
					<p>
						<strong><h5>&nbsp;&nbsp;&nbsp;&nbsp;Balenciaga</h5></strong>
					</p>
					<h6>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>[단독]</strong> Denim Jaket & Denim Pants
					</h6> <br />
					<h5>
						&nbsp;&nbsp;&nbsp;&nbsp;470,200&nbsp;&nbsp;&nbsp;&nbsp;<small><strike>537,200</strike></small>
					</h5>
				</a>
			</article>
			<!-- 상품소개 2 end -->
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<h3 style="text-align: center;">나중에 추가사항있으시면 반영해서 넣겠습니다.</h3>
			<!-- footer -->
		</section>
		<article>
			<nav>
				<ul class="nav justify-content-center bg-dark" style="font-family: sans-serif;">
					<li class="nav-item col-md"><a class="nav-link text-white" href="#">회사소개</a></li>
					<li class="nav-item col-md"><a class="nav-link text-white" href="#">제휴문의</a></li>
					<li class="nav-item col-md"><a class="nav-link text-white" href="#">이용약관</a></li>
					<li class="nav-item col-md"><a class="nav-link text-white" href="#">고객센터</a></li>
					<li class="nav-item col-md"><a class="nav-link text-white" href="#">채용정보</a></li>
					<li class="nav-item col-md"><a class="nav-link text-white" href="#">개인정보처리</a></li>
				</ul>
			</nav>
		</article>
		<!-- footer -->
		<footer>
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-lg-3 footer_widget">
							<div class="inner">
								<h4>About</h4>
							</div>
						</div>
						<div class="col-md-6 col-lg-3 footer_widget">
							<div class="inner">
								<h4>Company</h4>

							</div>
						</div>
						<div class="col-md-6 col-lg-3 footer_widget">
							<div class="inner">
								<h4>Recent Posts</h4>
							</div>
						</div>
						<div class="col-md-6 col-lg-3 footer_widget">
							<div class="inner">
								<h4>Address</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright-txt">© 2017 Flat Pro. All Rights Reserved.</div>
						</div>
						<div class="col-lg-6 text-right">
							<div class="footer-nav">
								<a href="#">Home</a> <a href="#">Portfolio</a> <a href="#">Pages</a> <a href="#">Shortcode</a> <a href="#">Blog</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<div class="container-fluid">
			<small style="color: black;"> <strong>상호명 :</strong> (주)브랜치스 <strong>소재지 :</strong> 서울특별시 00구 00로00길 00 00빌딩 0층 <strong>팩스 :</strong>
				000-0000-0000 <strong>사업자등록번호 :</strong> 000-00-000000 <strong>통신판매업신고 :</strong> 0000-서울종로-00000
			</small> <br /> <small style="color: black;"><strong>고객센터</strong> 0000-0000 평일 10:00 ~ 17:00 / Off-time 12:00 ~ 14:00 (토/일/공휴일 휴무) <strong>이메일</strong>
				customer@29cm.co.kr <strong>대표이사</strong> 000 <strong>개인정보책임자</strong> 000 <strong>호스팅서비스</strong> (주)00000</small>
		</div>

		<!--Required JS files-->
		<script src="/assets/js/jquery-2.2.4.min.js"></script>
		<script src="/assets/js/vendor/popper.min.js"></script>
		<script src="/assets/js/vendor/bootstrap.min.js"></script>
		<script src="/assets/js/vendor/owl.carousel.min.js"></script>
		<script src="/assets/js/vendor/isotope.pkgd.min.js"></script>
		<script src="/assets/js/vendor/jquery.barfiller.js"></script>
		<script src="/assets/js/vendor/loopcounter.js"></script>
		<script src="/assets/js/vendor/slicknav.min.js"></script>
		<script src="/assets/js/active.js"></script>
</body>
</html>