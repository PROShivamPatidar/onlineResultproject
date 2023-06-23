<%@page import="java.sql.*"%>
  
                        <html>
                            
                            <body>
                                <form action="">
                                <%@include file="mymenu2.jsp"%>
                                <center>
    <%
                        String s1=request.getParameter("b2");
                        if(s1!=null)
                        {
         String s11=request.getParameter("n1");
         String s22=request.getParameter("n2"); 
         String s33=request.getParameter("n3");
          String s44=request.getParameter("n4");
           String s55=request.getParameter("n5");
         
        try     
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///shivamdb?useSSL=false","root","9550");
            Statement st=con.createStatement();
            st.executeUpdate("update inmark set NAME='"+s22+"',PHY='"+s33+"',CHE='"+s44+"',MATH='"+s55+"' WHERE ROLL='"+s11+"'");
                   response.sendRedirect("showall.jsp");
            con.close();
        }
        catch(Exception e1)
        {
            out.println(e1);
        }
    }
%>
  </center>                   
</body>
</html>