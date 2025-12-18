<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Búsqueda de trabajadores</title>

    <!-- (asumiendo que favicon.svg está en la raíz de webapp) -->
<!--    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</head>

<body>
    <header class="header">
        <span>AgroSolidario</span>

        <nav>
            <a href="${pageContext.request.contextPath}/app/persona/perfil">Mi finca</a>
            <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
            <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

            <!-- Cerrar sesión: cambia esta ruta al endpoint real de logout/login que estés usando -->
            <a href="${pageContext.request.contextPath}/index.html">Cerrar sesión</a>
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
                    <!-- Antes: ./detalles-persona.html -->
                    <!-- En tu estructura existe revisar-persona.jsp, normalmente sería su ruta de controlador -->
                    <a href="${pageContext.request.contextPath}/detalles-oferta.html"
                       class="btn-dark btn-dark--detalles">Detalles</a>
                </div>

                <div class="busqueda-card__bottom">
                    <button class="btn-dark busqueda-card__pill">Disponible</button>

                    <!-- Antes: ./solicitud-enviada.html -->
                    <!-- Ajusta al endpoint real (ej: enviar solicitud) -->
                    <a href="${pageContext.request.contextPath}/solicitud-enviada.html"
                       class="btn-dark busqueda-card__pill">Enviar solicitud de empleo</a>
                </div>

                <!-- Antes: ./busqueda.jsp.html -->
                <a href="${pageContext.request.contextPath}/app/dueno/busqueda"
                   class="busqueda-card__arrow" aria-label="Volver">→</a>
            </article>

        </div>
    </main>

</body>
</html>

