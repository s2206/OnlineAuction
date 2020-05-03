<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Seller</title>
</head>
<body>
	<h1>Login with your credentials</h1>

	<s:form action="/viewbidderdetails" method="post">
		<s:textfield label="Name" name="sName"></s:textfield>
		<s:textfield label="Password" name="sPwd"></s:textfield>
		<s:token />
		<br>
		<br>
		<tr>
			<td colspan="3">
			<s:submit value="LogIn" name="sLoginBtn" theme="simple" ></s:submit> 
			<s:submit value="Reset" name="sResetBtn" theme="simple" ></s:submit></td>
		</tr>

	</s:form>
</body>
</html>