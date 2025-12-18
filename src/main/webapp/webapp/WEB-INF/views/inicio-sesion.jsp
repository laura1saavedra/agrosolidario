<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio sesión</title>

    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>
    <header>
        <div class="logo">AgroSolidario</div>

        <nav>
            <a href="${pageContext.request.contextPath}/index.html">Inicio</a>

            <!-- Página actual -->
            <a href="${pageContext.request.contextPath}/app/auth/inicio-sesion">Inicio de sesión</a>

            <!-- Antes: registro.html -->
            <a href="${pageContext.request.contextPath}/app/auth/registro">Regístrate</a>
        </nav>
    </header>

    <section class="seccion-formulario-inicio-sesion">

        <div class="contenedor-formulario">
            <h2>Inicio de sesión</h2>

            <!-- Más adelante este form apuntará a un servlet -->
            <form method="post" action="#">
                <label for="correo-inicio">Correo</label>
                <input type="email" id="correo-inicio" name="correo">

                <label for="contrasena-inicio">Contraseña</label>
                <input type="password" id="contrasena-inicio" name="contrasena">

                <!-- Antes: elige-perfil.jsp.html -->
                <a id="iniciar"
                   href="${pageContext.request.contextPath}/app/auth/elige-perfil">
                    Iniciar sesión
                </a>
            </form>

            <p class="texto-crear-cuenta">
                ¿No tienes una cuenta?
                <a href="${pageContext.request.contextPath}/index.html">Crear cuenta</a>
            </p>

        </div>

    </section>
</body>

</html>
