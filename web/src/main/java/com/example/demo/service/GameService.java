package com.example.demo.service;

import com.example.demo.repository.GameRepository;
import com.example.demo.domain.Game;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GameService {
    @Autowired
    private GameRepository gr;

    public List<Game> findAll(){ return gr.findAll(); }
    public List<Game> findByRound(String round){
        return gr.findByRound(round);
    }
    public List<Game> findByTeam(String team){
        return gr.findByTeam(team);
    }
    public List<Game> findById(int id){
        return gr.findById(id);
    }
}