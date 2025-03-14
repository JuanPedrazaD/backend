package servlets;

import entity.Reserva;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Obtener parámetros del formulario
        String nombre = request.getParameter("nombre");
        String fechaReservaStr = request.getParameter("fecha");
        String tipoEspacioStr = request.getParameter("espacio");
        String duracionStr = request.getParameter("duracion");

        String errorMessage = "";

        // Validaciones
        if (nombre == null || nombre.trim().isEmpty()) {
            errorMessage = "El nombre es obligatorio. ";
        }

        LocalDate fechaReserva = null;
        try {
            fechaReserva = LocalDate.parse(fechaReservaStr);
        } catch (DateTimeParseException e) {
            errorMessage += "Formato de fecha incorrecto. ";
        }

        Reserva.TipoEspacio tipoEspacio = null;
        try {
            tipoEspacio = Reserva.TipoEspacio.valueOf(tipoEspacioStr.toUpperCase().replace(" ", "_"));
        } catch (IllegalArgumentException e) {
            errorMessage += "Tipo de espacio inválido. ";
        }

        int duracion = 0;
        if (duracionStr != null && duracionStr.matches("\\d+")) {
            duracion = Integer.parseInt(duracionStr);
            if (duracion <= 0) {
                errorMessage += "La duración debe ser mayor a 0. ";
            }
        } else {
            errorMessage += "La duración debe ser un número válido. ";
        }

        // Si hay errores, regresar con un mensaje
        if (!errorMessage.isEmpty()) {
            response.getWriter().write("<script>alert('" + errorMessage + "'); window.history.back();</script>");
            return;
        }

        // Crear el objeto Reserva con valores convertidos
        Reserva reserva = new Reserva(nombre, fechaReserva, tipoEspacio, duracion);

        // Guardar en la sesión
        HttpSession session = request.getSession();
        List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");
        if (reservas == null) {
            reservas = new ArrayList<>();
        }
        reservas.add(reserva);
        session.setAttribute("reservas", reservas);

        // Redirigir con mensaje de éxito
        response.getWriter().write(
            "<script>"
            + "alert('Reserva guardada exitosamente.');"
            + "window.location='reservas.jsp';"
            + "</script>"
        );
    }

    @Override
    public String getServletInfo() {
        return "Servlet para gestionar reservas";
    }
}
