import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShowProductServlet", urlPatterns = "/products/show")
public class ShowProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long productId = Long.parseLong(request.getParameter("id"));
        Products productDao = DaoFactory.getProductsDao();
        Product p = productDao.findById(productId);
        request.setAttribute("product", p);
        request.getRequestDispatcher("/product-show.jsp").forward(request, response);
    }

}
