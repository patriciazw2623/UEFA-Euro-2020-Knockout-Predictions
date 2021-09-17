package com.example.demo.repository;

import com.example.demo.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {
    @Query(value = "select id from user where username = :username and password = md5(:password)", nativeQuery=true)
    public Long findByName(@Param("username") String username, @Param("password") String password);

    @Modifying
    @Query(value = "insert into user (username, password) values (:username, md5(:password))", nativeQuery = true)
    public void register(@Param("username") String username, @Param("password") String password);
}