package com.yla.interceptors;

import com.yla.entity.OfficeMenu;
import com.yla.service.menu.OfficeMenuService;
import com.yla.utils.LogUtils;
import com.yla.utils.SpringContextUtil;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.util.WebUtils;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/20
 * Time: 16:36
 */
public class MenuInterceptor implements HandlerInterceptor  {

    private OfficeMenuService officeMenuService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getAttribute("menu") == null) {
            LogUtils.getLog(this.getClass()).debug("加载菜单数据。。。");
            List<OfficeMenu> officeMenuList = SpringContextUtil.getApplicationContext().getBean(OfficeMenuService.class).selectMenuList(null);
            request.setAttribute("menu",officeMenuList);
        }
        return true;
    }
}
