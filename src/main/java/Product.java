import java.io.Serializable;

public class Product implements Serializable {

    // id
    private long id;

    // title
    private String title;

    // priceInCents
    private long priceInCents;

    // description
    private String description;


    public Product() {
    }

    //     insert into tools ( id,  title,  priceInCents,  description) values() CRUD

    public Product(String title, long priceInCents, String description) {
        this.title = title;
        this.priceInCents = priceInCents;
        this.description = description;
    }

    public Product(long id, String title, long priceInCents, String description) {
        this.id = id;
        this.title = title;
        this.priceInCents = priceInCents;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getPriceInCents() {
        return priceInCents;
    }

    public void setPriceInCents(long priceInCents) {
        this.priceInCents = priceInCents;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", priceInCents=" + priceInCents +
                ", description='" + description + '\'' +
                '}';
    }

    public static void main(String[] args) {
        Product p = new Product(1, "Hammer", 3000, "A good hammer.");

        System.out.println(p);
    }

}
