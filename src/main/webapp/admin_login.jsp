<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<%@include file="component/allcss.jsp"%>

<style>
.login-card{
	width:400px;
	border-radius:10px;
	box-shadow:0 6px 20px rgba(0,0,0,0.15);
}
</style>

</head>
<body>

<%@include file="component/navbar.jsp"%>

<div class="container d-flex justify-content-center align-items-center" style="min-height:80vh;">

	<div class="card login-card">
	
		<div class="card-header text-center bg-dark text-white">
			<h4>Admin Login</h4>
		</div>
		
		<div class="card-body">
		
			<form action="adminLogin" method="post">
			
				<div class="mb-3">
					<label class="form-label">Email address</label>
					<input type="email" class="form-control" name="email" required>
				</div>
				
				<div class="mb-3">
					<label class="form-label">Password</label>
					<input type="password" class="form-control" name="password" required>
				</div>
				
				<div class="d-grid">
					<button type="submit" class="btn btn-dark">Login</button>
				</div>
				
			</form>
		
		</div>
	
	</div>

</div>

<%@include file="component/footer.jsp"%>

</body>
</html>