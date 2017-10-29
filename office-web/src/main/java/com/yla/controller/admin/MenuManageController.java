package com.yla.controller.admin;

import com.yla.entity.OfficeMenu;
import com.yla.exception.BusinessException;
import com.yla.message.ResponseMessage;
import com.yla.service.menu.OfficeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/28
 * Time: 11:35
 */
@Controller
@RequestMapping("/admin")
public class MenuManageController {


    @Autowired
    private OfficeMenuService officeMenuService;

    @GetMapping("/menu/mgr")
    public String toMenuMgrPage(){
        return "/admin/menu/menuMgr";
    }

    @GetMapping("/menu/list")
    @ResponseBody
    public ResponseMessage selectList(OfficeMenu officeMenu) throws BusinessException {
        List<OfficeMenu> officeMenuList = officeMenuService.selectMenuList(officeMenu);
        System.out.println(12);
        return ResponseMessage.ok(officeMenuList);
    }
}
