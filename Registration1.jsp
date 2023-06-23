<%@page import="java.sql.*" %>
<%
        String s1=request.getParameter("un");
        String s2=request.getParameter("up");
        try     
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///shivamdb?useSSL=false","root","9550");
            Statement st=con.createStatement();
            st.executeUpdate("insert into login values('"+s1+"','"+s2+"')");
                //response.sendRedirect("Login.html");
            out.println("data inserted");
            con.close();
        }
        catch(Exception e1)
        {
            out.println(e1);
        }
    %>