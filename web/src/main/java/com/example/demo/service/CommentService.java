package com.example.demo.service;

import com.example.demo.domain.Comment;
import com.example.demo.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class CommentService {
    @Autowired
    private CommentRepository cr;

    public List<Comment> getAll(){return cr.getAll();};
    public void addComment(String name, String com){cr.addComment(name, com);}
}
