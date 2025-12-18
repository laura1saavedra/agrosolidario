<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgroSolidario - Registro</title>

    <link rel="icon" type="image/svg+xml" href="${pageContext.request.contextPath}/assets/imagenes/favicon.svg">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">

    <script src="${pageContext.request.contextPath}/assets/js/app.js" defer></script>
</head>

<body>

    <div class="header">
        <span>AgroSolidario</span>

        <!-- Volver al index -->
        <a href="${pageContext.request.contextPath}/index.html" class="exit-btn">Salir</a>
    </div>

    <div class="container">
        <h2>Registro persona en situación de desplazamiento</h2>
        <p>Por favor complete el siguiente formulario con sus datos personales.</p>

        <div class="form-box">
            <div class="label-title">Datos personales:</div>

            <div class="row">
                <div>
                    <label>Número de documento:</label>
                    <input type="text" name="documento">
                </div>

                <div>
                    <label>Ubicación actual:</label>
                    <input type="text" name="ubicacion" placeholder="Colombia, Bogotá D.C">
                </div>
            </div>

            <div class="row">
                <div>
                    <label>Número de celular:</label>
                    <input type="text" name="celular">
                </div>

                <div>
                    <label>Edad:</label>
                    <input type="number" name="edad">
                </div>
            </div>
        </div>
    </div>

    <div class="separator"></div>

    <div class="container">
        <div class="form-box">
            <div class="label-title">Experiencia laboral:</div>

            <label>Descripción de experiencia laboral:</label>
            <textarea rows="4" name="experiencia"></textarea>

            <label>Habilidades que domina:</label>
            <input type="text" name="habilidades">

            <label>Años de experiencia:</label>
            <input type="number" name="anios_experiencia">
        </div>
    </div>

    <div class="separator"></div>

    <div class="container">
        <div class="form-box">
            <div class="label-title">Documentos de verificación:</div>

            <div class="row">
                <div style="text-align:center;">
                    <p>Adjunte su documento de <br />identificación:</p>

                    <input id="doc-id-identificacion"
                           class="file-input"
                           type="file"
                           name="doc_identificacion"
                           accept=".pdf,.jpg,.jpeg,.png" />

                    <label for="doc-id-identificacion" class="upload-btn">Subir archivo</label>
                </div>

                <div style="text-align:center;">
                    <p>Adjuntar documento que certifique <br />desplazamiento:</p>

                    <input id="doc-id-desplazamiento"
                           class="file-input"
                           type="file"
                           name="doc_desplazamiento"
                           accept=".pdf,.jpg,.jpeg,.png" />

                    <label for="doc-id-desplazamiento" class="upload-btn">Subir archivo</label>
                </div>
            </div>
        </div>

        <div class="btn-wrapper">
            <!-- Antes: solicitudes.html -->
            <a class="btn"
               href="${pageContext.request.contextPath}/app/persona/solicitudes">
                Continuar
            </a>
        </div>
    </div>

</body>

</html>
