<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="icon" href="logo1.jpg" type="image/x-icon">
        <title>Tienda Virtual</title>
    </head>
    <body style="background-color: #e0e0e0;">
        <!-- Contenedor principal centrado -->
        <div class="container d-flex align-items-center justify-content-center" style="min-height: 100vh;">
            <!-- Fila centrada horizontalmente -->
            <div class="row justify-content-center">    
                <!-- Tarjeta (card) de Bootstrap 4.5 con ancho fijo -->
                <div class="card" style="width: 18rem;">
                    <!-- Logo en la parte superior de la tarjeta -->
                    <img src="logo1.jpg" class="card-img-top p-3" alt="Logo de Tienda Virtual">
                    <!-- Cuerpo de la tarjeta que contiene el formulario -->
                    <div class="card-body">
                        <!-- Formulario de inicio de sesión -->
                        <form method="POST" action="Validar" autocomplete="on">
                            <!-- Grupo del campo Documento -->
                            <div class="form-group">
                                <!-- Etiqueta del campo Documento -->
                                <label for="inputDocumento">N° de Documento</label>
                                <!-- Campo de entrada tipo texto -->
                                <input type="text" class="form-control" id="inputDocumento" name="txtusuario">
                                <!-- Texto de ayuda debajo del campo de Documento -->
                                <small id="emailHelp" class="form-text text-muted">
                                    Ingrese su documento sin espacios ni puntos.
                                </small>
                            </div>
                            <!-- Grupo del campo de contraseña -->
                            <div class="form-group">
                                <!-- Etiqueta del campo de contraseña -->
                                <label for="exampleInputPassword1">Contraseña</label>
                                <!-- Campo de entrada tipo password -->
                                <input type="password" class="form-control" id="exampleInputPassword1" name="txtpassword">
                            </div>
                            <!-- Grupo del checkbox -->
                            <div class="form-group form-check">
                                <!-- Casilla para seleccionar una opción -->
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <!-- Etiqueta para el checkbox -->
                                <label class="form-check-label" for="exampleCheck1">Permanecer loggeado</label>
                            </div>
                            <!-- Botón para enviar el formulario -->
                            <button type="submit" class="btn btn-primary" name="accion" value="Ingresar">Ingresar</button>
                        </form>
                    </div> <!-- Fin del cuerpo de la tarjeta -->
                </div> <!-- Fin de la tarjeta -->
            </div> <!-- Fin de la fila -->
        </div> <!-- Fin del contenedor -->
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->

        <!-- Scripts de Bootstrap -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>