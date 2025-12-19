<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Detalles oferta</title>

    <!-- Favicon (si está en assets/imagenes) -->
    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>
<header>
  <span class="brand">AgroSolidario</span>
  <nav>
    <!-- Enlaces deben ir a Servlets -->
    <a href="${pageContext.request.contextPath}/app/solicitudes">Gestión de solicitudes</a>
    <a href="${pageContext.request.contextPath}/app/persona/perfil">Perfil</a>

    <!-- Logout recomendado -->
    <a href="${pageContext.request.contextPath}/app/auth/logout" class="exit-btn">Cerrar sesión</a>
  </nav>
</header>

<main>
  <section class="detalles">
    <h1 class="detalles__title">Detalles de la oferta</h1>

    <div class="gestion__panel detalles__panel">

      <div class="gestion__rol detalles__rol">
        <span>Trabajador agrícola</span>

        <!-- Cerrar: vuelve a solicitudes -->
        <a href="${pageContext.request.contextPath}/app/solicitudes" class="detalles__close" aria-label="Cerrar">×</a>
      </div>

      <div class="detalles__body">

        <div class="detalles__media">
          <img src="${pageContext.request.contextPath}/assets/imagenes/finca.jpeg" alt="Imagen de la finca">
          <div class="detalles__salary">
            <span>Salario:</span>
            <strong>2.000.000.000</strong>
          </div>
        </div>

        <div class="detalles__info">
          <div class="detalles__block">
            <h3>Descripción de la finca:</h3>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Aliquam convallis tempus sem mattis luctus.
            </p>
          </div>

          <div class="detalles__block">
            <h3>Descripción del trabajo:</h3>
            <p>
              Praesent non ex quis lectus semper condimentum. Aenean
              accumsan tortor quis lacus feugiat vestibulum.
            </p>
          </div>

          <div class="detalles__block">
            <h3>Requisitos:</h3>
            <p>
              Praesent non ex quis lectus semper condimentum. Aenean
              accumsan tortor quis lacus feugiat vestibulum.
            </p>
          </div>
        </div>

      </div>
    </div>
  </section>
</main>

</body>
</html>
