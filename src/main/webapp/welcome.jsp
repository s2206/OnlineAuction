<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Online Auction</title>
</head>
<body>

<body>
	<h1>Enter as User or Seller</h1>

	<s:form action="/welcome" method="post">
		<s:a value="/user/userdetails.jsp"> Login as User/Bidder </s:a>
		<br>
		<br>
		<s:a value="/seller/login.jsp">Login as Seller</s:a>
	</s:form> 
</body>
</html>