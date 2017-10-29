package com.yla.controller.admin;

import com.yla.entity.OfficeMenu;
import com.yla.exception.BusinessException;
import com.yla.message.ResponseMessage;
import com.yla.service.menu.OfficeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
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
        return ResponseMessage.ok(officeMenuList);
    }


    @PostMapping("/menu/insert")
    @ResponseBody
    public ResponseMessage insertMenu(OfficeMenu officeMenu) throws BusinessException {
        if (officeMenu == null)
            throw new BusinessException("insertMenu param is null");
        officeMenu.setCreatedDate(new Date());
        boolean b = officeMenuService.insert(officeMenu);
        if (b)
            return ResponseMessage.ok();
        else
            return ResponseMessage.error(0,"insert fail");
    }
}
