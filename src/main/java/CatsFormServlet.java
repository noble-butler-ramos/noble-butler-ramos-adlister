import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CatsFormServlet", urlPatterns = "/cats-form")
public class CatsFormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // forget the preference
        HttpSession session = request.getSession();
        session.setAttribute("likesCats", Boolean.parseBoolean(request.getParameter("likesCats")));
        response.sendRedirect("/cats");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // show cat preference form
        request.getRequestDispatcher("/cats-form.jsp").forward(request, response);
    }
}
