<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String nombre = request.getParameter("nombre");
    String apellidos = request.getParameter("apellidos");
    String dni = request.getParameter("dni");
    String direccion = request.getParameter("direccion");
    String email = request.getParameter("email");


    Estudiante estudiante = new Estudiante();
    estudiante.setNombre(nombre);
    estudiante.setApellidos(apellidos);
    estudiante.setDni(dni);
    estudiante.setDireccion(direccion);
    estudiante.setEmail(email);


    List<Estudiante> estudiantes = (List) session.getAttribute("estudiantes");

    estudiantes.add(estudiante);

    session.setAttribute("estudiantes", estudiantes);

    response.sendRedirect("estudiantes.jsp");

%>