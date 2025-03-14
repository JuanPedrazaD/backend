import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import entity.Reserva;

@WebServlet("/EliminarReservaServlet")
public class EliminarReservaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idStr = request.getParameter("id");
        
        if (idStr != null) {
            int id = Integer.parseInt(idStr);
            
            HttpSession session = request.getSession();
            List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");

            if (reservas != null) {
                reservas.removeIf(reserva -> reserva.getId() == id);
                session.setAttribute("reservas", reservas);
            }
        }
        
        response.sendRedirect("listado-reservas.jsp");
    }
}
