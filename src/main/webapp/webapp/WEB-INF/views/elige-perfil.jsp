<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Selecciona tu perfil</title>

    <!-- favicon (asumiendo que está en la raíz de webapp) -->
    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>
    <div class="top-line"></div>

    <header>
        <div class="brand">AgroSolidario</div>

        <a href="${pageContext.request.contextPath}/index.html" class="exit-btn">Salir</a>
    </header>

    <main>
        <section class="panel">
            <h1 class="title">Selecciona tu perfil:</h1>
            <p class="subtitle">
                Elige el perfil que mejor se adapte a tu propósito<br />
                dentro de la plataforma.
            </p>

            <div class="cards">
                <article class="card" data-value="propietario">
                    <h3>Propietario de una<br />finca</h3>
                    <p>Clic para seleccionar esta<br />opción</p>

                    <!-- Antes: repropietario.html -->
                    <a href="${pageContext.request.contextPath}/app/auth/registro-propietario" class="radio"></a>
                </article>

                <article class="card" data-value="desplazamiento">
                    <h3>Persona en situación de<br />desplazamiento</h3>
                    <p>Clic para seleccionar esta<br />opción</p>

                    <!-- Antes: repersona.html -->
                    <a href="${pageContext.request.contextPath}/app/auth/registro-persona" class="radio"></a>
                </article>
            </div>
        </section>
    </main>

</body>

</html>
