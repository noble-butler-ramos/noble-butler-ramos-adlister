import java.util.List;

public interface Albums {
    long save(Album album);
    List<Album> findAll();
}
