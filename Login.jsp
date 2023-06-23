<html>
    <%@include file="mymenu1.jsp" %>
    <div id="img">
<div id="mydata">
<center>
    <%
    String s=request.getParameter("s1");
    if(s!=null)
    {   
    %>
    <%=s%>
    <%}%>
    
<form action="Login2.jsp">
<table  cellpadding="12">
<caption><font color="white"><b>Welcome to Login Page</caption>
<tr>
<td>Enter Name:-</td>
<td><input type="text" placeholder="Enter Name" name="un" class="A"></td>
</tr>
<tr>
<td>Enter Password:-</td>
<td><input type="password" placeholder="Enter Password" name="up"class="A"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" value="Login" class="B"></th>
</tr>
</table>
</form>
</center>
</div>
</div>
</body>
