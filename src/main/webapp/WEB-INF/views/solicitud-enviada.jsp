<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Solicitud enviada</title>

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
    <a href="${pageContext.request.contextPath}/app/dueno/perfil">Mi finca</a>
    <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
    <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

    <!-- Logout -->
    <a href="${pageContext.request.contextPath}/app/auth/logout">Cerrar sesión</a>
  </nav>
</header>

<main class="seleccion-persona">
  <h1 class="seleccion-persona__title">Acabas de enviarle la oferta a:</h1>

  <div class="seleccion-persona__card seleccion-persona__card--nombre">
    <p>Julio Gonzalo García López</p>
  </div>

  <div class="seleccion-persona__card seleccion-persona__card--accion">
    <p>¡Ahora te falta seleccionar otras 5 personas!</p>

    <!-- Volver a búsqueda -->
    <a href="${pageContext.request.contextPath}/app/dueno/busqueda"
       class="btn-dark seleccion-persona__btn">
       Volver
    </a>
  </div>
</main>

</body>
</html>
