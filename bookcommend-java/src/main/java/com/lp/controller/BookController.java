package com.lp.controller;


import com.lp.entity.Book;
import com.lp.service.BookService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/selectBookById")
    @ResponseBody
    public Book selectBookByISBN(String ISBN){

        Book book = bookService.selectBookByISBN(ISBN);
        return book;

    }

    @RequestMapping("/selectBookByName")
    @ResponseBody
    public List<Book> selectBookByName(String name){

        List<Book> books = bookService.selectBookByName(name);
        return books;

    }

    @RequestMapping("/selectBookByISBNOrName")
    @ResponseBody
    public List<Book> selectBookByName(String ISBN, String name, Model model){

        List<Book> books = bookService.selectBookByISBNOrName(ISBN,name);
        model.addAttribute("books",books);
        return books;

    }


}
