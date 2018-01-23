
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import=" java.util.*, java.io.*"%>
<html>
<head>
<title>Principal Home page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/hideBackBtn.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/admin.css" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 header">
				<div class="col-md-6">
					<h2>Welcome to Principal HomePage</h2>
				</div>
				<div class="col-md-6">
					<h3 style="text-align: right;">
						Welcome Principal Mr/Mrs.<%=session.getAttribute("principalFname")%>
					</h3>

				</div>
			</div>
		</div>
		<!--end-row-->
	</div>
	<!--end-container fluid-->
<body style="background-color: white">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-9 Admin">
				<div class="page-header">
					<h1>Registered Students</h1>
				</div>
				<table class="table table-bordered table-responsive">
					<thead>
						<tr>
							<th>SL No</th>
							<th>NameOfchild</th>
							<th>MotherName</th>
							<th>FatherName</th>
							<th>MotherNumber</th>
							<th>FatherNumber</th>
							<th>Email-Id</th>
							<th>AdmissionStatus</th>
							<th>Give Admission</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${studentList}" var="i">
							<tr>
								<td><c:out value="${i.sno}" /></td>
								<td><c:out value="${i.firstName}" /></td>
								<td><c:out value="${i.motherName}" /></td>
								<td><c:out value="${i.fatherName}" /></td>
								<td><c:out value="${i.motherMob}" /></td>
								<td><c:out value="${i.fatherMob}" /></td>
								<td><c:out value="${i.email}" /></td>
								<td><button type="button" class="btn btn-success">Pending</button></td>
								<td><a href="admissionForm.htm?sno=${i.sno}">
										<button type="button" class="btn btn-success">Get
											Admission</button>
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-3 Home">
				<button type="button" class="btn btn-danger pull-left"
					data-toggle="modal" data-target="#logoutAlert">
					<a href="principalLogin.jsp">Logout</a>
				</button>
				<br> <br> <a href="changePasswordView.htm"
					class="btn btn-danger pull-left">Reset Password</a><br> <br>
				<a href="enquiryForm.htm" class="btn btn-danger pull-left">Add
					Student</a><br>
				<br> <a href="teacherRegister.jsp"
					class="btn btn-danger pull-left"> Teacher Register</a>
			</div>

			<!-- Modal -->
			<div id="logoutAlert" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Are you Sure You want to Logout?</h4>
						</div>
						<!-- <div class="modal-body">
							<p>You are Sucessfully Logged Out</p>
						</div> -->
						<div class="modal-footer">
							<button type="button" class="btn btn-danger" onclick="goHome()"
								data-dismiss="modal">
								<a href="index.jsp">YES</a>
							</button>
						</div>
					</div>

				</div>
			</div>
			<!-- /Modal -->


		</div>
		<!--end row-->
	</div>
	<!--End-container-->
	<!--footer-->

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 footer text-center">
				<h4>
					Copyright © 2017 Money Bank All Rights Reserved. Website Developed
					by
					<code> Mktechnosoft</code>
				</h4>
			</div>
		</div>
	</div>
	<!--end-container fluid-->

	<script>
		function goHome() {
			//alert(location.href);
			// url = 'login.jsp?name=' + "welcome to login";
			//alert(url);
			window.location.href = "index.jsp";
			//	alert(url);
		}
	</script>

</body>
</html>