<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Publicar oferta</title>

  <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

  <script src="${pageContext.request.contextPath}/assets/js/app.js" defer></script>
</head>

<body>
  <header>
    <div class="logo">AgroSolidario</div>
    <nav>
      <a href="${pageContext.request.contextPath}/app/persona/perfil">Mi finca</a>
      <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
      <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>
      <a href="${pageContext.request.contextPath}/index.html">Cerrar sesión</a>
    </nav>
  </header>

  <main class="publicar-oferta">
    <section class="publicar-oferta__wrap">

      <h1 class="publicar-oferta__title">Publicar nueva oferta de empleo:</h1>
      <p class="publicar-oferta__subtitle">
        Llena la información sobre el trabajo disponible en su finca.
      </p>

      <!-- Más adelante: action apuntará a tu servlet que guarda la oferta -->
      <form id="form-publicar" method="post" action="#">

        <!-- Card 1 -->
        <div class="form-box publicar-oferta__card">
          <div class="publicar-oferta__field">
            <label for="titulo">Título del trabajo:</label>
            <input id="titulo" name="titulo" type="text" />
          </div>

          <div class="publicar-oferta__field">
            <label for="descripcion">Descripción del trabajo:</label>
            <textarea id="descripcion" name="descripcion"></textarea>
          </div>

          <div class="publicar-oferta__field">
            <label for="requisitos">Requisitos del trabajo:</label>
            <textarea id="requisitos" name="requisitos"></textarea>
          </div>
        </div>

        <div class="form-box publicar-oferta__card publicar-oferta__card--inferior">
          <div class="row publicar-oferta__row">
            <div>
              <label for="salario">Salario:</label>
              <input id="salario" name="salario" type="number" />
            </div>

            <div>
              <label for="num">Número de trabajadores requeridos:</label>
              <input id="num" name="num_trabajadores" type="number" />
            </div>

            <div class="full">
              <label for="fecha">Fecha de inicio de la oferta:</label>
              <input id="fecha" name="fecha_inicio" type="text" placeholder="dd/mm/aaaa" />
            </div>
          </div>
        </div>

        <!-- Acciones -->
        <div class="publicar-oferta__actions">
          <button type="submit" class="btn-dark publicar-oferta__btn">Publicar</button>

          <!-- Antes: ofertas.html -->
          <a href="${pageContext.request.contextPath}/app/dueno/ofertas"
             class="btn-dark publicar-oferta__btn">Cancelar</a>
        </div>

      </form>

      <div id="alertOverlay" class="alert-overlay">
        <div class="alert-box">
          <div class="alert-title">Aviso</div>
          <div id="alertMsg" class="alert-message"></div>
          <button id="alertBtn" class="alert-btn">OK</button>
        </div>
      </div>

    </section>
  </main>

</body>

</html>
