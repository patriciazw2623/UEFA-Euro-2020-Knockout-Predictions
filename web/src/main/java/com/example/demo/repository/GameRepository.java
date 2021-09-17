package com.example.demo.repository;

import com.example.demo.domain.Game;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GameRepository extends JpaRepository<Game, Long> {
    @Query(value="select * from euro", nativeQuery=true)
    public List<Game> findAll();

    @Query(value = "select * from euro where id = :id", nativeQuery=true)
    public List<Game> findById(@Param("i") int id);

    @Query(value = "select * from euro where round = :round", nativeQuery=true)
    public List<Game> findByRound(@Param("r") String round);

    @Query(value = "select * from euro where teamA = :team or teamB = :team", nativeQuery=true)
    public List<Game> findByTeam(@Param("t") String team);
}