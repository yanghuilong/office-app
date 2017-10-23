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
 * Time: 9:38
 *
 * 后台产品管理 Controller
 */
@Controller
@RequestMapping("/admin")
public class ProductManageController {


    @GetMapping("/to/product")
    public String toProductAddPage(@RequestParam("menu") String menu, Model model) {
        model.addAttribute("menu", menu);
        return "/admin/product/addProduct";
    }
}
