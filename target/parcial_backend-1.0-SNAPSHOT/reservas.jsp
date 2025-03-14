<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reserva de Espacio | WorkSpace</title>
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
        .card {
            background-color: #1f1f1f;
            border: 1px solid #bb86fc;
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
    
    <div class="container mt-5">
        <h1 class="text-center">Reserva tu Espacio</h1>
        <div class="card p-4 mx-auto" style="max-width: 500px;">
            <form action="ReservaServlet" method="post">
                <div class="mb-3">
                    <label class="form-label">Nombre:</label>
                    <input type="text" class="form-control" name="nombre" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Fecha de reserva:</label>
                    <input type="date" class="form-control" name="fecha" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Espacio de trabajo:</label>
                    <select class="form-select" name="espacio" required>
                        <option value="">Selecciona una opción</option>
                        <option value="ESCRITORIO">Escritorio</option>
                        <option value="SALA_DE_REUNIONES">Sala de reuniones</option>
                        <option value="OFICINA_PRIVADA">Oficina privada</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label class="form-label">Duración (horas):</label>
                    <input type="number" class="form-control" name="duracion" min="1" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Reservar</button>
            </form>
        </div>
    </div>
    
    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2025 WorkSpace - Todos los derechos reservados.</p>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
