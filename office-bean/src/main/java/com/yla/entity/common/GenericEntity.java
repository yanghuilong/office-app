package com.yla.entity.common;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/19
 * Time: 16:05
 */
public interface GenericEntity<PK> extends CloneableEntity {
    String id = "id";

    String properties = "properties";

    PK getId();

    void setId(PK id);

    Map<String, Object> getProperties();

    void setProperties(Map<String, Object> properties);

    @SuppressWarnings("unchecked")
    default <T> T getProperty(String propertyName, T defaultValue) {
        Map<String, Object> map = getProperties();
        if (map == null) {
            return null;
        }
        return (T) map.getOrDefault(propertyName, defaultValue);
    }

    default <T> T getProperty(String propertyName) {
        return getProperty(propertyName, null);
    }

    default void setProperty(String propertyName, Object value) {
        Map<String, Object> map = getProperties();
        if (map == null) {
            map = new LinkedHashMap<>();
            setProperties(map);
        }
        map.put(propertyName, value);
    }

    default Map<String, Object> cloneProperties() {
        Map<String, Object> target = new LinkedHashMap<>();
        Map<String, Object> old = getProperties();
        if (old == null || old.isEmpty()) {
            return target;
        }
        old.forEach((k, v) -> {
            if (v instanceof CloneableEntity) {
                target.put(k, ((CloneableEntity) v).clone());
            } else {
                target.put(k, v);
            }
        });
        return target;
    }
}
