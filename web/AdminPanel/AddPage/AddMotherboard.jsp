<%@ page import="Components.MBLoader"%>
<%@ page import="DatabaseElements.*"%>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=ISO-8859-5" %>

<html>
    <head>
        <meta http-equiv="refresh" content="0; url=../CompPage/MotherboardPage.jsp" />
    </head>
</html>
<%
    //legge i valori ricevuti dal form HTML
    String Stringa1 = new String (request.getParameter("brand"));
    String Stringa2 = new String (request.getParameter("model"));
    String Stringa3 = new String (request.getParameter("socket_cpu"));
    String Stringa4 = new String (request.getParameter("formfactor"));
    String Stringa5 = new String (request.getParameter("chipset"));
    String Stringa6 = new String (request.getParameter("ram_slots"));
    int Int2 = Integer.parseInt(Stringa6);
    String Stringa7 = new String (request.getParameter("ram_type"));
    String Stringa8 = new String (request.getParameter("ram_max_gb"));
    int Int3 = Integer.parseInt(Stringa8);
    String Stringa9 = new String (request.getParameter("tdp"));
    int Int4 = Integer.parseInt(Stringa9);
    String Stringa10 = new String (request.getParameter("price"));
    double Dub1 = Double.parseDouble(Stringa10);

    try{
        DBConnection db = new DBConnection();
        MBLoader mb = new MBLoader();
        db.Connect();
        db.filldbMB(Stringa1, Stringa2, Stringa3, Stringa4, Stringa5, Int2, Stringa7, Int3, Int4, Dub1);
    }
    catch(SQLException ex){
        out.println("Connessione fallita.");
    }
%>