package com.example.demo.config;

import com.example.demo.domain.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Set;


public class LoginInterceptor implements HandlerInterceptor {

    private static final Set<String> NOT_INTERCEPT_URI = new HashSet<>();//不拦截的URI

    static {
        NOT_INTERCEPT_URI.add("/user/login");
        NOT_INTERCEPT_URI.add("/user/log");
        NOT_INTERCEPT_URI.add("/user/register");
        NOT_INTERCEPT_URI.add("/user/reg");
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object object) throws Exception {
        String uri = request.getRequestURI();
        if (NOT_INTERCEPT_URI.contains(uri)) {
            return true;
        }
        HttpSession session = request.getSession();
        User User = (com.example.demo.domain.User) session.getAttribute("user");
        if (User == null) {
            response.sendRedirect("/user/login");
            throw new RuntimeException("用户未登陆");
        }
        return true;
    }


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }

}
