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

	<s:form action="/enteruserdetails">
		<s:textfield label="Name" name="UserName" requiredLabel="true"></s:textfield>
		<s:textfield label="Bidder's email" name="Email" requiredLabel="true"></s:textfield>
		<s:textfield label="Phone" name="Phone"></s:textfield>
		<s:textfield label="Postal address" name="Address"></s:textfield>
		<s:token />
		<br>
		<br>
		<tr>
			<td colspan="5">
			<s:submit value="Register" name="RegisterBtn" theme="simple"></s:submit> 
			<s:submit value="Reset" name="ResetBtn" theme="simple"></s:submit></td>
		</tr>
	</s:form>

</body>
</html>