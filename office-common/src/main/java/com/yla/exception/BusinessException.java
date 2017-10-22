package com.yla.exception;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/22
 * Time: 19:57
 */
public class BusinessException extends RuntimeException {

    private int status = 500;

    public BusinessException(String message) {
        this(message, 500);
    }

    public BusinessException(String message, int status) {
        super(message);
        this.status = status;
    }

    public BusinessException(String message, Throwable cause) {
        super(message, cause);
    }

    public BusinessException(String message, Throwable cause, int status) {
        super(message, cause);
        this.status = status;
    }

    public int getStatus() {
        return status;
    }
}
