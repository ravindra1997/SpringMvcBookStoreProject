<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
a {
	text-decoration: none;
}
</style>
<body>
	<div align="center">
		<h2 style="color: maroon;">Your Choosen Book Is Here</h2>
		<table>
			<c:forEach var="empsc" items="${command}">
				<tr>
					<td><img src="data:image/jpg;base64,${empsc.base64Image}"
						width="120" height="200" style="padding-left: 20px;"
						class="bdetail" /></td>

				</tr>
			</c:forEach>

		</table>
		<table>
			<c:forEach var="empsc" items="${command}">
				<tr>
					<td><h4>${empsc.bookName}</h4></td>
					<td style="padding-right: 20px; padding-left: 20px;"><h4>${empsc.bookAuthor}</h4></td>
					<td><h4>${empsc.bookPrice}</h4></td>
				</tr>
			</c:forEach>
		</table>
		<table>
			<c:forEach var="empsc" items="${command}">
				<tr>
					<td><h3>
							<a href="${pageContext.request.contextPath}/check"
								style="color: red;">Buy</a>
						</h3></td>
					<td><h3>
							<a
								href="${pageContext.request.contextPath}/addCart/${empsc.bookId}"
								style="padding-left: 10px; color: blue;">AddToCart</a>
						</h3></td>
				</tr>
			</c:forEach>
		</table>


	</div>
</body>


</html>