<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Items List</title>
</head>
<body>
	<h1>Items Available for Bidding</h1>

	<s:form action="/enterbidprice">
		<tr>
			<th>Item Name:</th>
			<td colspan="5"><s:text name="TV"></s:text></td>
		</tr>
		<tr>
			<td><s:textfield label="Price" name="Price"></s:textfield></td>
		</tr>
		<s:token />
		<br>
		<br>
		<tr>
			<td colspan="5"><s:submit value="Bid" name="BidBtn"
					theme="simple"></s:submit>
		</tr>
	</s:form>
</body>
</html>