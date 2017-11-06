package com.yla.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/6
 * Time: 12:00
 */
@Controller
@RequestMapping("/admin/category")
public class CategoryController {


    @GetMapping("/to/list")
    public String toCategoryPage(){
        return "/admin/category/categoryList";
    }
}
