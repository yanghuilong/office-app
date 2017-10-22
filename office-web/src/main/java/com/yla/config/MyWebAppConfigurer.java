package com.yla.config;

import com.yla.interceptors.MenuInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/18
 * Time: 10:50
 */
@Configuration
public class MyWebAppConfigurer implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/res/**").addResourceLocations("/WEB-INF/resources/");
        registry.addResourceHandler("/res/images/**").addResourceLocations("/WEB-INF/resources/images/");
        registry.addResourceHandler("/res/um/**").addResourceLocations("/WEB-INF/jsp/um/");

        registry.addResourceHandler("/res/admin/**").addResourceLocations("/WEB-INF/resources/admin/");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        HandlerInterceptor handlerInterceptor = new MenuInterceptor();
        registry.addInterceptor(handlerInterceptor).addPathPatterns("/**").excludePathPatterns("/res/**");
    }
}
