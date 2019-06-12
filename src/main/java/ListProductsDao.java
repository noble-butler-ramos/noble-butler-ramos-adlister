import java.util.ArrayList;
import java.util.List;

public class ListProductsDao implements Products {

    private List<Product> products;

    public ListProductsDao() {
        this.products = new ArrayList<>();
        products.add(new Product(1, "Hammer", 3000, "A bad hammer."));
        products.add(new Product(2, "Toys", 34, "A good toy."));
        products.add(new Product(3, "TV", 23, "A bad tv."));
    }

    @Override
    public Product findById(long id) {
        return products.get((int) id - 1);
    }

    @Override
    public long createProduct(Product product) {
//        assign an ID
        product.setId(products.size()+1);
        //add a new Product to the arraylist
        products.add(product);
        return product.getId();
    }
}
