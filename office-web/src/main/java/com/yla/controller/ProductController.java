package com.yla.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/20
 * Time: 15:56
 */
@Controller
@RequestMapping("/product")
public class ProductController {


    @GetMapping("/list")
    public String toProductList () {
        return "/product/productList";
    }
}
