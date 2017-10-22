package com.yla.service.user;

import com.baomidou.mybatisplus.service.IService;
import com.yla.entity.User;
import com.yla.exception.BusinessException;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 11:59
 */
public interface UserService extends IService<User> {

    String getString();

    User selectOne(User user) throws BusinessException;
}
