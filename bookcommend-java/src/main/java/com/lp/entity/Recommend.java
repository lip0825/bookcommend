package com.lp.entity;

import java.util.List;

public class Recommend {
    private Integer id;
    private Integer u_id;
    private Integer b_id;
    private List<Book> bookList;

    public Recommend() {

    }

    public Recommend(Integer id, Integer u_id, Integer b_id, List<Book> bookList) {
        this.id = id;
        this.u_id = u_id;
        this.b_id = b_id;
        this.bookList = bookList;
    }

    @Override
    public String toString() {
        return "Recommend{" +
                "id=" + id +
                ", u_id=" + u_id +
                ", b_id=" + b_id +
                ", bookList=" + bookList +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getU_id() {
        return u_id;
    }

    public void setU_id(Integer u_id) {
        this.u_id = u_id;
    }

    public Integer getB_id() {
        return b_id;
    }

    public void setB_id(Integer b_id) {
        this.b_id = b_id;
    }

    public List<Book> getBookList() {
        return bookList;
    }

    public void setBookList(List<Book> bookList) {
        this.bookList = bookList;
    }
}
