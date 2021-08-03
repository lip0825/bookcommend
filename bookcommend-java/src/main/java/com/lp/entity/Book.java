package com.lp.entity;

public class Book {

    private Integer id;
    private String name;
    private String author;
    private String publisher;
    private String ptime;
    private String img;
    private String pagenum;
    private String price;
    private String ISBN;
    private String grade;
    private String evalnum;

    public Book() {
    }

    public Book(Integer id, String name, String author, String publisher, String ptime, String img, String pagenum, String price, String ISBN, String grade, String evalnum) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.publisher = publisher;
        this.ptime = ptime;
        this.img = img;
        this.pagenum = pagenum;
        this.price = price;
        this.ISBN = ISBN;
        this.grade = grade;
        this.evalnum = evalnum;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getPtime() {
        return ptime;
    }

    public void setPtime(String ptime) {
        this.ptime = ptime;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPagenum() {
        return pagenum;
    }

    public void setPagenum(String pagenum) {
        this.pagenum = pagenum;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getEvalnum() {
        return evalnum;
    }

    public void setEvalnum(String evalnum) {
        this.evalnum = evalnum;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", publisher='" + publisher + '\'' +
                ", ptime='" + ptime + '\'' +
                ", img='" + img + '\'' +
                ", pagenum='" + pagenum + '\'' +
                ", price='" + price + '\'' +
                ", ISBN='" + ISBN + '\'' +
                ", grade='" + grade + '\'' +
                ", evalnum='" + evalnum + '\'' +
                '}';
    }
}
