<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body>
<body>
	<h1>Enter your contact details</h1>

	<s:form action="/userdetails" method="post">
		<s:textfield label="Name * " name="name"></s:textfield>
		<s:textfield label="Bidder's email * " name="emailid"></s:textfield>
		<s:textfield label="Phone" name="phone"></s:textfield>
		<s:textfield label="Postal address" name="poa"></s:textfield>
		<br>
		<s:submit />
		<br>
		<s:reset />
	</s:form>

	<!--<s:form action="/userdetails" method="post">
		<table style="with: 50%">
			<tr>
				<td>First Name</td>
				<td><input type="text" name="first_name" /></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="last_name" /></td>
			</tr>
			<tr>
				<td>UserName</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" /></td>
			</tr>
			<tr>
				<td>Contact No</td>
				<td><input type="text" name="contact" /></td>
			</tr>
		</table>
	</s:form>-->

</body>
</html>