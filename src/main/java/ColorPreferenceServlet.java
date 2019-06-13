import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ColorPreferenceServlet", urlPatterns = "/color")
public class ColorPreferenceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // add color preference to the session and redirect to home page
        HttpSession session = request.getSession();
        String userColor = request.getParameter("color");
        session.setAttribute("color", userColor);
        response.sendRedirect("/");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // send color form
        request.getRequestDispatcher("/color-form.jsp").forward(request, response);
    }
}
