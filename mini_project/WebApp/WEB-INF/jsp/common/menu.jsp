<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
	#sys-btn button{
	color: #ffffff;
    background: #fbaf32;
    border-radius: 5px;
    margin: 0 15px;
    border: 1px;
    font-size: 17px;
    padding: 5px;
	font-weight: bold;

	}
</style>

<body>
<!-- 메뉴바 Start -->
<div class="navbar navbar-expand-lg bg-light navbar-light">
	<div class="container-fluid">
		<a href="main.do" class="navbar-brand">YD <span>Dosirak</span></a>
		<c:if test="${auth eq 'Admin'}">
		<div id="sys-btn">
		<button onclick="location.href='foodList.do'">관리자</button>
		</div>
		</c:if>
        	<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            	<span class="navbar-toggler-icon"></span>
            </button>
	            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
    	            <div class="navbar-nav ml-auto" id="dropdown">
                        <a href="food.do" class="nav-item nav-link">메뉴</a>
                        <a href="franchise.do" class="nav-item nav-link">창업</a>
                        <a href="store.do" class="nav-item nav-link">매장</a>
                        <a href="board.do" class="nav-item nav-link">게시판</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">브랜드</a>
                            <div class="dropdown-menu">
                                <a href="brand.do" class="dropdown-item">소개</a>
                                <a href="feature.do" class="dropdown-item">특징</a>
                                <a href="map.do" class="dropdown-item">오시는길</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
							<c:if test="${auth eq null }">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">회원</a>
                            <div class="dropdown-menu">
                                <a href="createUser.do" class="dropdown-item">회원가입</a>
                                <a href="loginForm.do" class="dropdown-item">로그인</a>
                      		</div>
                      		</c:if>
                      		<c:if test="${auth eq 'Admin' }">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">회원</a>
                            <div class="dropdown-menu">
                                <a href="memberList.do" class="dropdown-item">멤버리스트</a>
								<a href="logOut.do" class="dropdown-item">로그아웃</a>
                      		</div>
                      		</c:if>
                      		<c:if test="${auth eq 'User' }">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">회원</a>
                            <div class="dropdown-menu">
								<a href="logOut.do" class="dropdown-item">로그아웃</a>
                      		</div>
                      		</c:if>
                            </div>
                        </div>
                    </div>
    			</div>
	</div>
</div>
<!-- 메뉴바 End -->