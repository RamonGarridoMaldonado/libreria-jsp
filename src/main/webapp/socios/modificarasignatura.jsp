<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%
    String codigo = request.getParameter("codigo");
    String descripcion = request.getParameter("descripcion");

    Asignatura asignatura = new Asignatura();
    asignatura.setDni(codigo);
    asignatura.setNombre(descripcion);

    List<Asignatura> asignaturas = (List) session.getAttribute("asignaturas");

    asignaturas.remove(asignatura);
    asignaturas.add(asignatura);

    session.setAttribute("asignaturas", asignaturas);

    response.sendRedirect("asignaturas.jsp");

%>
