<%@ page import="DatabaseElements.*"%>
<%@page import="java.sql.SQLException"%>
<html>

<head>
    
    <meta http-equiv="refresh" content="0; url=../CompPage/GCardPage.jsp" />
    
</head>
    
    
<%
    String st1 = request.getParameter("deletecod");
    
    
    
    try{
    DBConnection db = new DBConnection();
    db.Connect();
    db.removeShrt("GRAPHICS_CARD",st1.trim());
    db.closeall();
    }
    catch(SQLException e)
    {
        
    }
    
    
%>


</html>