<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libro</title>
</head>
<body>

    <form action="altaestudiante.jsp" method="post">
        <label for="nombre">nombre</label>
        <input type="text" name="nombre" id="nombre" value="">
        <label for="apellidos">apellidos</label>
        <input type="text" name="apellidos" id="apellidos" value="">
        <label for="dni">dni</label>
        <input type="text" name="dni" id="dni" value="">
        <label for="direccion">direccion</label>
        <input type="text" name="direccion" id="direccion" value="">
        <label for="email">email</label>
        <input type="text" name="email" id="email" value="">
        <input type="submit" value="Nuevo">
    </form>
    
</body>
</html>