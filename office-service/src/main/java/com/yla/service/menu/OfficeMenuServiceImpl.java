package com.yla.service.menu;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yla.entity.OfficeMenu;
import com.yla.mapper.OfficeMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/29
 * Time: 14:59
 */
@Service
public class OfficeMenuServiceImpl extends ServiceImpl<OfficeMenuMapper, OfficeMenu> implements OfficeMenuService {

    @Autowired
    private OfficeMenuMapper officeMenuMapper;


    @Override
    public List<OfficeMenu> selectMenuList(OfficeMenu officeMenu) {
        return officeMenuMapper.selectMenuList(officeMenu);
    }
}
