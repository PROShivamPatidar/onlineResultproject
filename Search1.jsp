<%@page import="java.sql.*" %>                        
<html>
    <body>
        <%@include file="mymenu2.jsp"%>
        
        <center>
<%
                        String s1=request.getParameter("b1");
                        if(s1!=null)
                        {
                        String s11=request.getParameter("ur");
                        try
                        {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///shivamdb?useSSL=false","root","9550");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select * from inmark where ROLL='"+s11+"'");
                        if(rs.next())
                        {
                        %>
<form action="Update.jsp">
                        <table cellpadding="12">
                
    
<tr>
<td>URN</td>
<td><input type="text" value=<%= rs.getString(1)%> name="n1" class="A"></td>
</tr>

<tr>                                 
<td>Name</td>
 <td><input type="text" value=<%= rs.getString(2)%> name="n2" class="A"></td>
</tr>

<tr>
<td>Phy</td>
<td><input type="text" value=<%= rs.getString(3)%> name="n3" class="A"></td>
</tr>

<tr>
<td>Chem</td>
<td><input type="text" value=<%= rs.getString(4)%> name="n4" class="A"></td>
</tr>

<tr>
<td>UMATHS</td>
<td><input type="text" value=<%= rs.getString(5)%> name="n5" class="A"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" name="b2" value="update"></th>
</tr>

</table>
</form>
<%
    }
        else
     {
        // out.println("invalid roll.no");
         response.sendRedirect("Search.jsp?s1=invalid Rollno");
     }
     con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
}
%>
                        
</center>                   
</body>
</html>