package com.yla.controller.admin;

import com.yla.entity.OfficeMenu;
import com.yla.exception.BusinessException;
import com.yla.message.ResponseMessage;
import com.yla.service.menu.OfficeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

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
        officeMenu.setParentID(-1);
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


    @PostMapping("/menu/update")
    @ResponseBody
    public ResponseMessage updateMenu(OfficeMenu officeMenu) throws BusinessException {
        if (officeMenu == null || StringUtils.isEmpty(officeMenu.getId())) {
            throw new BusinessException("ID is null");
        }
        boolean b = officeMenuService.updateById(officeMenu);
        if (b) {
            return ResponseMessage.ok();
        } else {
            return ResponseMessage.error("更新失败!");
        }
    }


    @GetMapping("/menu/delete/{id}")
    @ResponseBody
    public ResponseMessage deleteMenuByID(@PathVariable("id") String id) throws BusinessException{
        if (StringUtils.isEmpty(id)) {
            throw new BusinessException("ID is null");
        }
        OfficeMenu officeMenu = new OfficeMenu();
        officeMenu.setId(Integer.valueOf(id));
        List<OfficeMenu> officeMenus = officeMenuService.selectMenuList(officeMenu);
        if (officeMenus == null || officeMenus.size()!=1) {
            throw new BusinessException("此条数据不存在!");
        }

        if (officeMenus.get(0).getOfficeMenus().size()>1) {
            throw new BusinessException("请删除此菜单下面的子菜单!");
        }
        boolean b = officeMenuService.deleteById(Integer.valueOf(id));
        if (b) {
            return ResponseMessage.ok();
        } else {
            return ResponseMessage.error("删除失败!");
        }
    }
}
