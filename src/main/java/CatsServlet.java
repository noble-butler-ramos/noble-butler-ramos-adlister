import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "CatsServlet", urlPatterns = "/cats")
public class CatsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().removeAttribute("likesCats");
        response.sendRedirect("/");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // get session
        HttpSession session = request.getSession();

        // check if session contains value, otherwise, redirect to form that sets the value
        if (session.getAttribute("likesCats") != null) {
            boolean likesCats = (boolean) session.getAttribute("likesCats");
            String cuteCatImgUrl = "https://d17fnq9dkz9hgj.cloudfront.net/uploads/2018/03/Scottish-Fold_01.jpg";
            String notCuteCatImgUrl = "https://ksassets.timeincuk.net/wp/uploads/sites/55/2018/01/Grumpy-Cat-920x584.jpg";
            // if value is true, send the cute cat image; otherwise, send the ugly one
            String imgUrl = (likesCats) ? cuteCatImgUrl : notCuteCatImgUrl;
            request.setAttribute("imgUrl", imgUrl);
            request.getRequestDispatcher("/WEB-INF/cats.jsp").forward(request, response);
        } else {
            response.sendRedirect("/cats-form");
        }
    }
}
