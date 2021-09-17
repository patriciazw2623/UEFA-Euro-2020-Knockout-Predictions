package com.example.demo.controller;

import com.example.demo.domain.Game;
import com.example.demo.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class GameController {
    @Autowired
    private GameService gs;


    @RequestMapping(value = "/index")
    public String index(Model model) {
        return "index.html";
    }


    @RequestMapping(value = "/gameList")
    public String gameList(Model model) {
        List<Game> gameList = gs.findAll();
        model.addAttribute("gameList", gameList);
        return "list.html";
    }

    @RequestMapping(value ="/team")
    public String findByTeam(@RequestParam String t, Model model){
        List<Game> pp = gs.findByTeam(t);
        model.addAttribute(pp);
        return "list.html";
    }

    @RequestMapping(value ="/round")
    public String findByRound(@RequestParam String r, Model model){
        List<Game> pp = gs.findByRound(r);
        model.addAttribute(pp);
        return "list.html";
    }
}