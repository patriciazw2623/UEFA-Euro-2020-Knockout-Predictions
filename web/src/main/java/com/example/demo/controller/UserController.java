package com.example.demo.controller;

import com.example.demo.domain.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class UserController {
    @Autowired
    private UserService us;

    @RequestMapping(value = "/register")
    public String regpage(Model model){
        return "registemp.html";
    }

    @RequestMapping(value = "/login")
    public String logpage(Model model){
        return "logintemp.html";
    }

    @RequestMapping(value = "/reg")
    public String register(@RequestParam String name,@RequestParam String pw){
        Long id =  us.findByName(name, pw);
        if (id != null){
            return "fail.html";
        }
        else{
            us.register(name, pw);
            return "regsuccess.html";
        }
    }

    @RequestMapping(value = "/log")
    public String login(@RequestParam String name, @RequestParam String pw){
        Long id =  us.findByName(name, pw);
        if (id==null){
            return "fail.html";
        }
        else{
            User dbUser = new User();
            dbUser.setPassword(pw);
            dbUser.setUsername(name);
            HttpSession session = getRequest().getSession();
            session.setAttribute("user", dbUser);

            return "loginsuccess.html";
        }
    }

    private HttpServletRequest getRequest() {
        return ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
    }
}