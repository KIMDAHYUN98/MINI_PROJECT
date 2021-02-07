<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
.form-text {
	width: 350px;
}
.divider-text {
	position: relative;
	text-align: center;
	margin-top: 15px;
	margin-bottom: 15px;
}

.divider-text span {
	padding: 7px;
	font-size: 12px;
	position: relative;
	z-index: 2;
}

.divider-text:after {
	content: "";
	position: absolute;
	width: 100%;
	border-bottom: 1px solid #ddd;
	top: 55%;
	left: 0;
	z-index: 1;
}
.button {
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  cursor: pointer;
}
.btn1 {background-color: #4CAF50;} /* Green */

#dropdown {
	position: relative;
	right: 100px;
	font-size: 17px;
}
.navbar-brand {
	font-size: 25px;
}
#sys-btn {
	display: none;
}

</style>
<script type="text/javascript">
	function formCheck() {
		
		if(frm.mName.value == "") {
			alert("이름은 반드시 입력해야 합니다.");
			frm.mName.focus();
			
			return false;
		}
		
		if(frm.mId.value == "") {
			alert("아이디는 반드시 입력해야 합니다.");
			frm.mId.focus();
			
			return false;
		}
		
		if(frm.mPassword.value == "") {
			alert("패스워드는 반드시 입력해야 합니다.");
			frm.mPassword.focus();
			
			return false;
		}
		if(frm.mPassword.value != frm.mPasswordc.value) {
			alert("패스워드가 일치하지 않습니다.");
			
			frm.mPassword.value = null;
			frm.mPasswordc.value = null;
			frm.mPassword.focus();
			
			return false;
		}
		
		return true;
	}
	
	function idCheck(str) {
		var url = "idCheck.do?mId=" + str;
		if(str == "") {
			alert("아이디를 입력하세요!");
			frm.mId.focus();
		} else {
			window.open(url, "아이디 중복 체크" , "width=500, height=300, top=100, left=100");
		}
	}
	
    function execPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<jsp:include page="../common/menu.jsp" />
<body>
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h3 class="card-title mt-3 text-center">회원 가입</h3><br/>
			<form id="frm" name="frm" class="form-text" action="memberInsert.do" method="post" onsubmit="return formCheck()">
				<!-- full name -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-user"></i></span>	
						</div>
						<input id="mName" name="mName" class="form-control" placeholder="Full name" type="text">
						
					</div>
					<!-- id -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="far fa-address-card"></i></span>
						</div>
						<input name="mId" id="mId" class="form-control" placeholder="id" type="text">
						<button class="button btn1" type="button" onclick="idCheck(mId.value)">중복체크</button>
					</div>
					<!-- create pw -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i></span>
						</div>
						<input name="mPassword" id="mPassword" class="form-control" placeholder="Create password" type="password">
					</div>
					<!-- repeat pw -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-lock"></i></span>
						</div>
						<input name="mPasswordc" id="mPasswordc" class="form-control" placeholder="Repeat password" type="password">
					</div>
				<!-- email -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-envelope"></i></span>
					</div>
					<input name="mEmail" id="mEmail" class="form-control" placeholder="Email address" type="email">
				</div>
				<!-- Phone -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fa fa-phone"></i></span>
					</div>
					<input name="mTel" id="mTel" class="form-control" placeholder="Phone number" type="text">
				</div>
				<!-- address -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="far fa-address-card"></i></span>
					</div>
					<input name="mAdr" id="mAdr" class="form-control" placeholder="Your Adress" type="text">
				</div>
				<!-- birthday -->
				<div class="form-group input-group">
					<div class="input-group-prepend">
						<span class="input-group-text"> <i class="fas fa-birthday-cake"></i></span>
					</div>
					<input name="mBirth" id="mBirth" class="form-control" placeholder="Birth day" type="text">
				</div>
				<!-- form-group// -->
				<div class="form-group">
					<button type="submit" class="btn btn-primary btn-block">회원 가입</button>
				</div>
				<!-- form-group// -->
				<p class="text-center">
					가입된 회원이십니까? <a href="loginForm.do">Log In</a>
				</p>
			</form>
		</article>
	</div>
	<!-- card.// -->
	<br>
	<br>
</body>
</html>