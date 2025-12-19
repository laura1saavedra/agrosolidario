<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Información guardada propietario</title>

  <!-- Favicon -->
  <link rel="icon" type="image/svg+xml"
        href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

  <!-- Google Fonts (externo, está bien así) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@400;500;600&display=swap" rel="stylesheet">

  <!-- CSS -->
  <link rel="stylesheet"
        href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>

<header>
  <div class="logo">AgroSolidario</div>
  <nav>
    <!-- Enlaces a servlets -->
    <a href="${pageContext.request.contextPath}/app/solicitudes">
      Gestión de solicitudes
    </a>

    <a href="${pageContext.request.contextPath}/app/persona/perfil" class="active">
      Perfil
    </a>

    <!-- Logout -->
    <a href="${pageContext.request.contextPath}/app/auth/logout">
      Cerrar sesión
    </a>
  </nav>
</header>

<main class="perfil-exito">

  <div class="perfil-exito__top">
    <h1>Perfil:</h1>
  </div>

  <section class="perfil-exito__card" role="status" aria-live="polite">
    <p>¡Tu información fue guardada con éxito!</p>

    <div class="perfil-exito__icon" aria-hidden="true">
      <!-- ícono check (SVG) -->
      <svg viewBox="0 0 120 120" width="140" height="140">
        <circle cx="60" cy="60" r="46" fill="none" stroke="black" stroke-width="10" />
        <path d="M38 62 L54 78 L82 48"
              fill="none" stroke="black" stroke-width="12"
              stroke-linecap="round" stroke-linejoin="round" />
      </svg>
    </div>
  </section>

  <!-- Salir / volver -->
  <a class="perfil-exito__btn"
     href="${pageContext.request.contextPath}/app/solicitudes">
     Salir
  </a>
</main>

</body>
</html>
