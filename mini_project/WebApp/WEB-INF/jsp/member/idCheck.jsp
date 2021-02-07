<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<style type="text/css">
	
	#btn button {
		color: #ffffff;
	    background: #00B9FF;
	    border-radius: 5px;
	    margin: 0 15px;
	    border: 1px;
	    font-size: 17px;
	    padding: 5px;
		font-weight: bold;
	}
	
	#btn h1{
		
	}
	
</style>
</head>

<script type="text/javascript">
	function formClose() {
		if(${check }) {
			window.opener.document.getElementById("mPassword").focus();
		} else {
			window.opener.document.getElementById("mId").value="";
			window.opener.document.getElementById("mId").focus();
		}
		
		window.close();
	}
</script>
<body>
	<div align="center" id="btn">
		<h1>${msg }</h1>
		<button type="button" onclick="formClose()">확인</button>
	</div>
</body>
</html>