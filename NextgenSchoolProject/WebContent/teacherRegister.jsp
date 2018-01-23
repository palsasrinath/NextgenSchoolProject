<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://webthemez.com" />
<title>Teacher Registration</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" /> 



 <script type="text/javascript">
 </script>
 <script src="js/timezone.js"></script>
 <script>
 function submitForm(event) {

		event.preventDefault(); // this will prevent the submit event.
		var firstName = document.getElementById("fName").value;
		document.getElementById("errfname").innerHTML = "";

		var lastName = document.getElementById("lName").value;
		document.getElementById("errLname").innerHTML = "";

		var email = document.getElementById("email").value;
		document.getElementById("errEmail").innerHTML = "";
		var emailRegEx = /^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;

		var password = document.getElementById("pwd").value;
		document.getElementById("errPwd").innerHTML = "";
		var pwdRegEx = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");
		
		var conformPassword = document.getElementById("cpwd").value;
		document.getElementById("errCpwd").innerHTML = "";
	/*	var cpwdRegEx = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");*/

		var mobile = document.getElementById("mobile").checked;
		document.getElementById("errMobile").innerHTML = "";
		var mobileRegExp= /^(\+\d{1,3}[- ]?)?\d{10}$/;
		
		var gender = document.getElementById("gender").checked;
		document.getElementById("errGender").innerHTML = "";
		
		var qualification = document.getElementById("qualification").checked;
		document.getElementById("errQualification").innerHTML = "";

		var address = document.getElementById("address").value;
		document.getElementById("errAddress").innerHTML = "";

		var city = document.getElementById("city").value;
		document.getElementById("errCity").innerHTML = "";
		
		var city = document.getElementById("state").value;
		document.getElementById("errState").innerHTML = "";


		var flag = 0;

		if (firstName == "") {

			flag = 1;

			document.getElementById("errFname").innerHTML = "Please Enter FirstName";

		}

		if (lastName == "") {

			flag = 1;

			document.getElementById("errLname").innerHTML = "Please Enter LastName";

		}

		if (email == "") {

			flag = 1;

			document.getElementById("errEmail").innerHTML = "Please Enter EmailID";

		} else if (!emailRegEx.test(email)) {

			flag = 1;

			document.getElementById("errEmail").innerHTML = "Please Valid  EmailID";

		}

		if (password == "") {

			flag = 1;

			document.getElementById("errPwd").innerHTML = "Please Enter Password";

		} else if (!pwdRegEx.test(password)) {

			document.getElementById("errPwd").innerHTML = "Please Enter Valid Password";

		}
		
		if (conformPassword == "") {

			flag = 1;

			document.getElementById("errCpwd").innerHTML = "Please Enter ConformPassword";

		} else if (confromPassword != password) {

			document.getElementById("errCpwd").innerHTML = "Passwords do not match";

		}
		
		if (mobile == "") {

			flag = 1;

			document.getElementById("errMobile").innerHTML = "Please Enter MobileNumber";

		} else if (!mobileRegExp.test(mobile)) {

			document.getElementById("errMobile").innerHTML = "Please Enter Valid MobileNumber";

		}
		
		

		if (gender == "") {

			flag = 1;

			document.getElementById("errGender").innerHTML = "Please Enter Gender";

		}
		
		if (qualification == "") {

			flag = 1;

			document.getElementById("errQualification").innerHTML = "Please Enter Qualification";

		}

		if (address == "") {

			flag = 1;

			document.getElementById("errAddress").innerHTML = "Please Enter Address";

		}

		if (city == "") {

			flag = 1;

			document.getElementById("errCity").innerHTML = "Please Enter City";

		}
		
		if (state == "") {

			flag = 1;

			document.getElementById("errState").innerHTML = "Please Enter state";

		}

		if (flag == 0) {

			location.reload();
			// return true;

		} else {

			return false;

		}

	}
 

 </script>
 
 <style>
.header{
  background-color:#de3b69;
 height:85px;
 color:white;
 	}
.footer-1{
	height:85px;
	background-color:#de3b69;
	color:white;
} 
.footer-1 h4{
	margin-top:25px;	
	
} 
 	
 	</style> 
 
</head>
<body>

<div class="container-fluid">
<div class="row">
		<div class="col-md-12 header" align="center" ><h2>Welcome to Teacher</h2></div>
</div>
</div>
<form action="teacherRegister" method="post">
<center><pre><b>
					
	 	<h2 style="color:black;">Teacher Registration Form</h2>			 

					
  	First Name: <input type="text" name="firstName" id="fName" /><br>
  		<span id="errfName" style="color: red"></span>
  	 Last Name: <input type="text" name="lastName" id="lName" /><br>
  	 		<span id="errlName" style="color: red"></span>
  	     Email: <input type="text" name="email" id="email" /><br>
  	     		<span id="errEmail" style="color: red"></span>
  	  Password: <input type="password" name="password" id="pwd" /><br>
  	  		<span id="errPwd" style="color: red"></span>
  	  Conform Password: <input type="password" name="conformpassword" id="cpwd" /><br>
  	  		<span id="errPwd" style="color: red"></span>
  	  MobileNumber:  <input type="text" name="mobile" id="mobile" /><br>
  	  		<span id="errPwd" style="color: red"></span>
    Gender:Male<input type="radio" name="gender" id="gender" size="20" />Female<input
								type="radio" name="gender" id="gender" size="20" /><br>
   			<span id="errGender" style="color: red"></span>
   	Address:<input type="text" name="address" id="add" /><br>
  	  		<span id="errPwd" style="color: red"></span>
  	 Qualification:<select name="qualification" id="qualification"><option>BTECH</option>
                       <option>MTECH</option>
                       <option>MSC</option>
                       <option>other</option>
                      </select><br>
  	City:<select name="city" id="city"><option>kukatpally</option>
                       <option>kbhp</option>
                       <option>jntuh</option>
                       <option>other</option>
                      </select><br>
               	<span id="errDesignation" style="color: red"></span>	
   State:<select name="state" id="state"><option>Telangana</option>
                       <option>AndhraPradhesh</option>
                       <option>Karnataka</option>
                       <option>other</option>
                      </select><br>
               	<span id="errDesignation" style="color: red"></span>	
               		    		                           	
 <div class="button-click">
		<button type="submit" class="button-cls"  style="color:white; background-color:#de3b69;">Register Now</button>
								</div>
    </b></pre></center>
				</form>

<div class="container-fluid">
<div class="row">
<div class="col-md-12 footer-1 text-center"><h4>Copyright © 2017  NextGenSchools All Rights Reserved. Website Developed by <code> Mktechnosoft</code></h4>
</div>
</div>
</div>				

</body>
</html>