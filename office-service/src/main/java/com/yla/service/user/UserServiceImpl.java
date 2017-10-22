package com.yla.service.user;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.yla.entity.User;
import com.yla.exception.BusinessException;
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
        return "yanghuilong";
    }


    public User selectOne(User user) {
        if (user == null)
            throw new BusinessException("param is null");
        EntityWrapper<User> wrapper =  new EntityWrapper<>();
        wrapper.setEntity(new User());
        wrapper.where("UserName={0}", user.getUserName());
        return super.selectOne(wrapper);
    }
}
