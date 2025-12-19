<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Búsqueda de trabajadores</title>

    <!-- Favicon (si lo tienes en assets/imagenes) -->
    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <!-- JS -->
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</head>

<body>
    <header class="header">
        <span>AgroSolidario</span>

        <nav>
            <!-- Estas rutas deben apuntar a Servlets -->
            <a href="${pageContext.request.contextPath}/app/persona/perfil">Mi finca</a>
            <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
            <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

            <!-- Cerrar sesión (idealmente /app/auth/logout) -->
            <a href="${pageContext.request.contextPath}/app/auth/logout">Cerrar sesión</a>
        </nav>
    </header>

    <main class="busqueda">
        <div class="busqueda__wrap">

            <h1 class="busqueda__title">Búsqueda de trabajadores:</h1>

            <!-- Filtros -->
            <section class="busqueda__filters">
                <div class="busqueda__fields">
                    <div class="busqueda__field">
                        <label for="ubicacion">Ubicación:</label>
                        <input id="ubicacion" type="text">
                    </div>

                    <div class="busqueda__field">
                        <label for="habilidades">Habilidades:</label>
                        <input id="habilidades" type="text">
                    </div>

                    <div class="busqueda__field">
                        <label for="edad">Edad:</label>
                        <input id="edad" type="number">
                    </div>
                </div>

                <div class="busqueda__actions">
                    <button id="btnLimpiar" class="busqueda__btn">Limpiar</button>
                    <button id="btnBuscar" class="busqueda__btn">Buscar</button>
                </div>
            </section>

            <!-- Card / Perfil -->
            <article class="busqueda-card">
                <img class="busqueda-card__img"
                     src="${pageContext.request.contextPath}/assets/imagenes/campesino.jpg"
                     alt="Foto trabajador">

                <div class="busqueda-card__info">
                    <h2 class="busqueda-card__name">Julio Gonzalo García Lopez</h2>
                    <p>32 años</p>
                    <p>San Vicente, Antioquia</p>
                    <p>Conducción, Recolector de cafe</p>
                </div>

                <div class="busqueda-card__right">
                    <!-- Detalles del trabajador: debe ser servlet (porque la JSP está en WEB-INF/views) -->
                    <a href="${pageContext.request.contextPath}/app/dueno/detalle-persona"
                       class="btn-dark btn-dark--detalles">Detalles</a>
                </div>

                <div class="busqueda-card__bottom">
                    <button class="btn-dark busqueda-card__pill">Disponible</button>

                    <!-- Enviar solicitud: debe ser servlet -->
                    <a href="${pageContext.request.contextPath}/app/solicitudes/enviar"
                       class="btn-dark busqueda-card__pill">Enviar solicitud de empleo</a>
                </div>

                <!-- Volver a la búsqueda (mismo servlet) -->
                <a href="${pageContext.request.contextPath}/app/dueno/busqueda"
                   class="busqueda-card__arrow" aria-label="Volver">→</a>
            </article>

        </div>
    </main>

</body>
</html>
