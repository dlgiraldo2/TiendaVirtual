<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="icon" href="logo1.jpg" type="image/x-icon">
        <title>Tienda Virtual</title>
        <style>
            /* Botones personalizados */
            .btn-vino {
                background-color: #6a1b44;
                color: white;
                border: none;
            }

            .btn-vino:hover {
                background-color: #551236;
                color: white;
            }
            /* Color de fondo al pasar el mouse sobre los links del navbar */
            .navbar-nav .nav-link,
            .navbar-nav .nav-item.active .nav-link {
                color: white !important;
                transition: 0.3s;
            }

            .navbar-nav .nav-link:hover,
            .navbar-nav .nav-item.active .nav-link:hover {
                color: #00ced1 !important; /* azul turquesa */
                text-decoration: underline;
            }


            /* Ajuste para que el contenido no quede tapado por el menú fijo */
            body {
                padding-top: 70px;
            }
            .banner-collage {
                display: flex;
                margin: 0;
                padding: 0;
                border: 0;
                background-color: #000;
                background-size: cover;
            }

            .banner-collage img {
                width: 100%;
                height: 250px;
                object-fit: cover;
                margin: 0;
                padding: 0;
                border: none;
                display: block;
            }

            body {
                margin: 0;
                padding: 0;
            }
        </style>

    </head>
    <body>
        <!-- Banner superior -->
        <div class="banner-collage">
            <img src="hero.png" alt="Banner 1">
            <img src="mobile.png" alt="Banner 2">
            <img src="desktop2.png" alt="Banner 3">
        </div>
        <!-- Menu -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
            <img src="logo1.jpg" width="40" height="40" class="d-inline-block align-top" alt="Logo">
            <a class="navbar-brand" href="#" style="color: #007bff; font-weight: bold; font-size: 20px;">Tienda Virtual</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Home" target="miContenedor">Home</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Productos" target="miContenedor">Productos</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Empleados" target="miContenedor">Empleados</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Clientes" target="miContenedor">Clientes</a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Ventas" target="miContenedor">Ventas</a>
                    </li>
                </ul>

                <div class="btn-group ml-auto">
                    <button type="button" class="btn btn-vino dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${usuario.getNombre()}
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i></a>
                        <a class="dropdown-item" href="#">${usuario.getDocumento()}</a>
                        <a class="dropdown-item" href="#">${usuario.getPassword()}</a>
                        <div class="dropdown-divider"></div>

                        <form class="dropdown-item" method="POST" action="Validar">
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">Cerrar Sesion</button>
                                     </form>
                    </div>  
                </div>
            </div>
        </nav>

        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        -->
        <div class="m-3" style="height:900px;">
            <iframe name="miContenedor" src="Controlador?menu=Home" style="height:100%; width:100%;" frameBorder="1"></iframe>
        </div>
    </body>
</html>