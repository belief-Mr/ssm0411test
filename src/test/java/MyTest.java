import com.cucn.pojo.Books;
import com.cucn.service.BookService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {

    @Test
    public void test(){
        ClassPathXmlApplicationContext con = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookServiceImpl = (BookService) con.getBean("BookServiceImpl");
        for (Books books :
             bookServiceImpl.queryAllBook()) {
            System.out.println(books);
        }
    }
}
