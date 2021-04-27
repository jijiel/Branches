<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Branches : My Product QNA List</title>
	
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
	
	<!-- 달력으로 날짜 선택 -->
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	
	<!-- <script type="text/javascript">
	    $(document).ready(function () {
	            $.datepicker.setDefaults($.datepicker.regional['ko']); 
	            $( "#birthDate" ).datepicker({
	                 changeMonth: true, 
	                 changeYear: true,
	                 nextText: '다음 달',
	                 prevText: '이전 달', 
	                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
	                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	                 dateFormat: "yymmdd",
	                 maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
	                     
	 
	            });
	             
	    });
	</script> -->
</head>
<body>
	<div style="overflow: hidden;" class="container">
		<!-- header -->
		<jsp:include page="${pageContext.request.contextPath}/WEB-INF/views/common/header.jsp"></jsp:include>

		<hr style="margin: 15px 15px 40px 15px;">
		
		<!-- 상단 회원 정보 요약 -->
		<div class="container">
			<div class="row" style="height: 50px;">
				<div class="col-md-3 contact-info" align="left" style="padding-left: 15px; margin-top: 10px; text-align: center;">
					<h2>${mbr.mbr_name}</h2>
				</div>
				<div class="col-md-1 contact-info" style="padding-top: 20px;">
					<a href="${pageContext.request.contextPath}/member/mypage/myinfo">정보수정</a>
				</div>
				<div class="col-md-6 contact-info"></div>
				<div class="col-md-2 contact-info" align="center" style="padding-right: 10px">
					<h2>Point</h2>
					<h3>${mbr.mbr_point}</h3>
				</div>
			</div>
			<span style="margin-left: 14px;"> </span> <span style="margin-left: 400px;" align="center"> </span>
		</div>

		<hr style="margin: 15px 15px 40px 15px;">

		<div class="container">
			<div class="row">
				<!-- 왼쪽 사이드 메뉴  -->
				<div class="col-md-3 contact-info" align="center">
					<div class="single-info" style="margin-bottom: 40px">
						<h3>나의 쇼핑활동</h3>
						<hr>
						<h5>
							<a href="${pageContext.request.contextPath}/member/mypage/order">주문내역 조회</a>
						</h5>
						<h5>
							<a href="${pageContext.request.contextPath}/member/mypage/recently">최근 본 상품</a>
						</h5>
						<h5>
							<a href="${pageContext.request.contextPath}/member/mypage/like">찜한 목록</a>
						</h5>
					</div>
					<div class="single-info" style="margin-bottom: 40px">
						<h3>매거진</h3>
						<hr>
						<h5>
							<a href="${pageContext.request.contextPath}/board/magazine">매거진</a>
						</h5>
					</div>
					<div class="single-info" style="margin-bottom: 40px">
						<h3>내가 쓴 글보기</h3>
						<hr>
						<h5>
							<a href="${pageContext.request.contextPath}/member/mypage/review/list">구매후기</a>
						</h5>
						<h5>
							<a href="${pageContext.request.contextPath}/member/mypage/prdctq/list">상품문의</a>
						</h5>
						<h5>
							<a href="${pageContext.request.contextPath}/member/mypage/myqna/list">고객Q&A</a>
						</h5>
					</div>
				</div>

				<!-- 오른쪽 본문 -->
				<div class="col-md-9 contact-info" style="border-left: 1px solid rgba(0, 0, 0, .1);">
					<div class="container">
						<div class="row" style="padding: 0px 2% 0px 2%">
							<div class="col-md-6" align="left">
								<h3>
									<strong>내가 쓴 상품 Q&A</strong>
								</h3>
							</div>
						</div>
						
						<hr>	
						
						<div class="row" style="padding: 0px 2% 0px 2%">
							<div class="col-md-3" align="center">
								<h5>문의유형</h5>	
							</div>
							<div class="col-md-3" align="center">
								<h5>Q&A제목</h5>	
							</div>
							<div class="col-md-3" align="center">
								<h5>작성일자</h5>	
							</div>
							<div class="col-md-3" align="center">
								<h5>답변확인</h5>	
							</div>					
							<%-- <table class="n-table table-col">
								<colgroup>
									<col style="width: 30%">
									<col style="width: *">
									<col style="width: 15%">
									<col style="width: 15%">
								</colgroup>
								<thead>
									<tr style="text-align: center;">
										<th scope="col">상품정보</th>
										<th scope="col">내용</th>
										<th scope="col">작성일</th>
										<th scope="col">처리 상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<c:forEach items="${prdctq_my_list}" var="list">
											<td>${list.orderDetailVO.prdct_id}/${list.orderDetailVO.order_color}/${list.orderDetailVO.order_size}</td>
											<td>${list.order_date}</td>
											<td>${list.boardVO.board_content}</td>
										</c:forEach>
									</tr>
								</tbody>
							</table> --%>
						</div>
						
						<hr>
						
						<!-- 상품 Q&A의 문의유형 -->
						<c:forEach items="${prdctq_my_list}" var="list">
						<div class="row" style="padding: 0px 2% 0px 2%">
							<div class="col-md-3" align="center" style="padding-top: 1%;">
								<c:choose>
									<c:when test="${list.inquiry_number eq 1}">
										교환
									</c:when>
									<c:when test="${list.inquiry_number eq 2}">
										환불
									</c:when>
									<c:when test="${list.inquiry_number eq 3}">
										배송전취소
									</c:when>
									<c:when test="${list.inquiry_number eq 4}">
										배송
									</c:when>
									<c:when test="${list.inquiry_number eq 5}">
										불량
									</c:when>
									<c:when test="${list.inquiry_number eq 6}">
										주문및결제
									</c:when>
									<c:when test="${list.inquiry_number eq 7}">
										상품및재입고
									</c:when>	
									<c:otherwise>
										기타
									</c:otherwise>
								</c:choose>	
							</div>
							<div class="col-md-3" align="center" style="padding-top: 1%; overflow: auto;">
								<a href="${pageContext.request.contextPath}/member/mypage/myqna/${list.board_id}">${list.board_name}</a>
							</div>
							<div class="col-md-3" align="center" style="padding-top: 1%;">
								${list.board_date}
							</div>
							<div class="col-md-3" align="center" style="padding-top: 1%;">
								${prdctq_cmnt_stat.comment_count > 0 ?  '답변완료' : '답변대기'}
							</div>
						</div>
						<hr>
						</c:forEach>
					</div>	
					
					<!-- 페이징 -->
					<div class="container">
						<ul class="pagination justify-content-center">
							<c:choose>
								<c:when test="${pageMaker.prev}">
									<li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item disabled"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
								</c:otherwise>
							</c:choose>

							<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
								<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
								<li class="page-item ${pageMaker.cri.pageNum == idx ? 'active' : '' }"><a class="page-link" href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
							</c:forEach>

							<c:choose>
								<c:when test="${pageMaker.next && pageMaker.endPage > 0}">
									<li class="page-item disabled"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link" href="${pageMaker.makeQuery(pageMaker.endPage +1) }">&raquo;</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
					
				</div>
			</div>
		</div>
		<hr>

		<!-- footer -->
		<jsp:include page="${pageContext.request.contextPath }/WEB-INF/views/common/footer.jsp"></jsp:include>

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