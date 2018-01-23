
<%@page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:choose>
	<c:when test="${not empty searchList}">
		<h1 style="color: Red; text-align: center">Search Result</h1>

		<table border="">
			<tr>
				<th>ID</th>
				<th>SNO</th>
				<th>STUDENTNAME</th>
				<th>CLASSNAME</th>
				<th>BRANCHNAME</th>
			</tr>

			<c:forEach var="dto" items="${searchList}">

				<tr>

					<td><c:out value="${dto.id}" /></td>
					<td><c:out value="${dto.sno}" /></td>
					<td><c:out value="${dto.studentName}" /></td>
					<td><c:out value="${dto.className}" /></td>
					<td><c:out value="${dto.branchName}" /></td>

				</tr>
			</c:forEach>
		</table>
	</c:when>
	<c:otherwise>
		<p style="color: red">Records Not Found.....</p>
	</c:otherwise>
</c:choose>

<br>
<br> 

<a href="home.htm">HOME</a>





