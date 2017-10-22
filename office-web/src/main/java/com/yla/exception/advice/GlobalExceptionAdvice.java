package com.yla.exception.advice;

import com.yla.exception.BusinessException;
import com.yla.message.ResponseMessage;
import com.yla.utils.LogUtils;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/22
 * Time: 10:35
 */
@ControllerAdvice
public class GlobalExceptionAdvice extends ResponseEntityExceptionHandler {


    public static final Logger logger = LogUtils.getLog(BusinessExceptionAdvice.class);

    @ExceptionHandler(BusinessException.class)
    @ResponseBody
    ResponseMessage handleException(BusinessException exception) {
        if (exception.getCause() != null) {
            logger.error("{}:{}", exception.getMessage(), exception.getStatus(), exception.getCause());
        }
        return ResponseMessage.error(exception.getStatus(), exception.getMessage());
    }

    @ExceptionHandler(Exception.class)
    @ResponseBody
    ResponseEntity<?> handleControllerException(HttpServletRequest request, Throwable ex) {
        HttpStatus status = getStatus(request);
        logger.error("未知错误：", ex);
        return new ResponseEntity<>(status);
    }

    private HttpStatus getStatus(HttpServletRequest request) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        if (statusCode == null) {
            return HttpStatus.INTERNAL_SERVER_ERROR;
        }
        return HttpStatus.valueOf(statusCode);
    }
}
