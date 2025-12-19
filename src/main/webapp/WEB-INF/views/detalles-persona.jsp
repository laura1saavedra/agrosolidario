<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles trabajador</title>

    <!-- Favicon (si está en assets/imagenes) -->
    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>

<header>
    <div class="logo">AgroSolidario</div>
    <nav>
        <!-- Enlaces deben ir a Servlets (porque las vistas están en WEB-INF/views) -->
        <a href="${pageContext.request.contextPath}/app/dueno/perfil">Mi finca</a>
        <a href="${pageContext.request.contextPath}/app/dueno/ofertas">Mis ofertas</a>
        <a href="${pageContext.request.contextPath}/app/dueno/busqueda">Búsqueda de trabajadores</a>

        <!-- Logout recomendado -->
        <a href="${pageContext.request.contextPath}/app/auth/logout">Cerrar sesión</a>
    </nav>
</header>

<main>
    <!-- Card de persona -->
    <article class="aceptados-card">
        <div class="aceptados-card__left">
            <img class="aceptados-card__img"
                 src="${pageContext.request.contextPath}/assets/imagenes/campesino.jpg"
                 alt="Foto de trabajador" />
        </div>

        <div class="aceptados-card__info">
            <h2 class="aceptados-card__name">Julio Gonzalo García López</h2>
            <p>32 años</p>
            <p>juliogarcia1@gmail.com</p>
            <p>3118791938</p>
            <p>San Vicente, Antioquia</p>
            <p class="aceptados-card__bio">
                Realicé labores de recolección de café aplicando técnica, además de operar
                vehículos de carga liviana y mediana para el transporte de café, herramientas
                y personal dentro y fuera de la finca.
            </p>
            <p>Conducción, Recolector de café</p>
        </div>
    </article>

    <div class="aceptados-nav">
        <!-- Volver a la búsqueda -->
        <a href="${pageContext.request.contextPath}/app/dueno/busqueda" class="btn-dark aceptados-nav__btn">Volver</a>
    </div>
</main>

</body>
</html>
