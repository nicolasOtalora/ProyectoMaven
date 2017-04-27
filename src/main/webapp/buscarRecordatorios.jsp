<%-- 
    Document   : listarRecordatorios
    Created on : 23/04/2017, 12:17:51 PM
    Author     : ayoro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body {
                background-image: url(Sidney.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                margin: 0;
                padding: 0;
            }

            .logo{
                text-align: right;
            }

            .title{
                text-align: center;
                color: #ffffff;
            }

            .subtitle{
                color: #000000;
                margin-left: 370px;
            }

            .form{
                text-align: center;
                margin-left: 270px;
                font-weight: bold;
                color: #ffffff;
            }

            .editar{
                text-align: center;
            }

            .buscar{
                width: 490px;
            }

            .confC{
                margin-left: 90px;
                padding-left: 50px;
            }

            .btn {
                background: #3498db;
                background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
                background-image: -moz-linear-gradient(top, #3498db, #2980b9);
                background-image: -ms-linear-gradient(top, #3498db, #2980b9);
                background-image: -o-linear-gradient(top, #3498db, #2980b9);
                background-image: linear-gradient(to bottom, #3498db, #2980b9);
                -webkit-border-radius: 28;
                -moz-border-radius: 28;
                border-radius: 28px;
                text-shadow: 1px 1px 3px #666666;
                font-family: Arial;
                color: #ffffff;
                font-size: 12px;
                padding: 10px 20px 10px 20px;
                text-decoration: none;
            }

            .btn:hover {
                background: #3cb0fd;
                background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
                background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
                background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
                text-decoration: none;
            }

            .enjoy-input {
                display: inline-block;
                -webkit-box-sizing: content-box;
                -moz-box-sizing: content-box;
                box-sizing: content-box;
                padding: 5px 20px;
                border: 1px solid #b7b7b7;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                font: normal medium/normal Arial, Helvetica, sans-serif;
                color: rgba(0,142,198,1);
                -o-text-overflow: clip;
                text-overflow: clip;
                background: rgba(252,252,252,1);
                -webkit-box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) inset;
                box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.2) inset;
                text-shadow: 1px 1px 0 rgba(255,255,255,0.66) ;
                -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
                -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
                -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
                transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1);
            }

            .enjoy-input:hover {
                border: 1px solid #a3a3a3;
                background: rgba(255,255,255,1);
                -webkit-transition: all 100ms cubic-bezier(0.42, 0, 0.58, 1);
                -moz-transition: all 100ms cubic-bezier(0.42, 0, 0.58, 1);
                -o-transition: all 100ms cubic-bezier(0.42, 0, 0.58, 1);
                transition: all 100ms cubic-bezier(0.42, 0, 0.58, 1);
            }

            .enjoy-input:focus {
                border: 1px solid #018dc4;
                -webkit-box-shadow: 4px 4px 4px 0 rgba(0,0,0,0.2) inset;
                box-shadow: 4px 4px 4px 0 rgba(0,0,0,0.2) inset;
                -webkit-transition: all 50ms cubic-bezier(0.42, 0, 0.58, 1);
                -moz-transition: all 50ms cubic-bezier(0.42, 0, 0.58, 1);
                -o-transition: all 50ms cubic-bezier(0.42, 0, 0.58, 1);
                transition: all 50ms cubic-bezier(0.42, 0, 0.58, 1);
            }
            
            #descrp{
                margin-right: 100px ;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Recordatorios</title>
    </head>
    <body>
        <div class="logo"><a href="opciones.jsp"><image src="logo_pagina.png"/></a></div>
        <div class="title"><h2>BUSCAR RECORDATORIOS</h2></div><br>
        <%if (request.getAttribute("mensaje")=="error") {%>
            <script>alert("No se encontró el recordatorio. Asegúrese de haber llenado correctamente todos los campos");</script>
        <%}%>
        <div class="form">
            <form action="BuscarRecordatorioServlet" method="get" name="form">
                <%
                    String id = (String) request.getAttribute("id");
                    String fecha = (String) request.getAttribute("fecha");
                    String hora = (String) request.getAttribute("hora");
                    String descripcion = (String) request.getAttribute("descripcion");
                %>
                <table text-align="center">
                    <tr>
                        <td>ID del Recordatorio: <input class="enjoy-input" type="text" name="id"></td>
                        <td><input class="btn" type="submit" value="Buscar"</td>
                    </tr>
                </table>
                <br><br>
                <table>
                    <tr>
                        <td>ID: <input class="enjoy-input" type="text" name="id" <%if(id!=null){%>value="<%=id%>"<%}%>></td>
                        <td>Fecha: <input class="enjoy-input" type="date" name="fecha" <%if(fecha!=null){%>value="<%=fecha%>"<%}%>></td>
                        <td>Hora: <input class="enjoy-input" type="time" name="hora" <%if(hora!=null){%>value="<%=hora%>"<%}%>></td>
                    </tr>
                    <tr id="descrp">
                        <td colspan="3">Descripcion: <input style="width: 710px" class="enjoy-input" type="text" name="descripcion" <%if(descripcion!=null){%>value="<%=descripcion%>"<%}%>></td>
                    </tr>
                </table>
            </form><br><br>
        </div>
        
        <form action="ListarRecordatorioServlet" method="get" name="formu" style="text-align: center">
            <input class="btn" type="submit" value="Listar recordatorios">
        </form>
    </body>
</html>
