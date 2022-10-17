<%@ page language='java' contentType="text/html" %>

<%@page import="com.llvillar.libreria.model.Libro"%>
<%@page import="com.llvillar.libreria.model.Socio"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>


<%@page session="true" %>

<%

  Libro libro = new Libro();
  libro.setIsbn("1");
  libro.setAutor("Miguel de cervantes");
  libro.setTitulo("El quijote");

  Libro libro1 = new Libro();
  libro1.setIsbn("2");
  libro1.setAutor("JJ Tolkins");
  libro1.setTitulo("El señor de los anillos");

  Libro libro3 = new Libro();
  libro3.setIsbn("3");
  libro3.setAutor("Elvira Lindo");
  libro3.setTitulo("Manolito Gafotas");

  List<Libro> libros = new ArrayList<Libro>();
  libros.add(libro);
  libros.add(libro1);
  libros.add(libro3);

  session.setAttribute("libros", libros);

  Socio socio = new Socio();
  socio.setDni("DNI1");
  socio.setNombre("Nombre1");
  socio.setApellidos("Apellidos1");
  socio.setDireccion("Direccion1");
  socio.setTelefono("Telefono1");

  Socio socio2 = new Socio();
  socio2.setDni("DNI2");
  socio2.setNombre("Nombre2");
  socio2.setApellidos("Apellidos2");
  socio2.setDireccion("Direccion2");
  socio2.setTelefono("Telefono2");

  Socio socio3 = new Socio();
  socio3.setDni("DNI3");
  socio3.setNombre("Nombre3");
  socio3.setApellidos("Apellidos3");
  socio3.setDireccion("Direccion3");
  socio3.setTelefono("Telefono3");

  List<Socio> socios = new ArrayList<Socio>();
  socios.add(socio);
  socios.add(socio2);
  socios.add(socio3);

  session.setAttribute("socios", socios);

%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Libreria</title>
</head>
<body>
<h1>Menu principal</h1>
<p><a href="libros/libros.jsp">Libros</a></p>
<p><a href="socios/socios.jsp">Socios</a></p>
<p><a href="socios/socios.jsp">Prestamos</a></p>

</body>
</html>