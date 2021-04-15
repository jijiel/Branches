<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Branches : Main</title>
	
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
		<!-- header -->
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common/header.jsp"></jsp:include>

		<div class="hero-slider">
			<!-- 슬라이드 바 -->
			<c:forEach var="i" begin="1" end="4">
				<div class="single-slide" style="background-image: url(/hs/${i}.jpg)">
					<div class="inner">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-lg-6 text-center">
									<div class="slide-content">
										<h2 style="color: white;">Balenciaga</h2>
										<c:choose>
											<c:when test="${i eq 1}">
												<p style="color: white;">
													21/22 SS 오직 Branches에서만<br />[단독] 판매 시작!
												</p>
											</c:when>
											<c:when test="${i eq 2}">
												<p style="color: white;">2021.03.20.00:00</p>
											</c:when>
											<c:when test="${i eq 3}">
												<p style="color: white;"></p>
											</c:when>
											<c:otherwise>
												<p style="color: white;"></p>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />

		<article>
			<!-- 상품소개 1 -->
			<div class="section-title">
				<h2>New Arrival</h2>
				<p>Branches와 함께 매주 새로운 신상품을 둘러보세요!</p>
			</div>
			<div class="team-area sp">
				<div class="container">
					<div class="row">

						<c:forEach items="${prdct}" var="prdct" varStatus="status" begin="0" end="3">
							<div class="col-sm-6 col-md-4 col-lg-3 single-team">
								<div class="inner">
									<a href="/prdct/${prdct.prdct_id}" style="text-decoration: none;">
										<div class="team-img">${prdct.prdct_thumbnail}</div>
										<div class="team-content">
											<h4>${prdct.mbr_id }</h4>
											<h5>${prdct.prdct_name}</h5>
											<h5>${prdct.prdct_price}₩</h5>
											<h6>
												<del>${prdct.prdct_price *2}₩</del>
											</h6>
										</div>
									</a>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</article>
		<br /> <br />
		<article>
			<!-- 상품소개 2 -->
			<div class="section-title">
				<h2>Best Pick!</h2>
				<p>Branches에서 가장 Hot한 상품들을 둘러보세요!</p>
			</div>
			<div class="team-area sp">
				<div class="container">
					<div class="row">
						<c:forEach items="${prdct }" var="prdct" begin="0" end="3" varStatus="status">
							<div class="col-sm-6 col-md-4 col-lg-3 single-team">
								<div class="inner">
									<a href="/prdct/${prdct.prdct_id}" style="text-decoration: none;">
										<div class="team-img">${prdct.prdct_thumbnail}</div>
										<div class="team-content">
											<h4>${prdct.mbr_id }</h4>
											<h5>${prdct.prdct_name}</h5>
											<h5>${prdct.prdct_price}₩</h5>
											<h6>
												<del>${prdct.prdct_price *2}₩</del>
											</h6>
										</div>
									</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</article>
		<br /> <br /><br /> <br />
		<div class="section-title">
			<h2>BRAND</h2>
			<p>최고급 브랜드부터 가성비 브랜드까지 모두 소개해드립니다!</p>
		</div>
	</div>
			<div class="container">
				<div class="testimonial-slider bordered">
				<c:forEach begin="50" end="54" var="j">
					<div class="single-slide" style="background-image: url(/hs/${j}.jpg); height:300px; background-size : 100% 100%;">
						<div class="inner">
							<c:choose>
								<c:when test="${j eq 50}">
								</c:when>
								<c:when test="${j eq 51}">
								</c:when>
								<c:when test="${j eq 52}">
								</c:when>
								<c:when test="${j eq 53}">
								</c:when>
								<c:when test="${j eq 54}">
								</c:when>
							</c:choose>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		<br /> <br /><br /> <br /><br /> <br />
		<div style="overflow: hidden;" class="container">
			<div class="portfolio-area sp">
				<div class="container">
					<div class="section-title">
						<h2>MD Pick</h2>
						<p>무엇을 입어야 할지 고민이라구요?? Branches MD분들이 매주 여러분들을 위해 Best상품을 추천해드립니다!</p>
					</div>
					<div class="row">
						<c:forEach items="${prdct }" var="prdct" begin="0" end="2">
							<div class="col-md-4 single-team">
								<div class="inner">
									<a href="/prdct/${prdct.prdct_id}" style="text-decoration: none;">
										<div class="team-img">${prdct.prdct_thumbnail}</div>
										<div class="team-content">
											<h4>${prdct.mbr_id }</h4>
											<h5>${prdct.prdct_name}</h5>
											<h5>${prdct.prdct_price}₩</h5>
											<h6>
												<del>${prdct.prdct_price *2}₩</del>
											</h6>
										</div>
									</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div><br/><br/><br/><br/>
		<div class="gallery-area spb">
			<div class="container">
				<div class="section-title" data-margin="0 0 40px">
					<h2>Rising Brand</h2>
					<p>브랜치스는 국내패션브랜드 홍보프로젝트로 매달 뜨고있는 신진 패션브랜드를 소개해드립니다!</p>
				</div>
				<div class="row">
					<div class="col-md-6 single-gallery">
						<div class="inner">
							<img src="/hs/51.jpg" style="object-fit : cover; height: 670px;">
						</div>
					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-sm-6 single-gallery">
								<div class="inner">
									<img src="/hs/12.jpg" style="object-fit : cover; height: 320px;">
								</div>
							</div>
							<div class="col-sm-6 single-gallery">
								<div class="inner">
									<img src="/hs/13.jpg" style="object-fit : cover; height: 320px;">
								</div>
							</div>
							<div class="col-sm-6 single-gallery">
								<div class="inner">
									<img src="/hs/14.jpg" style="object-fit : cover; height: 320px;">
								</div>
							</div>
							<div class="col-sm-6 single-gallery">
								<div class="inner">
									<img src="/hs/11.jpg" style="object-fit : cover; height: 320px;">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		<jsp:include page="${pageContext.request.contextPath }/WEB-INF/views/common/footer.jsp"></jsp:include>
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