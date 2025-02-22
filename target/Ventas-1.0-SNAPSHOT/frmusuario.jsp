<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Punto de venta</title>
    </head>
    <body>
         <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="opcion" value="usuarios"/>
            </jsp:include>
        <div class="container">
            <h1>Formulario de Usuarios</h1>

           

            <form action="UsuarioControlador" method="post">
                <input type="hidden" name="id" value="${usuario.id}">
                <div class="mb-3">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombres" value="${usuario.nombres}" placeholder="Escriba sus nombres" required>                   
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellidos" value="${usuarios.apellidos}" placeholder="Escriba sus apellidos" required>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Correo Electronico</label>
                    <input type="email" class="form-control" name="email" value="${usuario.email}" placeholder="Escriba su Correo Electronico" required>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" name="password" value="${usuario.password}" placeholder="Escriba su contraseña" required>
                </div>

                <button type="submit" class="btn btn-primary">Registrarse</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

