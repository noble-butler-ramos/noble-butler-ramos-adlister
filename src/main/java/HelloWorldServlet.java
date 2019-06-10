import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        try {
            PrintWriter out = res.getWriter();
            String name = "World";
            if (req.getParameter("name") != null) {
                name = req.getParameter("name");
            }
            out.println("Hello " + name);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
