package servlets;

import entity.Reserva;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ListaReservasServlet")
public class ListaReservasServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtener la lista de reservas desde la sesión
        HttpSession session = request.getSession();
        List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");
        
        if (reservas == null) {
            session.setAttribute("reservas", new java.util.ArrayList<Reserva>());
        }

        // Redirigir a la página de reservas
        request.getRequestDispatcher("reservas.jsp").forward(request, response);
    }
}
