public class Album {

    private long id;
    private String artist;
    private double sales;

//     C R U D

    public Album( String artist, double sales) {
        this.artist = artist;
        this.sales = sales;
    }

    public Album(long id, String artist, double sales) {
        this.id = id;
        this.artist = artist;
        this.sales = sales;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }
}
