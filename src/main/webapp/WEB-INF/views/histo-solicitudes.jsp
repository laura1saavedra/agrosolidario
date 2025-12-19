<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Historial solicitudes de empleo</title>

    <!-- Favicon -->
    <link rel="icon" type="image/svg+xml"
          href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <!-- CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/style.css">
</head>

<body>

<header>
    <div class="logo">AgroSolidario</div>

    <nav>
        <!-- Gestión de solicitudes (servlet) -->
        <a href="${pageContext.request.contextPath}/app/persona/solicitudes">
            Gestión de solicitudes
        </a>

        <!-- Perfil persona desplazada -->
        <a href="${pageContext.request.contextPath}/app/persona/perfil">
            Perfil
        </a>

        <!-- Logout -->
        <a href="${pageContext.request.contextPath}/app/auth/logout">
            Cerrar sesión
        </a>
    </nav>
</header>

<section class="historial">
    <h1 class="historial__title">Historial de solicitudes de empleo:</h1>

    <div class="historial__tabla">
        <table class="tabla-historial" aria-label="Historial de solicitudes de empleo">

            <thead>
                <tr>
                    <th>Nombre de la finca:</th>
                    <th>Título del trabajo:</th>
                    <th>Estado de la solicitud:</th>
                    <th>Fecha de la solicitud:</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>Villa Jilito</td>
                    <td>Trabajador agrícola</td>
                    <td>Aceptada</td>
                    <td>26/10/25</td>
                </tr>

                <tr>
                    <td>Villa linda</td>
                    <td>Trabajador agrícola</td>
                    <td>Rechazada</td>
                    <td>13/10/25</td>
                </tr>

                <tr class="tabla-historial__fila-vacia">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>

        </table>
    </div>
</section>

</body>
</html>
