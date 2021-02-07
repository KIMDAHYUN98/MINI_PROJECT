<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>YD Dosirak</title>
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
<!-- 페이지 Header Start -->
<div class="page-header mb-0">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h2>Food Menu</h2>
			</div>
		</div>
	</div>
</div>
<!-- 페이지 Header End -->

<!-- Food Start -->
<div class="food mt-0">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md-4">
				<div class="food-item">
					<i class="fas fa-utensils"></i>
					<h2>도시락</h2>
					<p>
						저렴한 가격과 웰빙식자재를 통해<br>
						소비자들의 입맛에 맞는 소비욕구를<br>
						충족시키려 노력합니다.
					</p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="food-item">
				<i class="fas fa-cookie-bite"></i>
					<h2>스낵</h2>
					<p>
						국내산 재료만을 이용해 만든 사이드<br>
						디쉬 입니다. 후식이나 반찬으로 즐길수<br>
						있도록 노력해 탄생한 음식들입니다.
					</p>
				</div>
			</div>
			<div class="col-md-4">
				<div class="food-item">
				<i class="fas fa-wine-glass-alt"></i>
					<h2>음료</h2>
					<p>
						한 입 가득 기분 좋은 달콤함,<br>
						음료에도 식재료를 깐깐하게 골라<br>
						자연이 빚은 건강함 그대로 담았습니다.
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Food End -->

<!-- Menu Start -->
<div class="menu">
	<div class="container">
		<div class="section-header text-center">
			<h2>Food Menu</h2>
		</div>
		<div class="menu-tab">
			<ul class="nav nav-pills justify-content-center">
				<li class="nav-item"><a class="nav-link active"	data-toggle="pill" href="#dosirak">도시락</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"	href="#snacks">스낵</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="pill"	href="#beverages">음료</a></li>
			</ul>
			<div class="tab-content">
				<div id="dosirak" class="container tab-pane active">
					<div class="row">
						<div class="col-lg-7 col-md-12">
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-burger.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Mini cheese Burger</span> <strong>$9.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-burger.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Double size burger</span> <strong>$11.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-burger.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Bacon, EGG and Cheese</span> <strong>$13.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-burger.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Pulled porx Burger</span> <strong>$18.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-burger.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Fried chicken Burger</span> <strong>$22.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
						</div>
						<div class="col-lg-5 d-none d-lg-block">
							<img src="img/menu-burger-img.jpg" alt="Image">
						</div>
					</div>
				</div>
				<div id="snacks" class="container tab-pane fade">
					<div class="row">
						<div class="col-lg-7 col-md-12">
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-snack.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Corn Tikki - Spicy fried Aloo</span> <strong>$15.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-snack.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Bread besan Toast</span> <strong>$35.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-snack.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Healthy soya nugget snacks</span> <strong>$20.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-snack.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Tandoori Soya Chunks</span> <strong>$30.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
						</div>
						<div class="col-lg-5 d-none d-lg-block">
							<img src="img/menu-snack-img.jpg" alt="Image">
						</div>
					</div>
				</div>
				<div id="beverages" class="container tab-pane fade">
					<div class="row">
						<div class="col-lg-7 col-md-12">
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-beverage.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Single Cup Brew</span> <strong>$7.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-beverage.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Caffe Americano</span> <strong>$9.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-beverage.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Caramel Macchiato</span> <strong>$15.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-beverage.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Standard black coffee</span> <strong>$8.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
							<div class="menu-item">
								<div class="menu-img">
									<img src="img/menu-beverage.jpg" alt="Image">
								</div>
								<div class="menu-text">
									<h3>
										<span>Standard black coffee</span> <strong>$12.00</strong>
									</h3>
									<p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
								</div>
							</div>
						</div>
						<div class="col-lg-5 d-none d-lg-block">
							<img src="img/menu-beverage-img.jpg" alt="Image">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Menu End -->
<!-- 페이지 내용 End -->
<jsp:include page="../common/footer.jsp" />
