<%@ taglib uri="/struts-tags" prefix="s"%>


<h1>Bidder Details Of Your Product</h1>
<br>

<h3>Bidder Details</h3>

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
				<td><s:property value="username" /></td>
				<td><s:property value="email" /></td>
				<td><s:property value="phone" /></td>
				<td><s:property value="address" /></td>
			</tr>
		</s:iterator>
		<s:token />
	</table>
</div>
<br>
<s:a value="/seller/sellerwelcomepage.jsp">Return to seller welcome page</s:a>
