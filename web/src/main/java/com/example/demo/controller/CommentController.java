package com.example.demo.controller;

import com.example.demo.domain.Comment;
import com.example.demo.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService cs;

    @RequestMapping(value = "/all")
    public String getAll(Model model){
        List<Comment> c =  cs.getAll();
        model.addAttribute("commentList", c);
        return "comment.html";
    }

    @RequestMapping(value = "/add")
    public String add(@RequestParam String username, @RequestParam String comment){
        cs.addComment(username, comment);
        return "comment.html";
    }
}