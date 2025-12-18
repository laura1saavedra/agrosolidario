<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>

    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <script src="${pageContext.request.contextPath}/assets/js/app.js" defer></script>
</head>

<body>
    <header>
        <div class="logo">AgroSolidario</div>

        <nav>
            <a href="${pageContext.request.contextPath}/index.html">Inicio</a>

            <!-- Antes: inicio-sesion.html -->
            <a href="${pageContext.request.contextPath}/app/auth/inicio-sesion">Inicio de sesión</a>

            <!-- Página actual -->
            <a href="${pageContext.request.contextPath}/app/auth/registro">Regístrate</a>
        </nav>
    </header>

    <section class="seccion-formulario-registro">

        <div class="contenedor-formulario">
            <h2>Regístrate</h2>

            <!-- Más adelante: action apuntará al servlet que registra -->
            <form method="post" action="#">

                <label for="nombre">Nombre completo:</label>
                <input type="text" id="nombre" name="nombre">

                <label for="correo">Correo:</label>
                <input type="email" id="correo" name="correo">

                <label for="contrasena">Contraseña:</label>
                <input type="password" id="contrasena" name="contrasena">

                <div class="acepto-terminos">
                    <input type="checkbox" id="terminos" name="terminos">
                    <label for="terminos">Acepto los términos y condiciones</label>
                </div>

                <!-- Antes: elige-perfil.jsp.html -->
                <a href="${pageContext.request.contextPath}/app/auth/elige-perfil"
                   id="continuar-btn">Continuar</a>

            </form>
        </div>

    </section>
</body>

</html>
