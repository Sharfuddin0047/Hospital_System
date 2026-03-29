<%@page import="com.entity.Specialist"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List"%>
<%@ page import="com.db.DbConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	background: rgba(255, 255, 255, 0.05);
	backdrop-filter: blur(12px);
	border-radius: 15px;
	border: 1px solid rgba(255, 255, 255, 0.1);
	transition: 0.3s ease;
	box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
}

</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<c:if test="${empty adminObj}">
		<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>

	<div class="container-fluid p-3">
		<div class="row">
			<!-- Add Doctor Form -->
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Doctor</p>

						<c:if test="${not empty errorMsg}">
							<div class="alert alert-danger">${errorMsg}</div>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<c:if test="${not empty sucMsg}">
							<div class="alert alert-success">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<form action="add_doctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text" name="fullName"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date" name="dob"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input type="text"
									name="quali" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="specialist"
									class="form-control" required>
									<option value="">--select--</option>
									<% 
										SpecialistDao dao=new SpecialistDao(DbConnect.getConn()); 
										List<Specialist> list=dao.getAllSpeciaList();
										for(Specialist s:list) {
									%>
									<option><%s.getSpecialistName(); %></option>
									<%} %>
									
								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email" name="email"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text" name="mobno"
									class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input type="password" name="password"
									class="form-control" required>
							</div>
							<button type="submit" class="btn btn-primary w-100">Add
								Doctor</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Doctor Details Table -->
			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Doctor Details</p>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Full Name</th>
									<th>DOB</th>
									<th>Qualification</th>
									<th>Specialist</th>
									<th>Email</th>
									<th>Mob No</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%--  <%
								DoctorDao dao = new DoctorDao(DbConnect.getConn());
								List<Doctor> list = dao.getAllDoctors();
								for (Doctor d : list) {
								%> 
								<tr>
									<td><%=d.getFullName()%></td>
									<td><%=d.getDob()%></td>
									<td><%=d.getQualification()%></td>
									<td><%=d.getSpecialist()%></td>
									<td><%=d.getEmail()%></td>
									<td><%=d.getMobNo()%></td>
									<td><a href="edit_doctor.jsp?id=<%=d.getId()%>"
										class="btn btn-sm btn-primary">Edit</a></td>
								</tr>
								<%
								}
								%> --%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>