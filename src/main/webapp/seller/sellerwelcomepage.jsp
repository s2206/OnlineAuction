<%@ taglib uri="/struts-tags" prefix="s"%>

<h1>Welcome Seller <s:property value="#session.sellername"/></h1>
<br>

<div>
	<h3>Place item to bid</h3>
	<s:a value="/seller/addItem.jsp"> Add Item to Bid</s:a>	
</div>
<br>


<div>
	<h3>Click view for bidder details</h3>
	<s:form action="bidderdetails">
		<s:submit value="View" name="view" theme="simple"></s:submit>
	</s:form>
</div>

<div>
	<s:a value="/welcome"> Logout</s:a>
</div>
<br>