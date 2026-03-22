<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<%@include file="../component/allcss.jsp"%>

<style>
.dashboard-title {
	font-weight: 600;
	color: #000000;
	letter-spacing: 1px;
}

.paint-card {
	background: rgba(255, 255, 255, 0.05);
	backdrop-filter: blur(12px);
	border-radius: 15px;
	border: 1px solid rgba(255, 255, 255, 0.1);
	transition: 0.3s ease;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
}

.paint-card:hover {
	transform: translateY(-8px) scale(1.02);
	box-shadow: 0 15px 35px rgba(56, 189, 248, 0.2);
}

.dashboard-card i {
	color: #38bdf8;
	margin-bottom: 10px;
	text-shadow: 0 0 10px rgba(56, 189, 248, 0.6);
}

.dashboard-card p {
	margin: 0;
}

.card-title {
	font-size: 18px;
	color: #94a3b8;
}

.card-count {
	font-size: 28px;
	font-weight: bold;
	color: #000000;
}

.alert-custom {
	border-radius: 10px;
	padding: 10px;
	font-weight: 500;
}

.error-msg {
	background: rgba(255, 0, 0, 0.1);
	color: #f87171;
}

.success-msg {
	background: rgba(34, 197, 94, 0.1);
	color: #4ade80;
}
</style>
</head>

<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty adminObj}">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5">
		<p class="text-center fs-2 dashboard-title">Admin Dashboard</p>

		<c:if test="${not empty errorMsg}">
			<div class="text-center alert-custom error-msg">${errorMsg}</div>
			<c:remove var="errorMsg" scope="session" />
		</c:if>

		<c:if test="${not empty sucMsg}">
			<div class="text-center alert-custom success-msg">${sucMsg}</div>
			<c:remove var="sucMsg" scope="session" />
		</c:if>

		<div class="row g-4 mt-3">

			<!-- Doctor -->
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center dashboard-card">
						<i class="fas fa-user-md fa-3x"></i>
						<p class="card-title">Doctors</p>
						<p class="card-count">5</p>
					</div>
				</div>
			</div>

			<!-- Patient -->
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center dashboard-card">
						<i class="fas fa-user fa-3x"></i>
						<p class="card-title">Patients</p>
						<p class="card-count">43</p>
					</div>
				</div>
			</div>

			<!-- Appointment -->
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center dashboard-card">
						<i class="fas fa-calendar-check fa-3x"></i>
						<p class="card-title">Appointments</p>
						<p class="card-count">453</p>
					</div>
				</div>
			</div>

			<!-- Specialist -->
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center dashboard-card">
						<i class="fas fa-user-tie fa-3x"></i>
						<p class="card-title">Specialists</p>
						<p class="card-count">34</p>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>