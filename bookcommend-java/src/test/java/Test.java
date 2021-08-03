import com.lp.dao.BookDao;
import com.lp.dao.RecommendDao;
import com.lp.dao.UserDao;
import com.lp.entity.Book;
import com.lp.entity.Recommend;
import com.lp.entity.User;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class Test {
    @Autowired
    private RecommendDao recommendDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private BookDao bookDao;

    @org.junit.Test
    public void test(){
        User user = new User();
        user.setName("lipeng");
        user.setPassword("12345");
        Integer temp = userDao.selectUser(user);
        System.out.println(temp);
    }

    @org.junit.Test
    public void test1(){
        List<Book> books = bookDao.selectBookByISBNOrName("9787208168022","");
        System.out.println(books);
    }
}
