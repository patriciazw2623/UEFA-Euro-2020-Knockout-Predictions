package com.example.demo.repository;

import com.example.demo.domain.Comment;
import com.example.demo.domain.Game;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, Long> {
    @Query(value="select * from comment", nativeQuery=true)
    public List<Comment> getAll();

    @Modifying
    @Query(value="insert into comment (username, comment) values (:username, :comment)", nativeQuery = true)
    public void addComment(@Param("username") String username, @Param("comment") String comment);
}