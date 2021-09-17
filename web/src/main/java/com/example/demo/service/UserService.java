package com.example.demo.service;

import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class UserService {
    @Autowired
    private UserRepository ur;

    public Long findByName(String username, String pw){return ur.findByName(username, pw);}

    public void register(String name, String pw){ur.register(name, pw);}
}