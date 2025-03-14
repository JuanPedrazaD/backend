<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Reserva" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%
    List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");
    if (reservas == null) {
        reservas = new java.util.ArrayList<>();
    }

    // Formato de fecha
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Reservas | WorkSpace</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body { background-color: #121212; color: #ffffff; }
        .navbar, footer { background-color: #1a1a1a; }
        .card { background-color: #1f1f1f; border: 1px solid #bb86fc; }
        .btn-danger { background-color: #ff5252; border-color: #ff5252; }
        .btn-secondary { background-color: #bb86fc; border-color: #bb86fc; }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
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
        <h1 class="text-center">Eliminar Reservas</h1>
        <div class="card p-4">
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Fecha</th>
                        <th>Espacio</th>
                        <th>Duración (horas)</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% if (!reservas.isEmpty()) { 
                        for (Reserva reserva : reservas) { %>
                        <tr>
                            <td><%= reserva.getNombre() %></td>
                            <td><%= (reserva.getFechaReserva() != null) ? reserva.getFechaReserva().format(formatter) : "Fecha inválida" %></td>
                            <td><%= reserva.getTipoEspacio() %></td>
                            <td><%= reserva.getDuracion() %></td>
                            <td>
                                <form action="EliminarReservaServlet" method="post">
                                    <input type="hidden" name="id" value="<%= reserva.getId() %>">
                                    <button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
                                </form>
                            </td>
                        </tr>
                    <% } } else { %>
                        <tr>
                            <td colspan="5" class="text-center text-warning">No hay reservas registradas.</td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
            <a href="index.jsp" class="btn btn-secondary w-100 mt-3">Volver</a>
        </div>
    </div>

    <footer class="text-white text-center py-3 mt-5">
        <p>&copy; 2025 WorkSpace - Todos los derechos reservados.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
