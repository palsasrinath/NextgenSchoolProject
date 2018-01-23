<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  		
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://webthemez.com" />
<title>Principal Registration</title> 


<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="css/style1.css" rel="stylesheet" type="text/css"/>


 <script type="text/javascript">
//window.history.forward(1);
//window.history.go(1);
</script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript"  src="js/hideBackBtn.js"></script>
 <script src="js/timezone.js"></script>
  <script>
  function register(){
	    var fname = document.getElementById('firstName').value;
	    var lname = document.getElementById('lastName').value;
		var email = document.getElementById('email').value;
		var password = document.getElementById('password').value;
		//var passwordregex = /^[a-zA-Z0-9\-.,$&amp;@#\%\[\]\_\/\:\?\+]*$/;
		var conformpassword = document.getElementById('conformpassword').value;
		var conformpasswordregex = /^[a-zA-Z0-9\-.,$&amp;@#\%\[\]\_\/\:\?\+]*$/;
		var mobile = document.getElementById('mobileNumber').value;
        var mobileregex = /^(\+\d{1,3}[- ]?)?\d{10}$/;
		var gender = document.getElementById('gender').checked;
		var address = document.getElementById('address').value;
		var city = document.getElementById('city').value;
		var state = document.getElementById('state').value;
		
		
		var errorMessage = "";
		var checkFormValidate = false;
		
		if(fname == ""){
			errorMessage="firstName is required <br/>";
			checkFormValidate = true;
		}
		if(lname == ""){
			errorMessage="lastName is required <br/>";
			checkFormValidate = true;
		}	
		if(email == ""){
			errorMessage="Email is required <br/>";
			checkFormValidate = true;
		}else{
				if (email.length < 6 || email.length > 50 ) {
					errorMessage +="Invalid Email <br/>";
					checkFormValidate = true;	
				}
			}
		if(password == ""){
			errorMessage =errorMessage + "Password is required";
			checkFormValidate = true;
			
		}else{

				if (password.length < 6 || password.length > 50 ) {
					errorMessage +="Invalid  Password <br/>";
					checkFormValidate = true;	
				}
			/* 	if(!passwordregex.test(password)){
					errorMessage +="Invalid  Password <br/>";
					checkFormValidate = true;	
				} */
		}
		if(conformpassword == ""){
			errorMessage =errorMessage + "Password is required";
			checkFormValidate = true;
			
		}else{

				if (conformpassword.length < 6 || conformpassword.length > 50 ) {
					errorMessage +="Invalid  Password <br/>";
					checkFormValidate = true;	
				}
				if(!conformpasswordregex.test(conformpassword)){
					errorMessage +="Invalid  Password <br/>";
					checkFormValidate = true;	
				}
		}
		if(mobile == ""){
			errorMessage="mobileNumber is required <br/>";
			checkFormValidate = true;
		}else {
				if(!mobileregex.test(mobile)){
					errorMessage +="Invalid  mobileNumber <br/>";
					checkFormValidate = true;	
				}
		} 
		
		if(gender == ""){
			errorMessage="gender is required <br/>";
			checkFormValidate = true;
	    }
		
		if(address == ""){
			errorMessage="address is required <br/>";
			checkFormValidate = true;
		}
		if(city == ""){
			errorMessage="city is required <br/>";
			checkFormValidate = true;
		}
		if(state == ""){
			errorMessage="state is required <br/>";
			checkFormValidate = true;
		}
		

		if (checkFormValidate) {
			document.getElementById('pass0word').value='';
			document.getElementById('loginErrorDiv').innerHTML = errorMessage;
			document.getElementById('loginErrorDiv').style.display = '';
			document.getElementById('ActionMsgDiv').style.display = 'none';
			return false;
			
		}else{
			document.loginForm.action ="login_testing.action";	
			document.loginForm.submit();
			return true;
		}
	  }

          function setTimeZoneInCookie() {
        var _myDate = new Date();
        var _offset = _myDate.getTimezoneOffset();
        document.cookie = "TIMEZONE_COOKIE=" + _offset; //Cookie name with value
        //alert("_offset in webHomePage.jsp-->"+_offset);
        var tz = jstz.determine();
        var timeZoneName=tz.name();
        //alert("Time Zone in webHomePage.jsp-->"+timeZoneName);
        document.cookie = "TIMEZONE_NAME_COOKIE=" + timeZoneName;
    }

	//added by naveenv
	function initFocus(){
		document.getElementById('fname').focus();//added by naveenv
	}  
	
	 history.pushState({page: 1}, "title 1", "#nbb");
     window.onhashchange = function (event) {
         window.location.hash = "nbb";
     };
	
 	</script> 
 	
 	</script>
 	<!--Admin.css -->
 	<style>
 	.header{
  background-color:#de3b69;
 height:72px;
 color:white;
 	}
 	  .footer-1{
	height:72px;
	background-color:#de3b69;
	color:white;
} 
.footer-1 h4{
	margin-top:25px;	
	
} 
 	
 	</style> 
 	<!-- End-Admin.css -->
</head>

<body onload="setTimeZoneInCookie();initFocus();" class="login">
<div id="wrapper">
<div class="container-fluid">
<div class="row">
		<div class="col-md-12 header" align="center"><h2>Welcome to Principal Register</h2></div>
</div>
</div>

	<div class="container">
	  <div class="login-form">
	    
	   <form:form id="principalRegister" name="principalRegister" action="principalSubmit.htm" method="post" class="form-signin" role="form">
	    	<div class="alert alert-danger" id="loginErrorDiv" align="left" style="display: none;"></div>
		    <div  id="ActionMsgDiv" >
		    	
			</div>
	      <form:input name="firstName"  id="firstName" path="firstName" class="form-control mand" placeholder="Enter FirstName"  type="text" required="autofocus"/>
	      <form:input name="lastName" id="lastName" path="lastName" class="form-control mand" placeholder="Enter LastName"  type="text" required="autofocus"/>
	    	<form:input name="email"   id="email"  path="email" class="form-control mand" placeholder="Enter Email"  type="email" required="autofocus"/>
	    	<form:input name="password" id="password"     path="password" class="form-control mand" placeholder="Enter Password"  type="password" required="autofocus"/>
	    	<form:input name="conformpassword" id="conformpassword"     path="conformpassword" class="form-control mand" placeholder="Enter conformPassword"  type="password" required="autofocus"/>
	    	<form:input name="mobile"  id="mobileNumber"  path="mobile" class="form-control mand" placeholder="Enter Mobile Number"  type="text" required="autofocus"/>
            <label>Gender:</label>
	    	<form:radiobutton path="gender" id="gender"    value="Male"/>Male
	    	<form:radiobutton path="gender" id="gender"   value="Female"/>Female<br>
	    	<label>Branch:</label>
	    	 <form:select name="branchName" id="branchName" path="branchName" 
	    	 class="form-control mand"   required="autofocus">
								<option>SELECT BRANCH</option>
								<option>KPHB6thPHASE</option>
								<option>KPHB9thPHASE</option>
								<option>VIVEKANANDANAGAR</option>
								<option>PRAGATHINAGAR</option>
			</form:select> 
           	<form:input name="address" id="address"    path="address" class="form-control mand" placeholder="Enter Address"  type="text" required="autofocus"/>
           	<form:input name="city"   id="city" path="city" class="form-control mand" placeholder="Enter City"  type="text" required="autofocus"/>
           	<form:input name="state" id="state" path="state" class="form-control mand" placeholder="Enter State"  type="text" required="autofocus"/>
         
          	<input type="submit" value="Register" name="Create"
				onclick="javaScript:return register()" style="background: #de3b69 none repeat scroll 0% 0% !important" class="btn btn-primary"/>
	    </form:form>

	    <div class="form-footer">
	      <div class="row">
	        <div class="col-xs-8 col-sm-8 col-md-8"><a href="principalLoginView.htm">(Already registered) Sign In </a> </div>
	      </div>
	    </div>
	  </div>
	</div>
	
</div>



<div class="container-fluid">
<div class="row">
<div class="col-md-12 footer-1 text-center"><h4>Copyright © 2017   Money Bank All Rights Reserved. Website Developed by <code> Mktechnosoft</code></h4>
</div>
</div>
</div><!--end-container fluid-->

</body>
</html>
