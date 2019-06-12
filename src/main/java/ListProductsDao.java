import java.util.ArrayList;
import java.util.List;

public class ListProductsDao implements Products {

    private List<Product> products;

    public ListProductsDao() {
        this.products = new ArrayList<>();
        products.add(new Product(1, "Hammer", 3000, "A bad hammer."));
    }

    @Override
    public Product findById(long id) {
        return products.get((int) id);
    }
}
