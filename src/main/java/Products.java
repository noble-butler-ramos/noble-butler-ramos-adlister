public interface Products {
    Product findById(long id);
    long createProduct(Product product);
}
