<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>

<%@include file="component/allcss.jsp"%>

<style>
.login-card {
	width: 400px;
	border-radius: 10px;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
}
</style>

</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<div class="container d-flex justify-content-center align-items-center"
		style="min-height: 80vh;">

		<div class="card login-card">

			<div class="card-header text-center bg-dark text-white">
				<h4>SignUp Page</h4>				

				<c:if test="${not empty sucMsg}">
					<p class="text-center text-success fs-3">${sucMsg}</p>
					<c:remove var="sucMsg" scope="session"/> 
				</c:if>

				<c:if test="${not empty errorMsg}">
					<p class="text-center text-danger fs-3">${errorMsg}</p>
					<c:remove var="errorMsg" scope="session"/>
				</c:if>
			</div>


			<div class="card-body">

				<form action="user_register" method="post">


					<div class="mb-3">
						<label class="form-label">Full Name</label> <input type="text"
							class="form-control" name="name" required>
					</div>

					<div class="mb-3">
						<label class="form-label">Email address</label> <input
							type="email" class="form-control" name="email" required>
					</div>

					<div class="mb-3">
						<label class="form-label">Password</label> <input type="password"
							class="form-control" name="password" required>
					</div>

					<div class="d-grid">
						<button type="submit" class="btn btn-dark">Register</button>
					</div>

					<div class="text-center mt-3">
						Already have an account? <a href="user_login.jsp"
							class="text-decoration-none">Login</a>
					</div>

				</form>

			</div>

		</div>

	</div>

	<%@include file="component/footer.jsp"%>

</body>
</html>