package com.yla.controller.admin;

import com.yla.entity.User;
import com.yla.exception.BusinessException;
import com.yla.message.ResponseMessage;
import com.yla.service.user.UserService;
import com.yla.utils.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
    @ResponseBody
    public ResponseMessage loginIn(@ModelAttribute User user, HttpServletRequest request) throws BusinessException{
        if (user == null) {
            throw new BusinessException("用户名和密码为空！");
        }
        User resultUser = userService.selectOne(user);
        if (resultUser == null) {
            throw new BusinessException("用户名不存在！");
        }
        if (!resultUser.getPassWord().equals(user.getPassWord())) {
            throw new BusinessException("密码不正确！");
        }
        WebUtils.setSessionObject(WebUtils.SESSION_USER,user);
        return ResponseMessage.ok();
    }
}
