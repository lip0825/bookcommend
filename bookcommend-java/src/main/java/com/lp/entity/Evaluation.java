package com.lp.entity;

import java.util.List;

public class Evaluation {

    private Integer id;
    private Integer u_id;
    private Integer b_id;
    private Integer score;

    public Evaluation() {
    }

    public Evaluation(Integer id, Integer u_id, Integer b_id, Integer score) {
        this.id = id;
        this.u_id = u_id;
        this.b_id = b_id;
        this.score = score;
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

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "Evaluation{" +
                "id=" + id +
                ", u_id=" + u_id +
                ", b_id=" + b_id +
                ", score=" + score +
                '}';
    }
}
