package com.yla.interceptors;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/20
 * Time: 16:36
 */
public class MenuInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getSession().getAttribute("menu") == null) {
            request.getSession().setAttribute("menu", "已经获取到了菜单数据le");
        }
        return true;
    }
}
