<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Estudiante"%>
<%@page import="com.llvillar.libreria.model.Asignatura"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Estudiante estudiante = new Estudiante();
  estudiante.setNombre("1");
  estudiante.setApellidos("1");
  estudiante.setDni("1");
  estudiante.setDireccion("1");
  estudiante.setEmail("1");


  List<Estudiante> estudiantes = new ArrayList<Estudiante>();
  estudiantes.add(estudiante);

  session.setAttribute("estudiantes", estudiantes);

  Asignatura asignatura = new Asignatura();
  asignatura.setCodigo("1");
  asignatura.setDescipcion("1");

  List<Asignatura> asignaturas = new ArrayList<Asignatura>();
  asignaturas.add(asignatura);

  session.setAttribute("asignaturas", asignaturas);

%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Instituto</title>
</head>
<body>
<h1>Menu principal</h1>
<p><a href="estudiantes/estudiantes.jsp">Estudiantes</a></p>
<p><a href="asignaturas/asignaturas.jsp">Asignaturas</a></p>
</body>
</html>