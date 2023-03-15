import java.util.ArrayList;
import java.util.Arrays;

public class BeanTest {
    public static void main(String[] args) {


        Author jimbo = new Author();
        jimbo.setFirst_name("jimbo");
        jimbo.setLast_name("jaggins");

        Quote q1 = new Quote();
        q1.setContent("i like to shrimp");
        q1.setAuthor(jimbo);

        Author auth2 = new Author();
        auth2.setFirst_name("arthor");
        auth2.setLast_name("alias");

        Quote q2 = new Quote();
        q2.setContent("i like to lobster");
        q2.setAuthor(auth2);

        Album a1 = new Album();
        a1.setName("big bang theory");
        a1.setGenre("'comedy'");
        a1.setArtist("shledsdon");
        a1.setRelease_date(1994);
        a1.setSales(0);

        Album a2 = new Album();
        a2.setName("big bang");
        a2.setGenre("bad");
        a2.setArtist("sliverman");
        a2.setRelease_date(1996);
        a2.setSales(1);

        Album a3 = new Album();
        a3.setName("a shrimply sad day");
        a3.setGenre("shrimp");
        a3.setArtist("edward 'the shrimp'");
        a3.setRelease_date(1523);
        a3.setSales(93993);

        ArrayList<Album> albums = new ArrayList<>(Arrays.asList(a1,a2,a3));
        for(Album a : albums){
            System.out.println(a.getArtist());
            System.out.println(a.getName());
            System.out.println(a.getGenre());
            System.out.println(a.getSales());
            System.out.println(a.getRelease_date());
        }


    }
}
