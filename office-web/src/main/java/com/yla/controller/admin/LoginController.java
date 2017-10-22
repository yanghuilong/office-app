package com.yla.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/22
 * Time: 15:18
 */
@Controller
@RequestMapping("/admin")
public class LoginController {

    @GetMapping("/")
    public String  toIndex(HttpServletRequest request, HttpServletResponse response) {
        return "redirect:/admin/login";
    }
    @GetMapping
    public String  toIndexPage(HttpServletRequest request, HttpServletResponse response) {
        return "redirect:/admin/login";
    }
    @GetMapping("/login")
    public String toLoginPage() {
        return "/admin/login";
    }
}
