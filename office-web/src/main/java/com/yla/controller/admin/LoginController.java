package com.yla.controller.admin;

import com.baomidou.mybatisplus.mapper.Condition;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.yla.entity.User;
import com.yla.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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

    @Autowired
    private UserService userService;

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

    @PostMapping("/loginIn")
    public String loginIn(@ModelAttribute User user) {
        EntityWrapper<User> wrapper =  new EntityWrapper<>();
        wrapper.setEntity(new User());
        wrapper.where("UserName={0}", user.getUserName());
        userService.selectOne(wrapper);
        return "/admin/home";
    }
}
