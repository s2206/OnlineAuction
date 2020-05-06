<%@ taglib uri="/struts-tags" prefix="s"%>

<h1>Login with your credentials</h1>

<s:form action="loginprocess" method="post">
	<s:textfield label="Seller Name" name="sellername"></s:textfield>
	<s:textfield label="Seller Password" name="password"></s:textfield>

	<br>
	<br>
	<tr>
		<td colspan="3"><s:submit value="LogIn" name="sLoginBtn"
				theme="simple"></s:submit> <s:submit value="Reset" name="sResetBtn"
				theme="simple"></s:submit></td>
	</tr>
</s:form>

<div>
	<s:a value="/welcome"> Return to home page</s:a>
</div>
