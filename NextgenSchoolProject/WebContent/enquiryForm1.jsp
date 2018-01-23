<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Next Gen Kids Pre international School</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<!-- css -->
<link rel="stylesheet"  href="css/style.css" />
<link rel="stylesheet"  href="css/bootstrap.min.css"  />
<link rel="stylesheet"  href="css/enquiry-form.css"  />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/jquery-1.12.4.js"></script>
<script src="js/jquery-ui.js"></script>
<!-- Latest compiled JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
/*$( function() {
    $( "#datepicker" ).datepicker({
    	changeMonth: true,
        changeYear: true
    });
  } );
  
  function getAge(){
	debugger;
	dob = new Date($( "#datepicker" ).val());
	var today = new Date();
	var age = Math.floor((today-dob) / (365.25 * 24 * 60 * 60 * 1000));
	$('#age').html(age+' years old');
    $('#age').val(age);
  }
	function testing(value) {
		var element = document.getElementById("transport");
		if (value == "yes") {
			element.style.display = "block";
		} else {
			element.style.display = "none";
		}
	}*/
</script>
<script type="text/javascript">
 function caps(id){
	    document.getElementById(id).value = document.getElementById(id).value.toUpperCase();

 }
</script>
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body onload="getCurrentDate()" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<div id="wrapper">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                     <a class="navbar-brand" href="index.jsp"><img src="images/nextgen1.png" height="90px;" width="260px;"style="align: left;" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.jsp">HOME</a></li> 
						<li><a href="program.jsp">PROGRAMS</a></li>
						<li><a href="teachers&methodology.jsp">TEACHERS & METHODOLOGY</a></li>
                        
                         <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle waves-effect waves-dark">GALLERY<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                             <li><a class="waves-effect waves-dark" href="6thPhase.jsp">6TH PHASE</a></li>
                            <li><a class="waves-effect waves-dark" href="gallery.jsp">9TH PHASE</a></li>
                            <li><a class="waves-effect waves-dark" href="vivekanandaNagar.jsp">VIVEKANANDA NAGAR</a></li> 
                            <li><a class="waves-effect waves-dark" href="pragathiNagar.jsp">PRAGATHI NAGAR</a></li>
                        </ul>
                    </li> 
                        <li><a href="franchiseEnquiry.jsp">FRANCHISE ENQUIRY</a></li>
                        <li class="active"><a href="contact.jsp">CONTACT-US</a></li>
						<li><a href="enquiryForm.htm">ADMISSION/ENQUIRY</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>

	<section id="inner-headline">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="pageTitle">ADMISSION / ENQUIRY</h2>
				</div>
			</div>
		</div>
	</section>
	<section class="container" id="enquiry-form">
		<!-- Enquiry Form Start Here -->
		<form:form class="form-inline" id="enquiryForm" name="enquiryForm" action="enquiryFormSubmit.htm" method="post" role="form">
			
				<div class="col-md-12">
					<div class="col-md-2">
						<label for="title">SI No : </label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" name="sno" id="sno" />
					</div>
					<div class="col-md-2">	
						<label for="date">Date : </label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" name="sno" id="sno" />
					</div>
				</div>
				<div class="col-md-12">
					<div class="col-md-2">
						<label for="title">First Name : </label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" id="firstName" path="firstName"
							required="autofocus" name=" firstName" placeholder="FIRST NAME" />
					</div>
					<div class="col-md-2">
						<label for="Last Name">Last Name:</label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" id="lastName" path="lastName"
							required="autofocus" name=" lastName" placeholder="LAST NAME"/>
					</div>
			   </div>
			   
			   <div class="col-md-12">
					<div class="col-md-2">
						<label for="title">Date Of Birth : </label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control"  name="dateOfBirth"
							id="datepicker" path="dateOfBirth" required="autofocus"
							placeholder="DD/MM/YYYY" onchange="getAge();" />
					</div>
			   </div>
			   <div class="col-md-12">
					<div class="col-md-2">
						<label for="age">Age :</label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" name="age" id="age"
							path="age" required="autofocus" placeholder="AGE" />
					</div>
				</div>
				
				<div class="col-md-12">
					<div class="col-md-2">
						<label>Gender :</label>
					</div>
					<div class="col-md-1">
						<input type="radio" class="form-control" path="gender" name="gender"
							id="gender" onblur="caps(this.id)" value="male" />
						<label>Male</label>
					</div>
					<div class="col-md-2">
						<input type="radio" class="form-control" path="gender" name="gender"
							id="gender" onblur="caps(this.id)" value="female" />
						<label>Female</label>
					</div>
				</div>
				
				<div class="col-md-12">
						<div class="col-md-2">
							<label> Nationality :</label>
						</div>
						<div class="col-md-3">
							<select name="nationality" id="nationality"
								path="nationality" required="autofocus">
								<option>SELECT NATION</option>
								<option>INDIAN</option>
								<option>JAPAN</option>
								<option>CHINA</option>
								<option>AMERICA</option>
								<option>AUSTRALIA</option>
							</select>
							<span id="errNationality" style="color: red"></span>
						</div>
				</div>
				
				
				<div class="col-md-12">
						<div class="col-md-2">
							<label>Mother Tongue :</label>
						</div>
						<div class="col-md-3">
							<select name="motherTongue" id="motherTongue"
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
							<select>
							<span id="errNationality" style="color: red"></span>
						</div>
				</div>
				
				
				<div class="col-md-12">
						<div class="col-md-2">
							<label>Native Place :</label>
						</div>
						<div class="col-md-2">
							<input type="text" onblur="caps(this.id)"
								class="form-control" placeholder="NATIVE-PLACE" name="place"
								id="place" path="place" required="autofocus" />
							<span id="errNative" style="color: red"></span>
						</div>
						<div class="col-md-2">
							<label>state :</label>
						</div>
						<div class="col-md-3">
							<select name="state" id="state" path="state"
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
							</select>
							<span id="errState" style="color: red"></span>
						</div>
				</div>
				<div class="col-md-12">
					<div class="col-md-3">
						<label>Admission to Branch&Class :</label>
					</div>
					<div class="col-md-3">
						<label>Branch: <select
								name="branchName" id="branchName" path="branchName"
								required="autofocus">
								<option>SELECT BRANCH</option>
								<option>KPHB 6th Phase</option>
								<option>KUKATPALLY</option>
								<option>KPHB 9th Phase</option>
								<option>PRAGATHI NAGAR</option>
							</select> </label>
					</div>
					<div class="col-md-3">
						<label>Class: <select
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
							</select> </label>
					</div>
				</div>
				<div class="col-md-12">
					<div class="col-md-2">
						<label>Father's Name :</label>
					</div>

					<div class="col-md-1">
						<input type="text" onblur="caps(this.id)"
							class="form-control" name="fatherName" id="fatherName"
							path="fatherName" required="autofocus" placeholder="FATHER-NAME" />
					</div>
				</div>
				<div class="col-md-12">
					<div class="col-md-2">
						<label>Mother's Name :</label>
					</div>
					<div class="col-md-4">
						<input type="text" onblur="caps(this.id)"
							class="form-control" name="motherName" id="motherName"
							path="motherName" required="autofocus" placeholder="MOTHER-NAME" />
					</div>
				</div>
			   <div class="col-md-12">
					<div class="col-md-2">
						<label>Occupation :</label>
					</div>
					<div class="col-md-2">
						<input type="text" onblur="caps(this.id)"
							class="form-control" name="fatherOccupation"
							id="fatherOccupation" path="fatherOccupation"
							required="autofocus" placeholder="FATHER" />
					</div>
					<div class="col-md-2">
						<input type="text" onblur="caps(this.id)"
							class="form-control" name="motherOccupation"
							id="motherOccupation" path="motherOccupation"
							required="autofocus" placeholder="MOTHER" />
					</div>
				</div>
			   
			   <div class="col-md-12">
					<div class="col-md-2">
						<label>Residence Tel No :</label>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control" name="residenceTelNo"
							id="residenceTelNo" path="residenceTelNo" required="autofocus"
							placeholder="Residence Tel No" />
					</div>
				</div>
			   <div class="col-md-12">
					<div class="col-md-2">
						<label>Additional No.s :</label>
					</div>
						<div class="col-md-12">
			
							<div class="col-md-3"></div>
								<div class="col-md-2">
								<label>Father(O):</label>
							</div>
							<div class="col-md-2">
								<input type="text" class="form-control" name="fatherOffNo"
									id="fatherOffNo" path="fatherOffNo" placeholder="OFFICE NO." />
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-2">
								<label>Mob:</label>
								<input type="text" class="form-control" name="fatherMob"
									id="fatherMob" path="fatherMob" required="autofocus"
									placeholder="MOBILE" />
							</div>
						</div>
						<div class="col-md-12">
							<div class="col-md-2"></div>
							<div class="col-md-2">
								<label>Mother(O):</label>
								<input type="text" class="form-control" name="motherOffNo"
									id="motherOffNo" path="motherOffNo" placeholder="OFFICE NO." />
							</div>

							<div class="col-md-2">
								<label>Mob:</label>

								<input type="text" class="form-control" name="motherMob"
									id="motherMob" path="motherMob" required="autofocus"
									placeholder="MOBILE" />
							</div>
						</div>
						<div class="col-md-12">
							<div class="col-md-2"></div>
							<div class="col-md-2">
								<label>Guardian:</label>
								<input type="text" class="form-control" name="guardianNo"
									id="guardianNo" path="guardianNo" placeholder="MOBILE" />
							</div>
							<div class="col-md-2">
								<label>E-mail:</label>

								<input type="text" class="form-control" name="email"
									id="email" path="email" required="autofocus"
									placeholder="EMAIL" />
							</div>
						</div>
					</div>
			   <div class="col-md-12">
					<div class="col-md-2">
						<label class="word">Residential Address :</label>
					</div>
					<div class="col-md-2">
						<textarea class="form-control" rows="5" cols="50"
							name="address" onblur="caps(this.id)" id="address" path="address"
							required="autofocus" placeholder="ADDRESS" />
						<span id="errAddress" style="color: red"></span>
					</div>
			</div>
			   
		</form:form>
	</section>	
	<!-- Enquiry Form End Here -->	
	<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="copyright">
							<p>
								<span>&copy;2017 NEXT GEN KIDS PRE INTERNATIONAL SCHOOL ARE RIGHTS RESERVED DESIGNED BY </span><a href="http://MKTECHNOSOFT.com" target="_blank"><CODE>MKTECHNO</CODE>.COM</a>
							</p>
						</div>
					</div>
					<div class="col-lg-3">
						<ul class="social-network">
							<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
							<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
		</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<script>
		function getCurrentDate() {
			   var today = new Date();
			   var dd = today.getDate();
			   var mm = today.getMonth()+1; //January is 0!
			   var yyyy = today.getFullYear();
		
			   if(dd<10) {
			       dd = '0'+dd
			   } 
			   if(mm<10) {
			       mm = '0'+mm
			   } 
		
			   today = mm + '-' + dd + '-' + yyyy;
		       //document.getElementById('currentDate').value=today;
		   
		  
		}
</script>
</body>
</html>