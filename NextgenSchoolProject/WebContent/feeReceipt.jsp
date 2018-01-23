
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import=" java.util.*, java.io.*, java.util.ArrayList"%>
<html>
<head>
<title>Fee Receipt Home page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/hideBackBtn.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/feeReceipt.css" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 header">
				<div class="col-md-6">
					<h2>Welcome to Fee Receipt</h2>
				</div>
				<%-- <div class="col-md-6">
					<h3 style="text-align:right;">Welcome Admin MR.<%= session.getAttribute("adminName") %> </h3>
 
				</div> --%>
			</div>
		</div>
		<!--end-row-->
	</div>
	<!--end-container fluid-->
<body style="background-color: #f2f2f2">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 Admin">
				<div class="page-header">
					<h1>Fee Receipt</h1>
				</div>
				<center>
					<h3>Congratulations..Admission process completed to
						Mr/Ms.Srinath,please find the below fee details paid during
						admission process.</h3>
				</center>

				<!--Student Detail Table-->

				<table class="table border-collapse">
					<thead>
						<h3>Receipt Id:#1</h3>
						<h3>Student Details</h3>
					</thead>
					<tr>
						<th>NameOfStudent</th>
						<th>FatherName</th>
						<th>FatherNumber</th>
						<th>MotherName</th>
						<th>MotherNumber</th>
						<th>Class</th>
						<th>Teacher Assigned</th>
					</tr>
					<tr>
						<%-- <c:forEach items="${admissionStudentList}" var="i"> --%>

							<td><c:out value="${admissionStudentList.firstName}" /></td>
							<td><c:out value="${admissionStudentList.fatherName}" /></td>
							<td><c:out value="${admissionStudentList.fatherMob}" /></td>
							<td><c:out value="${admissionStudentList.motherName}" /></td>
							<td><c:out value="${admissionStudentList.motherMob}" /></td>
							<td><c:out value="${admissionStudentList.className}" /></td>
							<td><c:out value="${admissionStudentList.teachersToStudents}" /></td>
							
						<%-- </c:forEach> --%>
					</tr>
				</table>
				<br> <br>

				<!--Student Detail Table-->

				<table class="feestable" border="1">
					<h3>Fees Details</h3>
					<tr>
						<th colspan="2">Tution Fees</th>
						<th colspan="2">Transport Fees</th>
						<th colspan="2">DayCare Fees</th>
						<th colspan="2">Books & Bag Fees</th>
						<th colspan="2">Uniform Fees</th>
					</tr>
					<tr>
						<td class="txtleft">Total Fees</td>
						<td><c:out value="${admissionStudentList.totalFee}" /></td>
						<td class="txtleft">Total Fees</td>
						<td><c:out value="${admissionStudentList.transportFee}" /></td>
						<td class="txtleft">Total Fees</td>
						<td><c:out value="${admissionStudentList.dayCareFee}" /></td>
						<td class="txtleft">Total Fees</td>
						<td><c:out value="${admissionStudentList.booksAndBagFee}" /></td>
						<td class="txtleft">Total Fees</td>
						<td><c:out value="${admissionStudentList.uniformFee}" /></td>
					</tr>
					<tr>
						<td class="txtleft">Paid Fees</td>
						<td><c:out value="${admissionStudentList.paidFee}" /></td>
						<td class="txtleft">Paid Fees</td>
						<td><c:out value="${admissionStudentList.transportPaidFee}" /></td>
						<td class="txtleft">Paid Fees</td>
						<td><c:out value="${admissionStudentList.dayCarePaidFee}" /></td>
						<td class="txtleft">Paid Fees</td>
						<td><c:out value="${admissionStudentList.booksAndBagPaidFee}" /></td>
						<td class="txtleft">Paid Fees</td>
						<td><c:out value="${admissionStudentList.uniformPaidFee}" /></td>
					</tr>
					<tr>
						<td class="txtleft">Due Fees</td>
						<td><c:out value="${studentFeeDetails.currentTutionDueFee}" /></td>
						<td class="txtleft">Due Fees</td>
						<td><c:out value="${studentFeeDetails.currentTransportDueFee}" /></td>
						<td class="txtleft">Due Fees</td>
						<td><c:out value="${studentFeeDetails.currentDayCareDueFee}" /></td>
						<td class="txtleft">Due Fees</td>
						<td><c:out value="${studentFeeDetails.currentBooksAndBagDueFee}" /></td>
						<td class="txtleft">Due Fees</td>
						<td><c:out value="${studentFeeDetails.currentUniformDueFee}" /></td>

					</tr>
				</table>

			</div>

			<!-- /Modal -->


		</div>
		<!--end row-->
	</div>
	<!--End-container-->
	<!--footer-->

	<div class="container-fluid footerstyle">
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