<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  		
<html>
<head>
<title> ChangeAdminPasswordSuccess Page</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="newjs.js" type="text/javascript"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="style.css"/>
  <script>
  function sendMsg() {
//alert(location.href);
       // url = 'login.jsp?name=' + "welcome to login";
		//alert(url);
window.location.href = "login.jsp";
//	alert(url);
}
  </script>
  </head>
<body style="background-color:#f2f3f5;">
<div class="container-fluid">

<div class="row">

<div class="col-md-3 col-xs-4 img">
<img src="images/banner.jpg">
</div>

</div><!--end-row--> <br>


<div class="row">

<div class="col-md-12 header">

<div class="col-md-4"><h3>AdminPassowordChangeSuccess</h3></div>
</div>
</div><!--end-row-->

 <div class="row">
 <div class="col-md-5 col-md-offset-3 change">
 <form:form id="AdminPassowordChangeSuccess" name="AdminPassowordChangeSuccess"  modelAttribute="changeAdminPassword"  commandName="changePassword" class="form-signin" role="form" >
  <div class="page-header"><h2>AdminPassowordChangeSuccess</h2></div>
  <div class="form-group">
     
     <h2>Admin Password Changed Successfully</h2>
  
  </div>
   <div class="form-group">
	  <input type="submit" class="btn btn-primary btn-lg btn-block" value="Submit" />
	  <a href="index.jsp" class="btn btn-primary btn-lg pull-right" style="margin-top:25px;">Home</a>	
	</div>
	
	 <div class="form-group">
	  <input type="submit" class="btn btn-primary btn-lg btn-block" value="Submit" />
	  <a href="adminHomeView.htm" class="btn btn-primary btn-lg pull-right" style="margin-top:25px;">AdminHomePage</a>	
	</div>
	
	</form:form>
</div>
</div>
<!--footer-->

<div class="row">

<div class="col-md-12 footer">
</div>
</div><!--end-row-->














</div><!--end-container fluid-->

</body>
</html>