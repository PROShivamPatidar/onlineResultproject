<%@page import="java.sql.*"%>
<%@include file="mymenu2.jsp"%>
<%
    try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql:///shivamdb?useSSL=false","root","9550");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from inmark");
out.println("<center>");
out.println("<table cellpadding='12' border=1>");
out.println("<tr>");
out.println("<th>R.No.</th>");
out.println("<th>Name</th>");
out.println("<th>phy</th>");
out.println("<th>chem</th>");
out.println("<th>math</th>");
out.println("</tr>");
while(rs.next())
{
out.println("<tr>");
out.println("<td>"+rs.getString(1)+"</td>");
out.println("<td>"+rs.getString(2)+"</td>");
out.println("<td>"+rs.getString(3)+"</td>");
out.println("<td>"+rs.getString(4)+"</td>");
out.println("<td>"+rs.getString(5)+"</td>");
out.println("</tr>");
}
out.println("</table>");
out.println("</center>");
con.close();
}
catch(Exception e)
{
out.println(e);
}
%>