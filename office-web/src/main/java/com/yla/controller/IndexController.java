package com.yla.controller;

import com.yla.entity.User;
import com.yla.oss.properties.OSSConfigationProperties;
import com.yla.service.user.UserService;
import com.yla.utils.IDWorker;
import org.apache.ibatis.javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.Map;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/17
 * Time: 14:57
 */
@Controller
public class IndexController {

    private String message = "1111 World";

    @Autowired
    private UserService userService;

    @Autowired
    private OSSConfigationProperties ossConfigationProperties;

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("time", new Date());
        model.put("message", this.message);
        return "index";
    }

    @RequestMapping("/foo")
    public String foo(Map<String, Object> model) {
        throw new RuntimeException("Foo");
    }

    @GetMapping("/get")
    @ResponseBody
    public String test() {
        return userService.getString();
    }

    @GetMapping("/insert")
    @ResponseBody
    public boolean insert() {
        User user = new User();
        user.setCreatedDate(new Date())
                .setEmail("601125163@qq.com")
                .setPassWord("12122121")
                .setFlag(true)
                .setPhoneNo("13632776831")
                .setUserNo(IDWorker.getIdWorker().nextId()+"")
                .setUserName("yanghuilong");
        return userService.insert(user);
    }

    @GetMapping("/test/error")
    @ResponseBody
    public boolean error() throws Exception {
            throw new NotFoundException("12");
    }

    @GetMapping("/welcome")
    public String welcome() throws Exception {
        return "welcome";
    }
}
