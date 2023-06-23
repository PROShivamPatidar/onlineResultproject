<%@page import="java.sql.*"%>
<html>
<body>
<%@include file="mymenu2.jsp"%>
<center>
    <%
    String s=request.getParameter("s1");
    if(s!=null)
    {   
    %>
    <%=s%>
    <%}%>
    
<form action="Search1.jsp">
<table cellpadding="12">
 <tr>
<td>Enter ROLLno</td>
<td><input type="text" placeholder="Enter RNO" name="ur" class="A"></td>
</tr>
<tr>
<th colspan="2"><input type="submit" class="B" name="b1" value="search"></th>
</tr>
</center>
</table>
</form>
