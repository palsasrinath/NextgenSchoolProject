   <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>DECLARATION BY THE PARENT</h2>
	<form:form   name="parentDeclaration"  id="parentDeclaration" action="parentFormSubmit.htm" method="post" commandName="declaration"  >
		<p>I,<form:input type= "text"  name= "parent"   id= "parent"  path= "parent" style= "width:30%;" required= "autofocus" />parent/guardian of<br>
		<form:input type="text" name="student" id="student" path="student"  required="autofocus" style="width:30%;" />hereby declare that the above information,<br>
		rules and regulations of the school and i shall be responsible to see that my child/Ward abides by the <br>
		decisions of the Management/Administration and co-operates with the school in all possible ways.<br><br>
		
				     I also solemnly affirm that in case  my child/ward is admitted,I shall be solely and fully <br>
		responsible for the regular payment of fees and dues as fixed by the management  of NEXTGEN KIDS <br>
		from time to time.</p>
		
		<span style="padding-right:430px;">Submitting the following :</span><br><br>
		
		<span style="padding-right:350px;">1. Two Passport size Photographs</span>  <form:checkbox name="photos" id="photos" path="photos" value="photos" required="autofocus" ></form:checkbox><br>
		<span style="padding-right:10px;">2. Transfer Certificate/Record Sheet from the previous school(Not applicable for Freshers)</span>  <form:checkbox name="records" id="records" path="records" value="records" required="autofocus"></form:checkbox><br>
		<span style="padding-right:160px;">3. Birth Certificate from Panchayat or Municipality or Corporation</span>  <form:checkbox name="birth" id="birth" path="birth" value="birth" required="autofocus"></form:checkbox><br><br><br><br>
		
		
		<span style="float:right;padding-right:360px;">Signature of the Parent/Guardian</span><br><br>
		
		
		<span style="float:left;padding-left:360px;">Signature of the In-charge</span><br><br>
		
		
		<span style="float:right;padding-right:360px;">(NAME IN CAPITAL LETTERS)</span>
		
		 <div class="button-click">
				<button type="submit" class="button-cls" style="color: black">Submit</button>
		</div><br><br>
	</form:form>	
</center>

</body>
</html>