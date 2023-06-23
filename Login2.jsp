<%@page import="java.sql.*" %>
<%
    
        String s1=request.getParameter("un");
        String s2=request.getParameter("up");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///shivamdb?useSSL=false","root","9550");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from login where UNAME='"+s1+"'AND UPASS='"+s2+"'");
            if(rs.next())
            {
                //HttpSession session=request.getSession();
                //session.setAttribute("uname",s1);
                //Cookie ck=new Cookie("uname",s1);
                //ck.setMaxAge(60*60);
                //response.addCookie(ck);
                response.sendRedirect("mymenu2.jsp");
            }
            else
            {
                //out.println("invalid username password ");
                response.sendRedirect("Login.jsp?s1=invalid username password");
            }
            con.close();
        }
        catch(Exception e1)
        {
            out.println(e1);
        }
%>