<%-- 
    Document   : Home
    Created on : 22/05/2025, 08:15:01 PM
    Author     : Target Directional
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="Modelos.Usuario" %>

<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Tienda Virtual - Inicio</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">

        <!-- Iconos -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <meta name="description" content="Tienda Virtual: Explora nuestra selección de computadores, smartphones, accesorios y más. Precios imbatibles.">
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

            /* Footer personalizado */
            .footer-vino {
                background-color: #6a1b44;
                color: white;
                padding: 40px 0 20px 0;
            }

            .footer-vino a {
                color: white;
            }

            .footer-vino hr {
                background-color: white;
            }
            /*CSS Banner Bienvenida*/
            .bienvenida {
                background: url('bienvenida.jpg') no-repeat center center;
                background-size: cover;
                color: white;
            }
            .bienvenida::before {
                content: "";
                position: absolute;
                top: 0; left: 0; width: 100%; height: 55.5%;
                background: rgba(0,0,0,0.3); /* oscurece ligeramente */
                z-index: 0;
            }
            .bienvenida > * {
                position: relative;
                z-index: 1;
            }
            /*CSS Carousel*/
            .carousel-item {
                position: relative;
            }

            .carousel-item .overlay {
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                background: rgba(0, 0, 0, 0.1); 
                z-index: 1;
            }

            .carousel-caption {
                z-index: 2; 
                position: relative;
                color: black;
            }
            .carousel-caption.center-caption {
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                bottom: auto; 
                text-align: center;
            }
            /*CSS Etiqueta Descuento*/
            .etiqueta-descuento {
                background-color: #255f4e; /* Verde oscuro */
                color: white;              /* Texto blanco */
                padding: 5px 10px;         /* Espaciado interno */
                border-radius: 5px;        /* Bordes redondeados */
                display: inline-block;     /* Para que no ocupe todo el ancho */
                font-weight: bold;         /* Negrita opcional */
                font-size: 14px;           /* Ajusta tamaño si lo deseas */
            }
            /*CSS Tarjetas*/
            .card {
                background-color: #f5f5f5; /* color claro tipo gris de fondo */
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: space-between;
                padding: 20px;
                border: none;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
                text-align: center;
            }
            .card-body {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100%;
            }
            .card img {
                max-height: 200px;
                object-fit: contain;
                margin: 15px 0;
            }
            /*CSS Fondo Productos*/
            .fondo-productos {
                background: url('purple.jpg') no-repeat center center;
                background-size: cover;
                background-attachment: fixed; /* opcional para efecto parallax */
                padding: 50px 20px;
                border-radius: 10px;
            }

            .fondo-productos .card {
                background-color: rgba(255, 255, 255, 0.95);
                box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            }

            .carousel-control-prev-icon,
            .carousel-control-next-icon {
                background-color: rgba(255, 255, 255, 0.8);
                border-radius: 50%;
                padding: 20px;
                filter: drop-shadow(0 0 3px #000);
            }
        </style>
    </head>

    <body>
        <!-- Banner principal con imagen a la derecha -->
        <div class="container-fluid py-5 bienvenida">
            <div class="row align-items-center" style="min-height: 400px;">

                <!-- Columna izquierda: logo + texto centrado -->
                <div class="col-md-6 d-flex flex-column justify-content-center align-items-center text-center">
                    <img src="logo1.jpg" alt="Logo Tienda Virtual" width="100" height="100" class="mb-4 rounded-circle shadow">
                    <h1 class="display-4">¡Bienvenido a Tienda Virtual!</h1>
                    <p class="lead">Los mejores productos tecnológicos al mejor precio</p>
                    <hr class="my-4" style="width: 100%;">
                    <p>Explora nuestra gama de computadores, celulares, accesorios, y más.</p>
                    <a class="btn btn-vino btn-lg mt-3" href="Controlador?menu=Productos">Ver Productos</a>
                </div>

                <!-- Columna derecha: imagen -->
                <div class="col-md-6 text-center">
                    <img src="Microempresas.png" alt="Almacén" class="img-fluid rounded shadow">

                </div>

            </div>
        </div>
        <!-- Carrousel de Imagenes -->
        <div id="carouselExampleCaptions" class="carousel slide mb-5" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Tablet.png" class="d-block w-100"style="height: 450px; object-fit: contain;" alt="Tablet Lenovo Tab M11">
                    <div class="overlay"></div>
                    <div class="carousel-caption center-caption d-none d-md-block">
                        <h5>Lenovo Tab M11</h5>
                        <p>$759.900</p>
                        <p class="etiqueta-descuento">42% de descuento</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Audifonos.png" class="d-block w-100"style="height: 450px; object-fit: contain; width: fit-content" alt="Auriculares Lenovo Wireless">
                    <div class="overlay"></div>
                    <div class="carousel-caption center-caption d-none d-md-block">
                        <h5>Auriculares Lenovo Wireless</h5>
                        <p>$329.900</p>
                        <p class="etiqueta-descuento">36% de descuento</p>
                    </div>
                </div>
                <div class="carousel-item ">
                    <img src="Portatil.png" class="d-block w-100"style="height: 450px; object-fit: contain;" alt="Portátil ThinkPad T14">
                    <div class="overlay"></div>
                    <div class="carousel-caption center-caption d-none d-md-block">
                        <h5>ThinkPad T14 5ta Gen - Black (AMD)</h5>
                        <p>$5.099.901</p>
                        <p class="etiqueta-descuento">51% de descuento</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container mb-5 mt-5">
            <!-- Sección de categorías -->
            <div class="container mb-5 mt-5">
                <div class="row text-center justify-content-center">
                    <div class="col-md-3 px-3 mb-4">
                        <i class="fas fa-laptop fa-5x mb-4 text-primary"></i>
                        <h5>Portátiles</h5>
                        <p>Rendimiento para trabajo o gaming.</p>
                    </div>
                    <div class="col-md-3 px-3 mb-4">
                        <i class="fas fa-mobile-alt fa-5x mb-4 text-success"></i>
                        <h5>Smartphones</h5>
                        <p>Últimos modelos Android y iOS.</p>
                    </div>
                    <div class="col-md-3 px-3 mb-4">
                        <i class="fas fa-headphones fa-5x mb-4 text-warning"></i>
                        <h5>Accesorios</h5>
                        <p>Audífonos, teclados, mouse, etc.</p>
                    </div>
                    <div class="col-md-3 px-3 mb-4">
                        <i class="fas fa-desktop fa-5x mb-4 text-danger"></i>
                        <h5>Componentes</h5>
                        <p>Tarjetas gráficas, RAM, SSD, más.</p>
                    </div>
                </div>
            </div>

        </div>
        <div class="container-fluid fondo-productos py-5">
            <!-- Tarjetas -->
            <div class="container py-4">
                <div class="row">
                    <div class="col-sm-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">ROG Strix SCAR 18 (2025)</h5>
                                <p class="card-text">Acelera Tu Victoria</p>
                                <img src="ROG.png" alt="ROG Strix SCAR 18" class="img-fluid">
                                <a href="#" class="btn btn-vino mt-2">Comprar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">ASUS Vivobook Go 15</h5>
                                <p class="card-text">Sé productivo mientras te desplazas</p>
                                <img src="w8001.png" alt="ASUS Vivobook Go 15" class="img-fluid">
                                <a href="#" class="btn btn-vino mt-2">Comprar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">Portátil ASUS Vivobook 16</h5>
                                <p class="card-text">Más inteligente, más productivo, más seguro</p>
                                <img src="w800.png" alt="ASUS Vivobook 16" class="img-fluid">
                                <a href="#" class="btn btn-vino mt-2">Comprar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h5 class="card-title">ASUS Zenbook 14 OLED</h5>
                                <p class="card-text">Nuevo Zen con IA</p>
                                <img src="w8002.png" alt="ASUS Zenbook 14 OLED" class="img-fluid">
                                <a href="#" class="btn btn-vino mt-2">Comprar</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Banner Video -->
                <div class="container my-5  text-center">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/v9H7fi2wydo?si=iThMQF7volVWq0z1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="footer-vino text-white pt-4 pb-2">
            <div class="container">
                <div class="row">
                    <!-- Información de contacto -->
                    <div class="col-md-4 mb-3">
                        <h5>Contacto</h5>
                        <p><i class="fas fa-map-marker-alt"></i> Calle 123 #45-67, Medellín, Colombia</p>
                        <p><i class="fas fa-phone-alt"></i> +57 300 123 4567</p>
                        <p><i class="fas fa-envelope"></i> soporte@tiendavirtual.com</p>
                    </div>

                    <!-- Redes sociales -->
                    <div class="col-md-4 mb-3 text-center">
                        <h5>Síguenos</h5>
                        <a href="https://facebook.com" target="_blank" class="text-white mx-2"><i class="fab fa-facebook fa-2x"></i></a>
                        <a href="https://instagram.com" target="_blank" class="text-white mx-2"><i class="fab fa-instagram fa-2x"></i></a>
                        <a href="https://twitter.com" target="_blank" class="text-white mx-2"><i class="fab fa-twitter fa-2x"></i></a>
                        <a href="https://youtube.com" target="_blank" class="text-white mx-2"><i class="fab fa-youtube fa-2x"></i></a>
                    </div>

                    <!-- Mapa de ubicación -->
                    <div class="col-md-4 mb-3">
                        <h5>Ubicación</h5>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3976.7795976468264!2d-75.57616718523748!3d6.249904495482831!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4429a108e9bfe5%3A0xdaa8704f6cb6e9c9!2sMedell%C3%ADn%2C%20Antioquia!5e0!3m2!1ses!2sco!4v1683843731034!5m2!1ses!2sco" 
                                width="100%" height="150" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>

                <hr class="bg-white">
                <p class="text-center mb-0">&copy; 2025 Tienda Virtual | Todos los derechos reservados</p>
            </div>
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
