<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	<h1>Bidder Details</h1>

	<div>
		<table border="1">
			<tr>
				<th>Price</th>
				<th>Item</th>
				<th>UserName</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
			</tr>
			<s:iterator value="list">
				<tr>
					<td><s:property value="price" /></td>
					<td><s:property value="item" /></td>
					<td><s:property value="userName" /></td>
					<td><s:property value="email" /></td>
					<td><s:property value="phone" /></td>
					<td><s:property value="address" /></td>
				</tr>
			</s:iterator>
			<s:token />
		</table>
	</div>

	<!--<s:iterator value="list">
		<fieldset>
			<s:property value="price" />
			<br />
			<s:property value="item" />
			<br />
			<s:property value="userName" />
			<br />
			<s:property value="email" />
			<br />
			<s:property value="phone" />
			<br />
			<s:property value="address" />
			<br />
		</fieldset>
	</s:iterator>-->

</body>
</html>