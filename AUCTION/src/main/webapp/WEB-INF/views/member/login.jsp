<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
.container{height: 800px;
}
h1{
margin-bottom: 40px;}
.form-group {
	margin-bottom: 30px;
}
button {
	margin-top: 30px;
}
</style>    
<div class="container">
	<h1>로그인</h1>
	<form action="<c:url value='/login'></c:url>" method="post">
		<div class="form-group">
			<label for="id">아이디:</label>
			<input type="text" class="form-control" id="id" name="me_id">
		</div>
		<div class="form-group">
			<label for="pw">비밀번호:</label>
			<input type="password" class="form-control" id="pw" name="me_pw">
		</div>
		<button class="btn btn-outline-success col-12">로그인</button>
	</form>
</div>

