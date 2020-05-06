<%@ taglib uri="/struts-tags" prefix="s"%>

<h1>Enter your contact details</h1>

<s:form action="enteruserdetails">
	<s:textfield label="Name" name="username" requiredLabel="true"></s:textfield>
	<s:textfield label="Bidder's email" name="email" requiredLabel="true"></s:textfield>
	<s:textfield label="Phone" name="phone"></s:textfield>
	<s:textfield label="Postal address" name="address"></s:textfield>
	<s:token />
	<br>
	<br>
	<tr>
		<td colspan="5"><s:submit value="Register" name="RegisterBtn"
				theme="simple"></s:submit> <s:submit value="Reset" name="ResetBtn"
				theme="simple"></s:submit></td>
	</tr>
</s:form>
<div>
	<s:a value="/welcome"> Logout</s:a>
</div>