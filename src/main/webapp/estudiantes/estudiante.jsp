<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

    String dni = request.getParameter("dni");
    
    List<Estudiante> estudiantes = (List) session.getAttribute("estudiantes");

    Estudiante estudiante = new Estudiante();
    estudiante.setIsbn(dni);

    int index = estudiantes.indexOf(estudiante);

    estudiante = estudiantes.get(index);

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estudiante</title>
</head>
<body>

    <form action="modificarestudiante.jsp" method="post">
        <label for="isbn">nombre</label>
        <input type="text" name="nombre" id="nombre" value="<%= libro.getNombre()%>">
        <label for="titulo">apellidos</label>
        <input type="text" name="apellidos" id="apellidos" value="<%= libro.getApellidos()%>">
        <label for="autor">dni</label>
        <input type="text" name="dni" id="dni" value="<%= libro.getDni()%>">
        <label for="autor">direccion</label>
        <input type="text" name="direccion" id="direccion" value="<%= libro.getDireccion()%>">
        <label for="autor">email</label>
        <input type="text" name="email" id="email" value="<%= libro.getEmail()%>">
        <input type="submit" value="Modificar">
    </form>
    
</body>
</html>