<%@ taglib uri="/struts-tags" prefix="s"%>

<h1>Add item to place for bidding</h1>


<s:form action="additem" mehtod="post">
	<s:property value="LoginAction.sellername" />
	<s:textfield label="Item" name="item"></s:textfield>
	<!--<s:textfield label="Price" name="price"></s:textfield>-->

	<br>
	<br>
	<tr>
		<td colspan="5"><s:submit value="Add" name="AddBtn"
				theme="simple"></s:submit>
	</tr>

</s:form>

<br>
<s:a value="/seller/sellerwelcomepage.jsp">Return to seller welcome page</s:a>
