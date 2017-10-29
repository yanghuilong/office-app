package com.yla.service.menu;

import com.baomidou.mybatisplus.service.IService;
import com.yla.entity.OfficeMenu;

import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/29
 * Time: 14:58
 */
public interface OfficeMenuService extends IService<OfficeMenu> {


    List<OfficeMenu> selectMenuList(OfficeMenu officeMenu);
}
