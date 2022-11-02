<<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String dni = request.getParameter("dni");

    Estudiante estudiante = new Estudiante();
    estudiante.setDni(dni);


    List<Estudiante> estudiantes = (List) session.getAttribute("estudiantes");

    estudiantes.remove(estudiante);

    session.setAttribute("estudiantes", estudiantes);

    response.sendRedirect("estudiantes.jsp");

%>
