package com.yla.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/21
 * Time: 15:36
 */
public class LogUtils {

    private volatile static Logger logger;

    public static Logger getLog(Class clazz) {
        if (logger == null) {
            synchronized (Logger.class) {
                if (logger == null) {
                    logger = LogManager.getLogger(clazz);
                }
            }
        }
        return logger;
    }
}
