package com.example.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
public class WebMVCConfigurer implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册拦截器
        LoginInterceptor loginInterceptor = new LoginInterceptor();
        InterceptorRegistration loginRegistry = registry.addInterceptor(loginInterceptor);
        // 拦截路径
        loginRegistry.addPathPatterns("/**");
        // 排除路径
        loginRegistry.excludePathPatterns("/user/log");
        loginRegistry.excludePathPatterns("/user/login");
        loginRegistry.excludePathPatterns("/user/register");
        loginRegistry.excludePathPatterns("/user/reg");
        // 排除资源请求
        loginRegistry.excludePathPatterns("/resources/**");
        loginRegistry.excludePathPatterns("/css/**");
        loginRegistry.excludePathPatterns("/js/**");
        loginRegistry.excludePathPatterns("/sass/**");
        loginRegistry.excludePathPatterns("/scss/**");
        loginRegistry.excludePathPatterns("/webfonts/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/static/","classpath:/templates/");
    }
}