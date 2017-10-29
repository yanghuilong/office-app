package com.yla.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yla.entity.OfficeMenu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/29
 * Time: 14:57
 */
@Mapper
public interface OfficeMenuMapper extends BaseMapper<OfficeMenu> {

    List<OfficeMenu> selectMenuList(OfficeMenu officeMenu);
}
