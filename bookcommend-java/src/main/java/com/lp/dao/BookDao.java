package com.lp.dao;

import com.lp.entity.Book;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;


@Repository
public interface BookDao {

    Book selectBookByISBN(String ISBN);
    List<Book> selectBookByName(String name);
    List<Book> selectBookByISBNOrName(@Param("ISBN") String ISBN,@Param("name") String name);

}
