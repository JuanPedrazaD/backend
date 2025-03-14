<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.Reserva" %>
<%@ page import="java.util.List" %>
<%
    String idStr = request.getParameter("id");
    int id = (idStr != null) ? Integer.parseInt(idStr) : -1;

    List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");
    Reserva reservaSeleccionada = null;

    if (reservas != null) {
        for (Reserva r : reservas) {
            if (r.getId() == id) {
                reservaSeleccionada = r;
                break;
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Reserva | WorkSpace</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .navbar, footer {
            background-color: #1a1a1a;
        }
        .card {
            background-color: #1f1f1f;
            border: 1px solid #bb86fc;
        }
        .btn-danger {
            background-color: #ff5252;
            border-color: #ff5252;
        }
        .btn-secondary {
            background-color: #bb86fc;
            border-color: #bb86fc;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">WorkSpace</a>
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
        <h1 class="text-center">Eliminar Reserva</h1>
        <div class="card p-4 mx-auto" style="max-width: 500px;">
            <% if (reservaSeleccionada != null) { %>
                <p>¿Estás seguro de que quieres eliminar la siguiente reserva?</p>
                <ul>
                    <li><strong>Nombre:</strong> <%= reservaSeleccionada.getNombre() %></li>
                    <li><strong>Fecha:</strong> <%= reservaSeleccionada.getFechaReserva() %></li>
                    <li><strong>Espacio:</strong> <%= reservaSeleccionada.getTipoEspacio() %></li>
                    <li><strong>Duración:</strong> <%= reservaSeleccionada.getDuracion() %> horas</li>
                </ul>
                <form action="EliminarReservaServlet" method="post">
                    <input type="hidden" name="id" value="<%= reservaSeleccionada.getId() %>">
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                    <a href="listado-reservas.jsp" class="btn btn-secondary">Cancelar</a>
                </form>
            <% } else { %>
                <p class="text-danger">Reserva no encontrada.</p>
                <a href="listado-reservas.jsp" class="btn btn-secondary">Volver</a>
            <% } %>
        </div>
    </div>

    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2025 WorkSpace - Todos los derechos reservados.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
