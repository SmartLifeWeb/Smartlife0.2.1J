<%-- 
    Document   : crear
    Created on : 30-mar-2017, 17:46:57
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html lang="en" style="height: 100%; margin: 0px;">
<head>
	<meta charset="UTF-8">

</head>

<body style="height: 100%; margin: 0px;">
    <h1>Actividad registrada</h1>


        <%
           
        Connection con = null;
        Statement sta= null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost/smartdatabase","root","n0m3l0");
            sta=con.createStatement();
            
            
            
            
        }
        catch(SQLException error){
            
            out.println(error.toString());
        }
        
        try{
            String nombreactividad = request.getParameter("nombreactividad");
            String tipoactividad = request.getParameter("tipoactividad");
              String fechainicio = request.getParameter("fechainicio");
                String fechatermino = request.getParameter("fechatermino");
                  String descripcion = request.getParameter("descripcion");
                  String prioridad = request.getParameter("prioridad"); 
                  sta.executeUpdate("Insert into actividad (NombreAct,FechaIni,FechaFin,Descripción,Prioridad)values('"+nombreactividad+"','"+fechainicio+"','"+fechatermino+"','"+descripcion+"','"+prioridad+"');"); 
                         
              
            
            
            
        }
        catch(SQLException error){
            
              out.println(error.toString());
        }
            
            
            con.close();
            
            
            
            
            
        

        
        
        %>
        
        
    </body>
</html>
