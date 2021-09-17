package com.example.demo.domain;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Comment {
    @Id
    @GeneratedValue
    private Long id;
    @Column(name = "username")
    private String username;
    @Column(name = "comment")
    private String comment;

    public Long getId() {
        return id;
    }
    public String getUsername() {
        return username;
    }
    public String getComment() {
        return comment;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
}
