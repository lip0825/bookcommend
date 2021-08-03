package com.lp.service;

import com.lp.entity.Book;

import java.util.List;


public interface BookService {

    Book selectBookByISBN(String ISBN);
    List<Book> selectBookByName(String name);
    List<Book> selectBookByISBNOrName(String ISBN,String name);
}
