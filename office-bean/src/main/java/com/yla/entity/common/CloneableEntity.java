package com.yla.entity.common;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 16:06
 */
public interface CloneableEntity extends Cloneable, Entity {
    CloneableEntity clone();
}
