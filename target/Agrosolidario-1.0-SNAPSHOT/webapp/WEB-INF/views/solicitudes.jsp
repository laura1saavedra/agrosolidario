<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitudes de empleo</title>

    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <script src="${pageContext.request.contextPath}/assets/js/app.js" defer></script>
</head>

<body>
    <header>
        <div class="logo">AgroSolidario</div>
        <nav>
            <a href="${pageContext.request.contextPath}/app/persona/solicitudes">Gestión de solicitudes</a>
            <a href="${pageContext.request.contextPath}/app/persona/perfil">Perfil</a>
            <a href="${pageContext.request.contextPath}/index.html">Cerrar sesión</a>
        </nav>
    </header>

    <section class="gestion">
        <div class="gestion__encabezado">
            <h1>Gestión de solicitudes de empleo</h1>
            <p>Acepta o rechaza la solicitud de empleo enviada por el propietario de finca</p>
        </div>

        <div class="gestion__panel">
            <h2 class="gestion__rol">Trabajador agrícola</h2>

            <article class="solicitud-card">
                <img class="solicitud-card__img"
                     src="${pageContext.request.contextPath}/assets/imagenes/finca.jpeg"
                     alt="Foto de la finca" />

                <div class="solicitud-card__info">
                    <p><strong>Finca:</strong></p>
                    <p><strong>Ubicación:</strong></p>
                    <p><strong>Fecha de envío:</strong></p>
                    <p><strong>Fecha límite de respuesta:</strong></p>
                </div>

                <div class="solicitud-card__detalles">
                    <!-- Antes: detalles-oferta.html -->
                    <a href="${pageContext.request.contextPath}/detalles-oferta.html"
                       class="btn-dark btn-dark--detalles">Detalles</a>
                </div>

                <div class="solicitud-card__acciones">
                    <button class="btn-dark">Aceptar</button>
                    <button class="btn-dark">Rechazar</button>
                </div>
            </article>
        </div>

        <!-- Antes: histo-solicitudes.html -->
        <a href="${pageContext.request.contextPath}/app/persona/historial-solicitudes"
           class="btn-dark btn-dark--historial">Historial</a>

    </section>

    <div class="alert-overlay alert-overlay--solicitud">
        <div class="alert-box" role="alertdialog" aria-modal="true">
            <h3 class="alert-title">Solicitud enviada</h3>
            <p class="alert-message">
                Has aceptado la oferta. Muy pronto tendrás noticias del propietario de la finca a través de la
                plataforma o tus datos de contacto registrados.
            </p>
            <button type="button" class="alert-btn">Entendido</button>
        </div>
    </div>
</body>

</html>
