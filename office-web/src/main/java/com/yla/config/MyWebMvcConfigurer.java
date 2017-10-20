package com.yla.config;


import com.yla.interceptors.MenuInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/20
 * Time: 16:34
 */
@Configuration
public class MyWebMvcConfigurer implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        HandlerInterceptor handlerInterceptor = new MenuInterceptor();
        registry.addInterceptor(handlerInterceptor).addPathPatterns("/**").excludePathPatterns("/res/**");
    }
}
