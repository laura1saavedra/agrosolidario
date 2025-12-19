<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>

    <!-- Favicon -->
    <link rel="icon" type="image/svg+xml"
          href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <!-- CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- JS -->
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</head>

<body>
<header>
    <div class="logo">AgroSolidario</div>

    <nav>
        <a href="${pageContext.request.contextPath}/">Inicio</a>

        <a href="${pageContext.request.contextPath}/app/auth/inicio-sesion">
            Inicio de sesión
        </a>

        <a href="${pageContext.request.contextPath}/app/auth/registro">
            Regístrate
        </a>
    </nav>
</header>

<section class="seccion-formulario-registro">

    <div class="contenedor-formulario">
        <h2>Regístrate</h2>

        <!-- Enviar a servlet (recomendado) -->
        <form method="post" action="${pageContext.request.contextPath}/app/auth/registro">

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

            <!-- Botón real -->
            <button type="submit" id="continuar-btn">
                Continuar
            </button>

        </form>
    </div>

</section>
</body>

</html>

