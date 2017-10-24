package com.yla.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/23
 * Time: 9:03
 */
@Controller
@RequestMapping("/admin")
public class HomeController {


    /**
     * 跳转到后台首页
     * @return
     */
    @GetMapping("/home")
    public String toHomePage() {
        return "/admin/home";
    }
}
