<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio | WorkSpace</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .navbar, footer {
            background-color: #1a1a1a;
        }
        .navbar-brand, .nav-link {
            color: #bb86fc !important;
        }
        .nav-link:hover {
            color: #ffffff !important;
        }
        .banner {
            background: url('https://source.unsplash.com/1600x900/?office,workspace') center/cover no-repeat;
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .banner h1 {
            background: rgba(26, 26, 26, 0.8);
            padding: 20px;
            border-radius: 10px;
            color: #bb86fc;
        }
        .btn-primary {
            background-color: #bb86fc;
            border-color: #bb86fc;
        }
        .btn-primary:hover {
            background-color: #9b6cfb;
            border-color: #9b6cfb;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">WorkSpace</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="reservas.jsp">Reservas</a></li>
                    <li class="nav-item"><a class="nav-link" href="listado-reservas.jsp">Listado Reservas</a></li>
                    <li class="nav-item"><a class="nav-link active" href="eliminar-reservas.jsp">Eliminar Reserva</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="banner">
        <h1>Bienvenido a WorkSpace</h1>
    </div>

    <div class="container mt-5 text-center">
        <h2 class="text-light">Tu espacio de trabajo ideal</h2>
        <p class="text-secondary">
            WorkSpace te ofrece los mejores espacios de trabajo para que puedas concentrarte y ser productivo.
            Reserva salas de reuniones, oficinas privadas y escritorios compartidos con solo unos clics.
        </p>
        <a href="reservas.jsp" class="btn btn-primary btn-lg mt-3">Reservar Ahora</a>
    </div>

    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2025 WorkSpace - Todos los derechos reservados.</p>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
