
<%@ taglib uri="/struts-tags" prefix="s"%>

<h1>Items Available for Bidding</h1>

<s:form action="enterbidprice">
	<tr>
		<th>Item Name:</th>
		<td colspan="5"><s:text name="TV"></s:text></td>
	</tr>
	<tr>
		<td><s:textfield label="Price" name="price"></s:textfield></td>
	</tr>
	<s:token />
	<br>
	<br>
	<tr>
		<td colspan="5"><s:submit value="Bid" name="BidBtn"
				theme="simple"></s:submit>
	</tr>
</s:form>

<div>
	<s:a value="/welcome"> Logout</s:a>
</div>
