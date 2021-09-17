package com.example.demo.domain;

import javax.persistence.*;


@Entity
public class Game {
    @Id
    @GeneratedValue
    private Long id;
    @Column(name = "round")
    private String round;
    @Column(name = "teamA")
    private String teamA;
    @Column(name = "teamB")
    private String teamB;
    @Column(name = "predicted")
    private String predicted;

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id;}
    public String getTeamA() {
        return teamA;
    }
    public void setTeamA(String teamA) {
        this.teamA = teamA;
    }
    public String getTeamB() {
        return teamB;
    }
    public void setTeamB(String teamB) {
        this.teamB = teamB;
    }
    public String getRound() {
        return round;
    }
    public void setRound(String round) {
        this.round = round;
    }
    public String getPredicted() {
        return predicted;
    }
    public void setPredicted(String predicted) {
        this.predicted = predicted;
    }
}