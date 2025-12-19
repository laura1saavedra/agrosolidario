<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Mis ofertas</title>

  <!-- Favicon -->
  <link rel="icon" type="image/svg+xml"
        href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

  <!-- CSS (corregido + quitada la "s" accidental) -->
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/style.css">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@400;500;600&display=swap" rel="stylesheet">
</head>

<body>

  <header>
    <div class="logo">AgroSolidario</div>

    <nav>
      <a href="${pageContext.request.contextPath}/app/persona/perfil">Mi finca</a>
      <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
      <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

      <!-- Logout recomendado -->
      <a href="${pageContext.request.contextPath}/app/auth/logout">Cerrar sesión</a>
    </nav>
  </header>

  <main class="mis-ofertas">
    <section class="panel panel--mis-ofertas">
      <h1 class="title">Mis ofertas:</h1>
      <p class="subtitle">¿Qué deseas realizar?</p>

      <div class="cards cards--mis-ofertas">

        <article class="card card--mis-ofertas">
          <h3>Publicar una oferta</h3>
          <p>Click para seleccionar esta<br>opción</p>

          <a class="radio"
             href="${pageContext.request.contextPath}/app/dueno/publicar-oferta"
             aria-label="Seleccionar publicar oferta"></a>
        </article>

        <article class="card card--mis-ofertas">
          <h3>Revisar mis ofertas</h3>
          <p>Click para seleccionar esta<br>opción</p>

          <a class="radio"
             href="${pageContext.request.contextPath}/app/dueno/lista-oferta"
             aria-label="Seleccionar revisar ofertas"></a>
        </article>
      </div>
    </section>

    <div id="alertOverlay" class="alert-overlay">
      <div class="alert-box">
        <div class="alert-title">Aviso</div>
        <div id="alertMsg" class="alert-message"></div>
        <button id="alertBtn" class="alert-btn">OK</button>
      </div>
    </div>
  </main>

  <script>
    document.addEventListener("DOMContentLoaded", () => {

      const flagPublicada = sessionStorage.getItem("mostrarAvisoPublicada") === "1";

      // se mantiene: validación por pathname
      const enOfertas = window.location.pathname.includes("ofertas");

      if (!flagPublicada || !enOfertas) return;

      let alertOverlay = document.getElementById("alertOverlay");
      let alertMsg = document.getElementById("alertMsg");
      let alertBtn = document.getElementById("alertBtn");

      if (!alertOverlay || !alertMsg || !alertBtn) {
        const modalHTML = `
          <div id="alertOverlay" class="alert-overlay show">
            <div class="alert-box">
              <div class="alert-title">Aviso</div>
              <div id="alertMsg" class="alert-message"></div>
              <button id="alertBtn" class="alert-btn">OK</button>
            </div>
          </div>
        `;
        document.body.insertAdjacentHTML("beforeend", modalHTML);

        alertOverlay = document.getElementById("alertOverlay");
        alertMsg = document.getElementById("alertMsg");
        alertBtn = document.getElementById("alertBtn");
      }

      alertMsg.textContent =
        "Su oferta ya está disponible para las personas ideales para ese cargo.";
      alertOverlay.classList.add("show");

      alertBtn.onclick = () => alertOverlay.classList.remove("show");

      sessionStorage.removeItem("mostrarAvisoPublicada");

    });
  </script>

</body>
</html>
