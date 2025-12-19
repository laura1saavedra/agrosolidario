<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de ofertas</title>

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

<header class="header">
    <span>AgroSolidario</span>

    <nav>
        <a href="${pageContext.request.contextPath}/app/persona/perfil">Mi finca</a>
        <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
        <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

        <!-- Logout recomendado -->
        <a href="${pageContext.request.contextPath}/app/auth/logout">Cerrar sesión</a>
    </nav>
</header>

<main class="mis-ofertas">
    <section class="mis-ofertas__wrap">

        <h1 class="mis-ofertas__title">Mis ofertas:</h1>

        <div class="mis-ofertas__tabla">
            <table class="mis-ofertas-table">
                <thead>
                    <tr>
                        <th>Título del trabajo</th>
                        <th>Personas que aceptaron la oferta</th>
                        <th>Estado de la oferta</th>
                        <th>Modificar oferta / fecha finalización</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>Trabajador agrícola</td>
                        <td>
                            <!-- Revisar personas (servlet) -->
                            <a href="${pageContext.request.contextPath}/app/dueno/revisar-persona"
                               class="btn-dark btn-dark--review">Revisar</a>
                        </td>
                        <td class="mis-ofertas__estado">Activa</td>
                        <td>
                            <!-- Finalizar oferta (servlet) -->
                            <a href="${pageContext.request.contextPath}/app/dueno/fin-oferta"
                               class="btn-dark mis-ofertas__finalizar">Finalizar</a>
                        </td>
                    </tr>

                    <tr>
                        <td>Trabajador agrícola</td>
                        <td>5</td>
                        <td class="mis-ofertas__estado">Finalizada</td>
                        <td class="mis-ofertas__fecha">13/10/25</td>
                    </tr>

                    <tr class="mis-ofertas__fila-vacia">
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="mis-ofertas__actions">
            <!-- Publicar oferta (servlet) -->
            <a href="${pageContext.request.contextPath}/app/dueno/publicar-oferta"
               class="btn-dark mis-ofertas__publish">Publicar oferta</a>
        </div>

    </section>
</main>

</body>
</html>
