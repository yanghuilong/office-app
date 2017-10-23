package com.yla.mapper;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yla.entity.User;
import org.apache.ibatis.annotations.Mapper;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 16:22
 */
@Mapper
public interface UserMapper  extends BaseMapper<User> {
}
