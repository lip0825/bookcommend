package com.lp.service;

import com.lp.dao.BookDao;
import com.lp.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BookServiceImpl implements BookService{

    @Autowired
    private BookDao bookDao;

    @Override
    public Book selectBookByISBN(String ISBN) {

        return bookDao.selectBookByISBN(ISBN);
    }

    @Override
    public List<Book> selectBookByName(String name) {
        return bookDao.selectBookByName(name);
    }

    @Override
    public List<Book> selectBookByISBNOrName(String ISBN, String name) {
        return bookDao.selectBookByISBNOrName(ISBN,name);
    }
}
