package com.yla.entity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.yla.entity.common.AbstractSampleEntity;

import java.util.Date;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 15:59
 */
@TableName(value = "user")
public class User extends AbstractSampleEntity<Integer> {


    private static final long serialVersionUID = -6563014033851785954L;

    private String userName;
    private String passWord;
    private String userNo;
    private Boolean isFlag = true;
    private Date createdDate;
    private String email;
    private String phoneNo;

    public String getUserName() {
        return userName;
    }

    public User setUserName(String userName) {
        this.userName = userName;
        return this;
    }

    public String getPassWord() {
        return passWord;
    }

    public User setPassWord(String passWord) {
        this.passWord = passWord;
        return this;
    }

    public String getUserNo() {
        return userNo;
    }

    public User setUserNo(String userNo) {
        this.userNo = userNo;
        return this;
    }

    public boolean isFlag() {
        return isFlag;
    }

    public User setFlag(boolean flag) {
        isFlag = flag;
        return this;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public User setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public User setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
        return this;
    }
}
