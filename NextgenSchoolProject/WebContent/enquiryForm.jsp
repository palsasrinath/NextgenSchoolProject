<!doctype html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>ENQUIRY-FORM</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<!-- jQuery library -->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/hideBackBtn.js"></script>
<script src="js/jquery-1.12.4.js"></script>
<script src="js/jquery-ui.js"></script>
<!-- Latest compiled JavaScript -->
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/enquiry-form.css" />
<script>
	$(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true
		});
	});

	function getAge() {
		debugger;
		dob = new Date($("#datepicker").val());
		var today = new Date();
		var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));
		$('#age').html(age + ' years old');
		$('#age').val(age);
	}
	function testing(value) {
		var element = document.getElementById("transport");
		if (value == "yes") {
			element.style.display = "block";
		} else {
			element.style.display = "none";
		}
	}
</script>
<script type="text/javascript">
	function caps(id) {
		document.getElementById(id).value = document.getElementById(id).value
				.toUpperCase();

	}
</script>
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</SCRIPT>
</head>
<body onload="getCurrentDate()" onload="noBack();"
	onpageshow="if (event.persisted) noBack();" onunload="">
	<div class="container main">
		<div class="row">
			<div class="col-md-12 header text-center">
				<div class="col-md-6">
					<h2>Nextgen Kids Enquiry Form</h2>
					<h4>
						<a href="index.jsp" style="color: black; padding-bottom: 25px;";>HOME</a>
					</h4>
				</div>
			</div>
		</div>
	</div>

	<form:form class="form-inline" id="enquiryForm" name="enquiryForm"
		action="enquiryFormSubmit.htm" method="post" role="form"
		enctype="multipart/form-data">

		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Sl. NO :</label>
				</div>
				<div class="col-md-3">
					<form:input type="text" class="form-control" name="sno" id="sno"
						path="sno" required="autofocus" value="${latestSerialNo}"
						placeholder="SL-NO" disabled="true" />
				</div>
				<div class="col-md-1">
					<label class="title1">Date :</label>
				</div>
				<div class="col-md-3">
					<form:input type="text" class="form-control" name="date"
						id="currentDate" path="date" required="autofocus" disabled="true" />
				</div>

			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Name Of Child :</label>
				</div>
				<div class="col-md-3">
					<form:input type="text" onblur="caps(this.id)" class="form-control"
						id="firstName" path="firstName" name="firstName"
						required="autofocus" placeholder="FIRST NAME" />
				</div>
				<div class="col-md-3">
					<form:input type="text" onblur="caps(this.id)" class="form-control"
						id="lastName" path="lastName" required="autofocus" name="lastName"
						placeholder="LAST NAME" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Date Of Birth :</label>
				</div>
				<div class="col-md-3">
					<form:input type="text" class="form-control" name="dateOfBirth"
						id="datepicker" path="dateOfBirth" required="autofocus"
						placeholder="DD/MM/YYYY" onchange="getAge();" />


				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Age :</label>
				</div>
				<div class="col-md-9">
					<form:input type="text" class="form-control" name="age" id="age"
						path="age" required="autofocus" placeholder="AGE" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Gender :</label>
				</div>
				<div class="col-md-1">
					<form:radiobutton class="form-control" path="gender" name="gender"
						id="gender" onblur="caps(this.id)" value="male" />
					<label class="title1">Male</label>
				</div>
				<div class="col-md-2">
					<form:radiobutton class="form-control" path="gender" name="gender"
						id="gender" onblur="caps(this.id)" value="female" />
					<label class="title1">Female</label>
				</div>
			</div>
		</div>
		<div class="row top">
			<div class="col-md-12">
				<div class="title4">
					<div class="col-md-3">
						<label class="word" style="color: black;"> Nationality :</label>
					</div>
					<div class="col-md-3">
						<form:select name="nationality" id="nationality"
							path="nationality" required="autofocus">
							<option>SELECT NATION</option>
							<option>INDIAN</option>
							<option>JAPAN</option>
							<option>CHINA</option>
							<option>AMERICA</option>
							<option>AUSTRALIA</option>
						</form:select>
						<span id="errNationality" style="color: red"></span>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row top">
			<div class="col-md-12">
				<div class="title4">
					<div class="col-md-3">
						<label class="word" style="color: black;"> Mother Tongue :</label>
					</div>
					<div class="col-md-3">
						<form:select name="motherTongue" id="motherTongue"
							path="motherTongue" required="autofocus">
							<option>SELECT MOTHER TONGUE</option>
							<option>TELUGU</option>
							<option>HINDI</option>
							<option>ENGLISH</option>
							<option>TAMIL</option>
							<option>KANNADA</option>
							<option>MALAYALEM</option>
							<option>ODIA</option>
							<option>MARATY</option>
							<option>BENGALI</option>
							<option>OTHER</option>
						</form:select>
						<span id="errMotherTng" style="color: red"></span>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row top">
			<div class="col-md-12">
				<div class="title4">
					<div class="col-md-3">
						<label class="word" style="color: black;">Native Place &
							State :</label>
					</div>
					<div class="col-md-3">
						<form:input type="text" onblur="caps(this.id)"
							class="form-control" placeholder="NATIVE-PLACE" name="place"
							id="place" path="place" required="autofocus" />
						<span id="errNative" style="color: red"></span>
					</div>
					<div class="col-md-3">
						<form:select name="state" id="state" path="state"
							required="autofocus">
							<option>SELECT STATE</option>
							<option>ANDHRAPRADESH</option>
							<option>ARUNACHALPRADESH</option>
							<option>ASSAM</option>
							<option>BIHAR</option>
							<option>CHHATTISGARH</option>
							<option>GAO</option>
							<option>GUJARAT</option>
							<option>HARYANA</option>
							<option>HIMACHALPRADESH</option>
							<option>JAMMU & KASHMIR</option>
							<option>JHARKHAND</option>
							<option>KARNATAKA</option>
							<option>KERALA</option>
							<option>MADHYAPRADESH</option>
							<option>MAHARASHTRA</option>
							<option>MANIPUR</option>
							<option>MEGHALAYA</option>
							<option>MIZORAM</option>
							<option>NAGALAND</option>
							<option>ODISHA</option>
							<option>PUNJAB</option>
							<option>RAJASTHAN</option>
							<option>SIKKIM</option>
							<option>TAMILNADU</option>
							<option>TELANGANA</option>
							<option>TRIPURA</option>
							<option>UTTARAKHAND</option>
							<option>UTTARPRADESH</option>
							<option>WESTBENGAL</option>
							<option>OTHER</option>
						</form:select>
						<span id="errState" style="color: red"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Admission to Branch&Class :</label>
				</div>
				<div class="col-md-3">
					<label><b style="color: black;">Branch:</b> <form:select
							name="branchName" id="branchName" path="branchName"
							required="autofocus">
							<option>SELECT BRANCH</option>
							<option>KPHB6THPHASE</option>
							<option>KPHB9THPHASE</option>
							<option>VIVEKANANDHANAGAR</option>
							<option>PRAGATHINAGAR</option>
						</form:select> </label>
				</div>
				<div class="col-md-3">
					<label><b style="color: black;">Class:</b> <form:select
							name="className" id="className" path="className"
							required="autofocus">
							<option>SELECT CLASS</option>
							<option>Play Group (P.G)</option>
							<option>Nursery</option>
							<option>LKG</option>
							<option>UKG</option>
							<option>1st Class</option>
							<option>2nd Class</option>
							<option>3rd Class</option>
							<option>4th Class</option>
							<option>5th Class</option>
							<option>6th Class</option>
							<option>7th Class</option>
						</form:select> </label>
				</div>
			</div>
		</div>



		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Father's Name :</label>
				</div>

				<div class="col-md-1">
					<form:input type="text" onblur="caps(this.id)" class="form-control"
						name="fatherName" id="fatherName" path="fatherName"
						required="autofocus" placeholder="FATHER-NAME" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Mother's Name :</label>
				</div>
				<div class="col-md-4">
					<form:input type="text" onblur="caps(this.id)" class="form-control"
						name="motherName" id="motherName" path="motherName"
						required="autofocus" placeholder="MOTHER-NAME" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Occupation :</label>
				</div>
				<div class="col-md-4">
					<form:input type="text" onblur="caps(this.id)" class="form-control"
						name="fatherOccupation" id="fatherOccupation"
						path="fatherOccupation" required="autofocus" placeholder="FATHER" />
				</div>
				<div class="col-md-4">
					<form:input type="text" onblur="caps(this.id)" class="form-control"
						name="motherOccupation" id="motherOccupation"
						path="motherOccupation" required="autofocus" placeholder="MOTHER" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Residence Tel No :</label>
				</div>
				<div class="col-md-4">
					<form:input type="text" class="form-control" name="residenceTelNo"
						id="residenceTelNo" path="residenceTelNo" required="autofocus"
						placeholder="Residence Tel No" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Additional No.s :</label>
				</div>

				<div class="col-md-3"></div>
				<div class="col-md-1">
					<label class="title1">Father(O):</label>
				</div>
				<div class="col-md-2">
					<form:input type="text" class="form-control" name="fatherOffNo"
						id="fatherOffNo" path="fatherOffNo" placeholder="OFFICE NO." />
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-3">
					<label class="title1">Mob:</label>
					<form:input type="text" class="form-control" name="fatherMob"
						id="fatherMob" path="fatherMob" required="autofocus"
						placeholder="MOBILE" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-4">
					<label class="title1">Mother(O):</label>
					<form:input type="text" class="form-control" name="motherOffNo"
						id="motherOffNo" path="motherOffNo" placeholder="OFFICE NO." />
				</div>

				<div class="col-md-3">
					<label class="title1">Mob:</label>

					<form:input type="text" class="form-control" name="motherMob"
						id="motherMob" path="motherMob" required="autofocus"
						placeholder="MOBILE" />
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3"></div>
				<div class="col-md-4">
					<label class="title1">Guardian:</label>
					<form:input type="text" class="form-control" name="guardianNo"
						id="guardianNo" path="guardianNo" placeholder="MOBILE" />
				</div>
				<div class="col-md-4">
					<label class="title1">E-mail:</label>

					<form:input type="text" class="form-control" name="email"
						id="email" path="email" required="autofocus" placeholder="EMAIL" />
				</div>
			</div>
		</div>
		</div>
		</div>
		<br>
		<div class="row top">
			<div class="col-md-12">
				<div class="title1">
					<div class="col-md-3">
						<label class="word">Residential Address :</label>
					</div>
					<div class="col-md-4">
						<form:textarea class="form-control" rows="5" cols="50"
							name="address" onblur="caps(this.id)" id="address" path="address"
							required="autofocus" placeholder="ADDRESS" />
						<span id="errAddress" style="color: red"></span>
					</div>
				</div>
			</div>
		</div>

		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">previous Schooling :</label>
				</div>
				<div class="col-md-1">
					<label class="title1">Yes </label>
					<form:radiobutton class="form-control" name="previousSchooling"
						onblur="caps(this.id)" onClick="testing('yes')"
						id="previousSchooling" path="previousSchooling" value="yes" />
				</div>
				<div class="col-md-1">
					<label class="title1">No </label>
					<form:radiobutton class="form-control" name="previousSchooling"
						onblur="caps(this.id)" onClick="testing('no')"
						id="previousSchooling" path="previousSchooling" value="no" />
				</div>
			</div>
		</div>
		<br>
		<div id="transport" style="display: none;">
			<div class="row top">
				<div class="col-md-12">
					<div class="title1">
						<div class="col-md-3">
							<label class="title1"> Name of the Last School :</label>
						</div>
						<div class="col-md-9">
							<form:input type="text" class="form-control" name="lastSchool"
								onblur="caps(this.id)" id="lastSchool" path="lastSchool"
								required="autofocus" placeholder="NAME OF LAST SCHOOL" />
							<span id="errLastSchool" style="color: red"></span>
						</div>

					</div>
				</div>
			</div>
			<br>
			<div class="row top">
				<div class="col-md-12">
					<div class="col-md-3">
						<label class="title1"> Last School Address :</label>
					</div>
					<div class="col-md-9">
						<form:textarea class="form-control" rows="5" cols="50"
							name="lastSchoolAddress" onblur="caps(this.id)"
							id="lastSchoolAddress" path="lastSchoolAddress"
							placeholder="LAST SCHOOL ADDRESS" required="autofocus" />
						<span id="errAddress" style="color: red"></span>
					</div>
				</div>
			</div>
		</div>

		<div class="row gap">
			<div class="col-md-12">
				<h1 class="title2">
					<b>How did you come to know about Nextgen Kids ?</b>
				</h1>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<form:checkbox name="aboutSchool" id="aboutSchool"
						path="aboutSchool" value="newsAdvertisement" />
					<label class="title1">Friends/Relative Reference</label>
				</div>
				<div class="col-md-3">
					<form:checkbox name="aboutSchool" id="aboutSchool"
						path="aboutSchool" value="newsArticle" />
					<label class="title1">Newspaper Article </label>
				</div>
				<div class="col-md-3">
					<form:checkbox name="aboutSchool" id="aboutSchool"
						path="aboutSchool" value="tvCommercial" />
					<label class="title1">TV Commercial </label>
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<form:checkbox name="aboutSchool" id="aboutSchool"
						path="aboutSchool" value="magazines" />
					<label class="title1">Magazines </label>
				</div>
				<div class="col-md-3">
					<form:checkbox name="aboutSchool" id="aboutSchool"
						path="aboutSchool" value="cableTv" />
					<label class="title1">Online/Web </label>
				</div>
				<div class="col-md-3">
					<form:checkbox name="aboutSchool" id="aboutSchool"
						path="aboutSchool" value="friend" />
					<label class="title1">Newspaper Advertisement </label>
				</div>
			</div>
		</div>
		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Other (Pls. Specify) : </label>
				</div>
				<div class="col-md-3">
					<form:input type="text" name="others" onblur="caps(this.id)"
						id="others" path="others" placeholder="OTHERS" />
				</div>

			</div>
		</div>




		<!-- ======================FILE UPLOAD CODE =================================-->



		<div class="row gap">
			<div class="col-md-12">
				<div class="col-md-3">
					<label class="title1">Upload photo :</label>
				</div>
				<div class="col-md-9">
					<form:input type="file" class="form-control" name="imageFile"
						id="imageFile" path="imageFile" />
				</div>
			</div>
		</div>

		<br>
		<br>
		<div class="button-click">
			<center>
				<button type="submit" class="btn btn-primary button-cls"
					style="color: black">Register Now</button>
			</center>
		</div>

		<div class="row gap">
			<div class="col-md-12">
				<h3 class="title3">
					<b>Thank you for visiting NextgenKids</b>
				</h3>
			</div>
		</div>
	</form:form>
	</div>
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
		function getCurrentDate() {
			var today = new Date();
			var dd = today.getDate();
			var mm = today.getMonth() + 1; //January is 0!
			var yyyy = today.getFullYear();

			if (dd < 10) {
				dd = '0' + dd
			}
			if (mm < 10) {
				mm = '0' + mm
			}

			today = mm + '-' + dd + '-' + yyyy;
			document.getElementById('currentDate').value = today;

		}
	</script>
</body>
</html>
