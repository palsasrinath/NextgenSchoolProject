 
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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"  src="js/hideBackBtn.js"></script>	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/success.css" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 header">
				<div class="col-md-6">
					<h2>Welcome To NextGenKids</h2>
					</div>
					<%-- <div class="col-md-6">
					<h3 style="text-align:right;">Welcome Admin MR.<%= session.getAttribute("adminName") %> </h3>
 
				</div> --%>
			</div>
		</div>
		<!--end-row-->
	</div>
	<!--end-container fluid-->
    <div class="section">
			<center>
				<h3 class="section1">Successfully Registered...Please contact to the Principal for further details.</h3>
				<h3 class="section2">Thank you...</h3>
				<%-- <h2>Message : ${message}</h2> --%>
			</center>
	 		<center><h4 class="home">Go To Home <button type="button"><a href="index.jsp">Click Here</a></button></h4></center>
	 </div>
	
	<!--footer-->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 footer text-center">
				<h4>
					Copyright © 2017 NextgenKids School All Rights Reserved. Website Developed
					by
					<code> Mktechnosoft</code>
				</h4>
			</div>
		</div>
	</div>
	<!--end-container fluid-->

</body>
</html>







