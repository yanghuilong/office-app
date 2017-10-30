package com.yla.entity.common;

import com.baomidou.mybatisplus.annotations.TableField;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 16:17
 */
public abstract class AbstractSampleEntity<PK> implements GenericEntity<PK> {

    private PK id;

    @TableField(exist = false)
    private Map<String, Object> properties;

    @Override
    public PK getId() {
        return this.id;
    }

    public void setId(PK id) {
        this.id = id;
    }

    @Override
    public Map<String, Object> getProperties() {
        return properties;
    }

    @Override
    public void setProperties(Map<String, Object> properties) {
        this.properties = properties;
    }

    public <T> T getProperty(String propertyName, T defaultValue) {
        if (null == properties) {
            return defaultValue;
        }
        return (T) properties.getOrDefault(propertyName, defaultValue);
    }

    public <T> T getProperty(String propertyName) {
        return getProperty(propertyName, null);
    }

    @Override
    public void setProperty(String propertyName, Object value) {
        if (null == properties) {
            properties = new LinkedHashMap<>();
        }
        properties.put(propertyName, value);
    }

    @Override
    @SuppressWarnings("unchecked")
    public AbstractSampleEntity<PK> clone() {
        try {
            return (AbstractSampleEntity) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
