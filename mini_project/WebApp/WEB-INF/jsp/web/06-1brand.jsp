<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>YD Dosirak</title>

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
<div class="page-header mb-0">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>About Us</h2>
			</div>
		</div>
	</div>
</div>
<!-- Page Header End -->

<!-- About Start -->
<div class="about">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6">
				<div class="about-img">
					<img src="img/about.jpg" alt="Image">
					<button type="button" class="btn-play" data-toggle="modal"
						data-src="https://www.youtube.com/embed/DWRcNpR6Kdc"
						data-target="#videoModal">
						<span></span>
					</button>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="about-content">
					<div class="section-header">
						<p>About Us</p>
						<h2>Cooking Since 1990</h2>
					</div>
					<div class="about-text">
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Phasellus nec pretium mi. Curabitur facilisis ornare velit non
							vulputate. Aliquam metus tortor, auctor id gravida condimentum,
							viverra quis sem.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Phasellus nec pretium mi. Curabitur facilisis ornare velit non
							vulputate. Aliquam metus tortor, auctor id gravida condimentum,
							viverra quis sem. Curabitur non nisl nec nisi scelerisque
							maximus. Aenean consectetur convallis porttitor. Aliquam interdum
							at lacus non blandit.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- About End -->


<!-- Video Modal Start-->
<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-body">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<!-- 16:9 aspect ratio -->
				<div class="embed-responsive embed-responsive-16by9">
					<iframe class="embed-responsive-item" src="" id="video"	allowscriptaccess="always" allow="autoplay"></iframe>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Video Modal End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
