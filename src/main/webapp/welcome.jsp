<%@ taglib uri="/struts-tags" prefix="s"%>

<h1>Enter as User or Seller</h1>

<s:form action="/welcome">
	<s:a value="/user/userdetails.jsp"> Login as User/Bidder </s:a>
	<br>
	<br>
	<s:a value="/seller/login.jsp">Login as Seller</s:a>
</s:form>