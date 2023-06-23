<%
    String s1=request.getParameter("s1");
    
%>
<%=s1%>
<%
      String s2[]=request.getParameterValues("s2");
      for(String s:s2)
      {    
%>
<%=s    %>
<%}%>
<%
    String s3=request.getParameter("x");
    
%>
<%=s3%>
<%
    String s4[]=request.getParameterValues("x");
    for(String s:s4)
    { 
%>
<%=s%>
<%}%>