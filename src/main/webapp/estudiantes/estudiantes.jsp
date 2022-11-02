<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de estudiantes</title>

    <style>
        table, th, td {
        border: 1px solid;
        }
    </style>

</head>
<body>
    <h2>Estudiantes</h2>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Dni</th>
            <th>Direccion</th>
            <th>Email</th>
            <th colspan="2"><a href="nuevoestudiante.jsp">Nuevo</a></th>
        </tr>
            <%

                List<Estudiante> estudiantes = (List) session.getAttribute("estudiantes");

                for(Estudiante estudiante: estudiantes) {
                    out.print("<tr>");
                    out.print("<td>" + estudiante.getNombre() + "</td>");
                    out.print("<td>" + estudiante.getApellidos() + "</td>");
                    out.print("<td>" + estudiante.getDni() + "</td>");
                    out.print("<td>" + estudiante.getDireccion() + "</td>");
                    out.print("<td>" + estudiante.getEmail() + "</td>");
                    out.print("<td><a href=\"estudiante.jsp?dni=" + libro.getDni() + "\">editar</a></td>");
                    out.print("<td><a href=\"bajaestudiante.jsp?dni=" + libro.getDni() + "\">eliminar</a></td>");
                    out.print("</tr>");
                }
            %>
    </table>
</body>
</html>