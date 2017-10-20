package com.yla.service.user;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yla.entity.User;
import com.yla.mapper.UserMapper;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 12:00
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Override
    public String getString() {
        return "yanghuilong12第三方发斯蒂芬";
    }
}
