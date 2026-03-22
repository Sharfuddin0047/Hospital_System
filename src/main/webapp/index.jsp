<%@page import="com.db.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>

<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card {
	border-radius: 10px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease;
}

/* Hover Effect */
.paint-card:hover {
	transform: translateY(-10px);
	box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
}

/* Prevent horizontal scroll */
body {
	overflow-x: hidden;
}

/* Image styling */
img {
	max-width: 100%;
	height: auto;
}

.paint-card img {
	transition: transform 0.4s ease;
}

.paint-card:hover img {
	transform: scale(1.05);
}

.carousel-img {
	height: 800px;
	object-fit: cover;
}

.container {
	margin-top: 40px;
}

.card-body {
	padding: 20px;
}

footer a:hover {
	color: #0dcaf0 !important;
	padding-left: 5px;
	transition: 0.3s;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos.jpg" class="d-block w-100 carousel-img" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/hos.jpg" class="d-block w-100 carousel-img" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/hos.jpg" class="d-block w-100 carousel-img" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<div class="container py-4">
		<p class="text-center fs-2 mb-4">Key Features of Our Hospital</p>

		<div class="row align-items-center">

			<!-- Left Column: Feature Cards -->
			<div class="col-md-8">
				<div class="row g-4">

					<div class="col-md-6">
						<div class="card paint-card h-100">
							<div class="card-body">
								<h5 class="fs-5">100% Safety</h5>
								<p class="card-text">We ensure complete patient safety with
									modern equipment and strict protocols.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card h-100">
							<div class="card-body">
								<h5 class="fs-5">Clean Environment</h5>
								<p class="card-text">Our hospital maintains a hygienic and
									sanitized environment for all patients.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card h-100">
							<div class="card-body">
								<h5 class="fs-5">Advanced Treatment</h5>
								<p class="card-text">We provide specialized care with
									advanced medical technology and expert doctors.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card paint-card h-100">
							<div class="card-body">
								<h5 class="fs-5">Patient-Centered Care</h5>
								<p class="card-text">Our staff ensures compassionate and
									personalized care for every patient.</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- Image -->
			<div class="col-md-4 text-center">
				<img src="img/doc1.jpg" alt="doctor" class="img-fluid rounded">
			</div>

		</div>
	</div>

	<div class="container p-4">
		<p class="text-center fs-2 mb-4">Our Team</p>

		<div class="row g-4 justify-content-center">

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc1.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Samuni Simi</p>
						<p class="text-muted">Senior Doctor</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc2.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">John Smith</p>
						<p class="text-muted">Cardiologist</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc3.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Sarah Lee</p>
						<p class="text-muted">Neurologist</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc4.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Michael Brown</p>
						<p class="text-muted">Orthopedic</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc5.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Emily Davis</p>
						<p class="text-muted">Pediatrician</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc5.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Emily Davis</p>
						<p class="text-muted">Pediatrician</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc5.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Emily Davis</p>
						<p class="text-muted">Pediatrician</p>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-4 col-sm-6">
				<div class="card paint-card text-center h-100">
					<div class="card-body">
						<img src="img/doc5.jpg" class="img-fluid rounded mb-3"
							style="height: 300px; object-fit: cover;">
						<p class="fw-bold fs-5 mb-0">Emily Davis</p>
						<p class="text-muted">Pediatrician</p>
					</div>
				</div>
			</div>


		</div>
	</div>

	<%@include file="component/footer.jsp"%>
</body>
</html>