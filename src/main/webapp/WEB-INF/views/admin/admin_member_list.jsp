<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원목록 조회</title>

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
		<header>
			<div class="container">
				<div class="row">
					<div class="col-6 col-sm-3 logo-column">
						<a href="index.html" class="logo"> <img src="/img/branches_text.png" alt="logo" style="width: 70px; height: 200px;">
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
		</header>

		<hr style="margin: 15px 15px 40px 15px;">

		<div class="container" style="text-align: center; margin: 25px;">
			<h3>
			<strong>관리자 페이지</strong>
			</h3>
		</div>

		<hr style="margin: 15px 15px 40px 15px;">
		
		
		<div class="container">
			<div class="row">
				<div class="col-md-3 contact-info" align="center">
				<div class="single-info" style="margin-bottom: 40px;">
	                    <h3>업체관리</h3><hr>
	                    <h5><a href="#">업체등록</a></h5>
	                    <h5><a href="#">업체목록 조회</a></h5>
	                </div><br/>
	                <div class="single-info" style="margin-bottom: 40px">
	                    <h3>회원관리</h3><hr>
	                    <h5><a href="#">회원정보 조회</a></h5>
	                </div><br/>
	                <div class="single-info" style="margin-bottom: 40px">
	                    <h3>고객 Q&A 목록</h3><hr>
	                    <h5><a href="#">통계</a></h5>
	                    <h5><a href="#">매출조회</a></h5>
	                    <h5><a href="#">검색순위 조회</a></h5>
	                </div>
				</div>

				
				<div class="col-md-9 contact-info">
					<h3 >
					<strong>회원 목록</strong>
					</h3><hr>
					
					<table class="n-table table-col" style="width: 100%; border-collapse: separate; border-spacing: 0 10px;">
						<colgroup>
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 20%">
						</colgroup>
						<thead>
							<tr style="text-align: center; border-bottom: 1px solid #444444;"> 
								<th scope="col"><h5><strong>회원ID</strong></h5></th>
								<th scope="col"><h5><strong>회원명</strong></h5></th>
								<th scope="col"><h5><strong>연락처</strong></h5></th>
								<th scope="col"><h5><strong>가입일</strong></h5></th>
								<th scope="col"><h5><strong>주문내역</strong></h5></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${mbr}" var="mbr">
							<tr style="text-align: center; border-bottom: 10px solid #fff;"> 
								<td scope="col" >
								<a href="${pageContext.request.contextPath}/rest_ksp/admin/mypage/member/${mbr.mbr_id}">
								${mbr.mbr_id }
								</a></td>
								<td scope="col" >
								<a href="${pageContext.request.contextPath}/rest_ksp/admin/mypage/member/${mbr.mbr_id}">
								${mbr.mbr_name }
								</a></td>
								<td scope="col">${mbr.contact_number }</td>
								<td scope="col">${mbr.jdate }</td>
								<td scope="col"><button type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/rest_ksp/admin/mypage/seller/${mbr.mbr_id}/prdct'">조회</button></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					</br>
					<hr>
					
					<div>
						<ul class="pagination" >
							<c:choose>
								<c:when test="${pageMaker.prev}">
									<li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item  disabled"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:otherwise>
							</c:choose>

							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
								<li class="page-item active"><a class="page-link" href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
							</c:forEach>
							
							<c:choose>
							<c:when test="${pageMaker.next && pageMaker.endPage > 0}">
								<li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:otherwise>
							</c:choose>
						</ul>
					</div>
					
				</div>
			</div>
		</div>
		<hr>
		
		
		<!-- footer -->
		<div>
			<div class="footer-top">
				<div class="container" align="center">
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
		</div>
		
		
		<div class="container-fluid">
			<small style="color: black;"> <strong>상호명 :</strong> (주)브랜치스 <strong>소재지 :</strong> 서울특별시 00구 00로00길 00 00빌딩 0층 <strong>팩스 :</strong>
				000-0000-0000 <strong>사업자등록번호 :</strong> 000-00-000000 <strong>통신판매업신고 :</strong> 0000-서울종로-00000
			</small> <br /> <small style="color: black;"><strong>고객센터</strong> 0000-0000 평일 10:00 ~ 17:00 / Off-time 12:00 ~ 14:00 (토/일/공휴일 휴무) <strong>이메일</strong>
				customer@29cm.co.kr <strong>대표이사</strong> 000 <strong>개인정보책임자</strong> 000 <strong>호스팅서비스</strong> (주)00000</small>
		</div>
		<br /><br />
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
		
		
	</div>
</body>
</html>
</body>
</html>