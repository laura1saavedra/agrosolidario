<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Finalizar oferta</title>

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
    <!-- Rutas hacia servlets -->
    <a href="${pageContext.request.contextPath}/app/persona/perfil">Mi finca</a>
    <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
    <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

    <!-- Logout recomendado -->
    <a href="${pageContext.request.contextPath}/app/auth/logout">Cerrar sesión</a>
  </nav>
</header>

<main class="seleccion-persona">
  <h1 class="seleccion-persona__title">Finalizaste tu oferta</h1>

  <div class="seleccion-persona__card seleccion-persona__card--nombre">
    <p>Ya te pusiste en contacto con las personas seleccionadas. Es hora de que inicies el proceso de reclutamiento.</p>
  </div>

  <div class="seleccion-persona__card seleccion-persona__card--accion">
    <p>¡Éxitos!</p>

    <!-- Volver (servlet) -->
    <a href="${pageContext.request.contextPath}/app/dueno/lista-oferta"
       class="btn-dark seleccion-persona__btn">Volver</a>
  </div>
</main>

</body>
</html>
