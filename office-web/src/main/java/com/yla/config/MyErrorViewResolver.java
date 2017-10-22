package com.yla.config;

import org.springframework.boot.autoconfigure.web.servlet.error.ErrorViewResolver;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/18
 * Time: 11:21
 */
@Configuration
public class MyErrorViewResolver implements ErrorViewResolver {
    @Override
    public ModelAndView resolveErrorView(HttpServletRequest request, HttpStatus status, Map<String, Object> model) {
        ModelAndView modelAndView = new ModelAndView();
        if (status.is4xxClientError())
            modelAndView.addObject("errorParam", model);
            modelAndView.setStatus(status);
            modelAndView.setViewName("error/404");
        if (status.is5xxServerError()) {
            modelAndView.setViewName("error/500");
        }
        return modelAndView;
    }
}
