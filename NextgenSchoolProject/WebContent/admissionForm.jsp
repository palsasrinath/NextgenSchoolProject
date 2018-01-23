<!doctype html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>ADMISSION-FORM</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/hideBackBtn.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/admission-form.css" />
<script>
	function testing(value) {
		var element = document.getElementById("transport");
		if (value == "yes") {
			element.style.display = "block";
		} else {
			element.style.display = "none";
		}
	}

	function testingDayCare(value) {
		var element = document.getElementById("dayCare");
		if (value == "yes") {
			element.style.display = "block";
		} else {
			element.style.display = "none";
		}
	}

	function testingUniform(value) {
		var element = document.getElementById("uniform");
		if (value == "yes") {
			element.style.display = "block";
		} else {
			element.style.display = "none";
		}
	}

	function testingBooksAndBag(value) {
		var element = document.getElementById("booksAndBag");
		if (value == "yes") {
			element.style.display = "block";
		} else {
			element.style.display = "none";
		}
	}

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
</head>
<body onload="getCurrentDate()">
	<!--container start-->

	<div class="container border">

		<form:form id="admissionForm" action="admissionFormSubmit.htm"
			method="post" role="form">
			<div class="row">
				<div class="col-md-12">
					<div>
						<h3 class="title">
							<b>APPLICATION FORM FOR ADMISSION</b>
						</h3>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-4">
										<label class="word">SL. NO :</label>
									</div>
									<div class="col-md-4">
										<form:input type="text" class="form-control" name="sno"
											value="${admission.sno}" id="sno" path="sno"
											required="autofocus" placeholder="SI NO." />
										<span id="errSNo" style="color: red"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-inline">
								<div class="col-md-4">
										<label class="word">Image :</label>
								</div>
									<div class="col-md-2">
										<img src="<c:url value="${admission.profileFilePath}" />" />
								</div>
							</div>
						</div>
						<div class="row top">
							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-4">
										<label class="word">Registration No. :</label>
									</div>
									<div class="col-md-4">
										<form:input type="text" class="form-control" name="regNo"
											id="regNo" path="regNo" required="autofocus"
											placeholder="REGISTRATION NO." />
										<span id="errRegNo" style="color: red"></span>
									</div>
								</div>
							</div>
						</div>

						<div class="row top">
							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-4">
										<label class="word">Admission To Branch & Class :</label>
									</div>
									<div class="col-md-4">
										<label class="word"> Branch :</label><br>
										<form:input class="form-control " name="branchName"
											value="${admission.branchName}" id="branchName"
											path="branchName" required="autofocus" placeholder="BRANCH" />
									</div>
									<div class="col-md-4">
										<label class="word"> Class :</label><br>
										<form:input class="form-control" name="className"
											value="${admission.className}" id="className"
											path="className" required="autofocus" placeholder="CLASS" />
									</div>
								</div>
							</div>
						</div>
						<div class="row top">
							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-4">
										<label class="word">Date of Admission :</label>
									</div>
									<div class="col-md-4">

										<form:input type="text" class="form-control" name="dateOfAdm"
											id="currentDate" path="dateOfAdm" required="autofocus"
											placeholder="DATE OF ADMISSION" />
										<span id="errDateOfAdm" style="color: red"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="row top">
							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-4">
										<label class="word">Gender :</label>
									</div>
									<div class="col-md-2">

										<form:input class="form-control" name="gender" id="gender"
											value="${admission.gender}" path="gender"
											required="autofocus" placeholder="GENDER" />
										<span id="errGender" style="color: red"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="row top">
							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-4">
										<label class="word">Age :</label>
									</div>
									<div class="col-md-2">
										<form:input type="text" class="form-control" name="age"
											id="age" value="${admission.age}" path="age"
											required="autofocus" placeholder="AGE" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="line"></div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Name of the Student :</label>
						</div>
						<div class="col-md-8">
							<div class="form-group">
								<form:input class="form-control" name=" firstName"
									id="firstName" value="${admission.firstName}" path="firstName"
									required="autofocus" placeholder="CHILD NAME" />
								<span id="errFName" style="color: red"></span>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Date of Birth :</label>
						</div>
						<div class="col-md-8">
							<div class="form-group">
								<form:input placeholder="DATE OF BIRTH" class="form-control"
									type="text" name="dateOfBirth" id="myBirthday"
									path="dateOfBirth" value="${admission.dateOfBirth}"
									required="autofocus" />
								<span id="errDate" style="color: red"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Nationality :</label>
						</div>
						<div class="col-md-3">
							<form:input name="nationality" class="form-control"
								value="${admission.nationality}" id="nationality"
								path="nationality" required="autofocus"
								placeholder="NATIONALITY" />

							<span id="errNationality" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Mother Tongue :</label>
						</div>
						<div class="col-md-3">
							<form:input name="motherTongue" class="form-control"
								id="motherTongue" value="${admission.motherTongue}"
								path="motherTongue" required="autofocus"
								placeholder="MOTHER TONGUE" />

							<span id="errMotherTng" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Native Place & State :</label>
						</div>
						<div class="col-md-3">
							<form:input type="text" placeholder="NATIVE-PLACE"
								value="${admission.place}" class="form-control" name="place"
								id="place" path="place" required="autofocus" />
							<span id="errNative" style="color: red"></span>
						</div>

						<div class="col-md-3">
							<form:input name="state" class="form-control" id="state"
								value="${admission.state}" path="state" required="autofocus"
								placeholder="STATE" />

							<span id="errState" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>

			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Father's Name :</label>
						</div>
						<div class="col-md-3">
							<form:input name="fatherName" class="form-control" id="mothertng"
								value="${admission.fatherName}" path="fatherName"
								required="autofocus" placeholder="FATHER NAME" />

							<span id="errFatherName" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Mother's Name :</label>
						</div>
						<div class="col-md-3">
							<form:input class="form-control" name="motherName"
								value="${admission.motherName}" id="motherName"
								path="motherName" required="autofocus" placeholder="MOTHER-NAME" />
							<span id="errMatherName" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Occupation :</label>
						</div>
						<div class="col-md-3">
							<form:input type="text" class="form-control"
								value="${admission.fatherOccupation}" name="fatherOccupation"
								id="fatherOccupation" path="fatherOccupation"
								required="autofocus" placeholder="FATHER" />
						</div>
						<div class="col-md-3">
							<form:input type="text" name="motherOccupation"
								value="${admission.motherOccupation}" class="form-control"
								id="motherOccupation" path="motherOccupation"
								required="autofocus" placeholder="MOTHER" />
						</div>
					</div>
				</div>
			</div>
			<br>
			<div class="row gap">
				<div class="col-md-12">
					<div class="col-md-3">
						<label class="word">Residence Tel No :</label>
					</div>
					<div class="col-md-3">
						<form:input type="text" class="form-control" name="residenceTelNo"
							value="${admission.residenceTelNo}" id="residenceTelNo"
							path="residenceTelNo" required="autofocus"
							placeholder="Residence Tel No" />
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="col-md-3">
						<label class="word">Additional No.s :</label>
					</div>

					<div class="row top">
						<div class="col-md-12">
							<div class="form-inline">
								<div class="col-md-3"></div>
								<div class="col-md-3">
									<label class="word">Father(O):</label><br>
									<form:input type="text" class="form-control" name="fatherOffNo"
										value="${admission.fatherOffNo}" id="fatherOffNo"
										path="fatherOffNo" placeholder="OFFICE NO." />
								</div>

								<div class="col-md-3">
									<label class="word">Mob:</label><br>

									<form:input type="text" class="form-control" name="fatherrMob"
										value="${admission.fatherMob}" id="fatherMob" path="fatherMob"
										required="autofocus" placeholder="MOBILE" />
								</div>
							</div>
						</div>

						<div class="row top">


							<div class="col-md-12">
								<div class="form-inline">
									<div class="col-md-3"></div>
									<div class="col-md-3">
										<label class="word">Mother(O):</label><br>
										<form:input type="text" class="form-control"
											name="motherOffNo" id="motherOffNo" path="motherOffNo"
											value="${admission.motherOffNo}" placeholder="OFFICE NO." />
									</div>

									<div class="col-md-3">
										<label class="word">Mob:</label><br>

										<form:input type="text" class="form-control" name="motherMob"
											value="${admission.motherMob}" id="motherMob"
											path="motherMob" required="autofocus" placeholder="MOBILE" />
									</div>
								</div>
							</div>

							<div class="row top">
								<div class="col-md-12">
									<div class="form-inline">
										<div class="col-md-3"></div>
										<div class="col-md-3">
											<label class="word">Guardian:</label><br>
											<form:input type="text" class="form-control"
												value="${admission.guardianNo}" name="guardianNo"
												id="guardianNo" path="guardianNo" placeholder="MOBILE" />
										</div>
										<div class="col-md-3">
											<label class="word">E-mail:</label><br>

											<form:input type="text" class="form-control" name="email"
												value="${admission.email}" id="email" path="email"
												required="autofocus" placeholder="EMAIL" />
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Residential Address :</label>
						</div>
						<div class="col-md-3">
							<form:textarea class="form-control" rows="5" cols="50"
								name="address" id="address" path="address"
								value="${admission.address}" required="autofocus" />
							<span id="errAddress" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Total Tuition Fee :</label>
						</div>
						<div class="col-md-3">
							<form:input type="text" class="form-control" name="totalFee"
								value="36000" path="totalFee" id="totalFee" required="autofocus" />
							<br>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Paid Fee :</label>
						</div>
						<div class="col-md-3">
							<form:input type="text" class="form-control" name="paidFee"
								path="paidFee" id="paidFee" required="autofocus" />
						</div>
					</div>
				</div>
			</div>
			<div class="row gap">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Transport Requirement :</label>
						</div>
						<div class="col-md-1">
							<label class="word">Yes </label>
							<form:radiobutton class="form-control"
								name="transportRequirement" onClick="testing('yes')"
								id="transportRequirement" path="transportRequirement"
								value="yes" />
						</div>
						<div class="col-md-1">
							<label class="word">No </label>
							<form:radiobutton class="form-control"
								name="transportRequirement" onClick="testing('no')"
								id="transportRequirement" path="transportRequirement" value="no" />
						</div>
					</div>
				</div>
			</div>
			<div id="transport" style="display: none;">
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Transport Fee (0-2km) :</label>
							</div>
							<div class="col-md-3">
								<form:radiobutton class="form-control" name="transportFee"
									id="transportFee" path="transportFee" required="autofocus"
									value="14000" />
								<b>Rs 14000/Year - 2 installments of Rs.7000 on June & Oct</b> <span
									id="errFee" style="color: red"></span>
							</div>
							<div class="col-md-6">
								<form:radiobutton class="form-control" name="transportFee"
									id="transportFee" path="transportFee" required="autofocus"
									value="8000" />
								<b>Rs 8000/Year for One Way</b> <span id="errFee"
									style="color: red"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Paid Fee :</label>
							</div>
							<div class="col-md-9">
								<form:input type="text" class="form-control"
									name="transportPaidFee" path="transportPaidFee"
									id="transportPaidFee" required="autofocus" />
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row gap">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Day Care Requirement :</label>
						</div>
						<div class="col-md-1">
							<label class="word">Yes </label>
							<form:radiobutton class="form-control" name="dayCareRequirement"
								onClick="testingDayCare('yes')" id="dayCareRequirement"
								path="dayCareRequirement" value="yes" />
						</div>
						<div class="col-md-1">
							<label class="word">No </label>
							<form:radiobutton class="form-control" name="dayCareRequirement"
								onClick="testingDayCare('no')" id="dayCareRequirement"
								path="dayCareRequirement" value="no" />
						</div>
					</div>
				</div>
			</div>
			<div id="dayCare" style="display: none;">
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Day Care (1 PM to 5.30 PM) :</label>
							</div>
							<div class="col-md-3">
								<form:radiobutton class="form-control" name="dayCareFee"
									id="dayCareFee" path="dayCareFee" required="autofocus"
									value="2500" />
								<b>Rs 2500/month (Rs 500/month extra for every extra hour)</b> <span
									id="errDayCareFee" style="color: red"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Paid Fee :</label>
							</div>
							<div class="col-md-9">
								<form:input type="text" class="form-control"
									name="dayCarePaidFee" path="dayCarePaidFee" id="dayCarePaidFee"
									required="autofocus" />
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row gap">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Uniform Requirement :</label>
						</div>
						<div class="col-md-1">
							<label class="word">Yes </label>
							<form:radiobutton class="form-control" name="uniformRequirement"
								onClick="testingUniform('yes')" id="uniformRequirement"
								path="uniformRequirement" value="yes" />
						</div>
						<div class="col-md-1">
							<label class="word">No </label>
							<form:radiobutton class="form-control" name="uniformRequirement"
								onClick="testingUniform('no')" id="uniformRequirement"
								path="uniformRequirement" value="no" />
						</div>
					</div>
				</div>
			</div>
			<div id="uniform" style="display: none;">
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Uniform Fee :</label>
							</div>
							<div class="col-md-3">
								<form:radiobutton class="form-control" name="uniformFee"
									id="uniformFee" path="uniformFee" required="autofocus"
									value="2500" />
								<b>Rs.2500/year(1st-3rd class)</b> <span id="errDayCareFee"
									style="color: red"></span>
							</div>
							<div class="col-md-3">
								<form:radiobutton class="form-control" name="uniformFee"
									id="uniformFee" path="uniformFee" required="autofocus"
									value="3500" />
								<b>Rs.3500/year(4th-7th class)</b> <span id="errDayCareFee"
									style="color: red"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Paid Fee :</label>
							</div>
							<div class="col-md-9">
								<form:input type="text" class="form-control"
									name="uniformPaidFee" path="uniformPaidFee" id="uniformPaidFee"
									required="autofocus" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row gap">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word">Books&Bag Requirement:</label>
						</div>
						<div class="col-md-1">
							<label class="word">Yes </label>
							<form:radiobutton class="form-control"
								onClick="testingBooksAndBag('yes')"
								name="booksAndBagRequirement" id="booksAndBagRequirement"
								path="booksAndBagRequirement" value="yes" />
						</div>
						<div class="col-md-1">
							<label class="word">No </label>
							<form:radiobutton class="form-control"
								onClick="testingBooksAndBag('no')" name="booksAndBagRequirement"
								id="booksAndBagRequirement" path="booksAndBagRequirement"
								value="no" />
						</div>
					</div>
				</div>
			</div>
			<div id="booksAndBag" style="display: none;">
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="form-inline">
								<div class="col-md-3">
									<label class="word"> Books & Bag Fee :</label>
								</div>
								<div class="col-md-3">
									<form:radiobutton class="form-control" name="booksAndBagFee"
										id="booksAndBagFee" path="booksAndBagFee" required="autofocus"
										value="2500" />
									<b>Rs.2500/year(1st-3rd class)</b> <span id="errDayCareFee"
										style="color: red"></span>
								</div>
								<div class="col-md-3">
									<form:radiobutton class="form-control" name="booksAndBagFee"
										id="booksAndBagFee" path="booksAndBagFee" required="autofocus"
										value="3500" />
									<b>Rs.3500/year(4th-7th class)</b> <span id="errDayCareFee"
										style="color: red"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row top">
					<div class="col-md-12">
						<div class="form-inline">
							<div class="col-md-3">
								<label class="word"> Paid Fee :</label>
							</div>
							<div class="col-md-9">
								<form:input type="text" class="form-control"
									name="booksAndBagPaidFee" path="booksAndBagPaidFee"
									id="booksAndBagPaidFee" required="autofocus" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Teacher's Assign to Student :</label>
						</div>
						<div class="col-md-5">
							<form:select name="teachersToStudents" id="teachersToStudents"
								path="teachersToStudents" required="autofocus">
								<option>SELECT TEACHER</option>
								<option>PARUSARAM</option>
								<option>MANU</option>
								<option>SRINATH</option>
								<option>ANIL</option>
								<option>PANDU</option>
								<option>SHAN</option>
							</form:select>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Previous Schooling :</label>
						</div>
						<div class="col-md-3">
							<form:input class="form-control" name="previousSchooling"
								value="${admission.previousSchooling}" id="previousSchooling"
								path="previousSchooling" required="autofocus" />
							<span id="errSchool" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Name of the Last School :</label>
						</div>
						<div class="col-md-3">
							<form:input type="text" class="form-control" name="lastSchool"
								value="${admission.lastSchool}" id="lastSchool"
								path="lastSchool" required="autofocus" />
							<span id="errLastSchool" style="color: red"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-12">
					<div class="form-inline">
						<div class="col-md-3">
							<label class="word"> Last School Address :</label>
						</div>
						<div class="col-md-3">
							<form:textarea class="form-control" rows="5" cols="50"
								value="${admission.lastSchoolAddress}" name="lastSchoolAddress"
								id="lastSchoolAddress" path="lastSchoolAddress"
								placeholder="LAST SCHOOL ADDRESS" required="autofocus" />
							<span id="errAddress" style="color: red"></span>
						</div>
					</div>

				</div>
			</div>
			<br>
			<div class="button">
				<center>
					<button type="submit" class="button-cls" style="color: black">Register
						Now</button>
				</center>
			</div>
			<br>
		</form:form>

	</div>
	
	<%-- ///..........
	
	
	<body bgcolor="gray">
		<h1 style="color: red">
			<b><center>File Upload App</center></b>
		</h1>
		<form:form method="post" action="save.htm" modelAttribute="uploadform"
			enctype="multipart/form-data">
        Select File To Upload:<input type="file" name="file" />
		<br>
		<br>
		<input type="submit" value="Upload" />
	</form:form>
   </body>
	
	///..........
 --%>



	<!--container end-->

</body>
</html>