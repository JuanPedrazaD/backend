package servlets;

import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import entity.Reserva;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ReservaServlet")
public class ReservaServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtener parámetros del formulario
        String nombre = request.getParameter("nombre");
        String fechaReserva = request.getParameter("fecha");
        String tipoEspacio = request.getParameter("espacio");
        String duracionStr = request.getParameter("duracion");
        
        String errorMessage = "";
        
        // Validaciones
        if (nombre == null || nombre.trim().isEmpty()) {
            errorMessage = "El nombre es obligatorio. ";
        }
        if (fechaReserva == null || fechaReserva.trim().isEmpty()) {
            errorMessage += "La fecha de reserva es obligatoria. ";
        }
        if (tipoEspacio == null || tipoEspacio.trim().isEmpty()) {
            errorMessage += "El tipo de espacio es obligatorio. ";
        }
        int duracion = 0;
        try {
            duracion = Integer.parseInt(duracionStr);
            if (duracion <= 0) {
                errorMessage += "La duración debe ser mayor a 0. ";
            }
        } catch (NumberFormatException e) {
            errorMessage += "La duración debe ser un número válido. ";
        }
        
        // Si hay errores, regresar con un mensaje
        if (!errorMessage.isEmpty()) {
            response.getWriter().write("<script>alert('" + errorMessage + "'); window.history.back();</script>");
            return;
        }
        
        
        
        // Convertir la fecha de String a LocalDate
        LocalDate fechaReservaDate = null;
        try {
            fechaReservaDate = LocalDate.parse(fechaReserva);
        } catch (DateTimeParseException e) {
            response.getWriter().write("<script>alert('Formato de fecha incorrecto.'); window.history.back();</script>");
            return;
        }

        // Convertir tipoEspacio de String a Enum
        Reserva.TipoEspacio espacioEnum;
        try {
            espacioEnum = Reserva.TipoEspacio.valueOf(tipoEspacio.toUpperCase().replace(" ", "_"));
        } catch (IllegalArgumentException e) {
            response.getWriter().write("<script>alert('Tipo de espacio inválido.'); window.history.back();</script>");
            return;
        }

        // Ahora crear la reserva con los tipos correctos
        Reserva reserva = new Reserva(nombre, fechaReservaDate, espacioEnum, duracion);
        
        // Guardar en la sesión
        HttpSession session = request.getSession();
        List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");
        if (reservas == null) {
            reservas = new ArrayList<>();
        }
        reservas.add(reserva);
        session.setAttribute("reservas", reservas);
        
        // Responder con mensaje de éxito
        response.getWriter().write(
            "<script>"
            + "alert('Reserva guardada exitosamente.');"
            + "window.location='reservas.jsp';"
            + "</script>"
        );
    }
}
