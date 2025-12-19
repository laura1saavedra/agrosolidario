<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio sesión</title>

    <!-- Favicon -->
    <link rel="icon" type="image/svg+xml"
          href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <!-- CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>
<header>
    <div class="logo">AgroSolidario</div>

    <nav>
        <!-- Inicio público -->
        <a href="${pageContext.request.contextPath}/">Inicio</a>

        <!-- Página actual -->
        <a href="${pageContext.request.contextPath}/app/auth/inicio-sesion">
            Inicio de sesión
        </a>

        <!-- Registro -->
        <a href="${pageContext.request.contextPath}/app/auth/registro">
            Regístrate
        </a>
    </nav>
</header>

<section class="seccion-formulario-inicio-sesion">

    <div class="contenedor-formulario">
        <h2>Inicio de sesión</h2>

        <!-- Este formulario luego apuntará a un servlet -->
        <form method="post" action="${pageContext.request.contextPath}/LoguearseServlet">
            <label for="correo-inicio">Correo</label>
            <input type="email" id="correo-inicio" name="correo">

            <label for="contrasena-inicio">Contraseña</label>
            <input type="password" id="contrasena-inicio" name="contrasena">

            <!-- Botón real de envío -->
            <button type="submit" id="iniciar">
                Iniciar sesión
            </button>
        </form>

        <p class="texto-crear-cuenta">
            ¿No tienes una cuenta?
            <a href="${pageContext.request.contextPath}/app/auth/registro">
                Crear cuenta
            </a>
        </p>

    </div>

</section>
</body>

</html>
