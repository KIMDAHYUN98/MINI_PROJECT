<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>Burger King - Food Website Template</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Nunito:600,700" rel="stylesheet">

<!-- CSS 라이브러리 -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

<!-- CSS 스타일 -->
<link href="css/style.css" rel="stylesheet">
</head>
<jsp:include page="../common/menu.jsp" />

<!-- 페이지 내용 Start -->
<!-- Page Header Start -->
<div class="page-header">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>Food Blog</h2>
			</div>
			<div class="col-12">
				<a href="">Home</a> <a href="">Blog</a>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->
<!-- Store Start -->
<div class="blog">
	<div class="container">
		<div class="section-header text-center">
			<p>Food Blog</p>
			<h2>Latest From Food Blog</h2>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="blog-item">
					<div class="blog-img">
						<img src="img/blog-1.jpg" alt="Blog">
					</div>
					<div class="blog-content">
						<h2 class="blog-title">Lorem ipsum dolor sit amet</h2>
						<div class="blog-meta">
							<p>
								<i class="far fa-user"></i>Admin
							</p>
							<p>
								<i class="far fa-list-alt"></i>Food
							</p>
							<p>
								<i class="far fa-calendar-alt"></i>01-Jan-2045
							</p>
							<p>
								<i class="far fa-comments"></i>10
							</p>
						</div>
						<div class="blog-text">
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor. Lorem ipsum
								dolor sit amet elit. Neca pretim miura bitur facili ornare velit
								non vulpte</p>
							<a class="btn custom-btn" href="">Read More</a>
						</div>
					</div>
				</div>
			</div>
			
		</div>
		<div class="row">
			<div class="col-12">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item active"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- Store End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
