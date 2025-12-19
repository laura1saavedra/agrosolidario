<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgroSolidario - Registro</title>

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

<div class="header">
    <span>AgroSolidario</span>

    <!-- Volver al inicio público -->
    <a href="${pageContext.request.contextPath}/" class="exit-btn">Salir</a>
</div>

<!-- FORMULARIO COMPLETO -->
<form method="post"
      action="${pageContext.request.contextPath}/app/auth/registro-persona"
      enctype="multipart/form-data">

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
            <!-- Enviar formulario -->
            <button type="submit" class="btn">
                Continuar
            </button>
        </div>
    </div>

</form>

</body>
</html>
