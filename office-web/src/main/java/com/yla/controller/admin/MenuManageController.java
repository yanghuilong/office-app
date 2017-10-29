package com.yla.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/28
 * Time: 11:35
 */
@Controller
@RequestMapping("/admin")
public class MenuManageController {


    @GetMapping("/menu/mgr")
    public String toMenuMgrPage(){
        return "/admin/menu/menuMgr";
    }
}
