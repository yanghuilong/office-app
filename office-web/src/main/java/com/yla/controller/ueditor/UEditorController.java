package com.yla.controller.ueditor;

import com.yla.message.ResponseMessage;
import com.yla.service.ueditor.DefaultUEditorRequest;
import com.yla.service.ueditor.UEditorRequest;
import com.yla.service.ueditor.UEditorService;
import com.yla.service.ueditor.ueenum.UEditorActionEnum;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 13:53
 */
@Controller
@RequestMapping("/ue")
public class UEditorController {


    @GetMapping("/main")
    @ResponseBody
    public Object ueControllerMain(HttpServletRequest request) throws IOException {

        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        //检查form中是否有enctype="multipart/form-data"

        List<InputStream> inputStreams = new ArrayList<>();

        if (multipartResolver.isMultipart(request)) {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取multiRequest 中所有的文件名
            Iterator iter = multiRequest.getFileNames();

            while (iter.hasNext()) {
                //一次遍历所有文件
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (file != null) {
                    inputStreams.add(file.getInputStream());
                }

            }
        }

        String action = request.getParameter("action");
        if (StringUtils.isEmpty(action)){
            return ResponseMessage.error("param is null");
        }
        DefaultUEditorRequest uEditorRequest = new DefaultUEditorRequest();
        uEditorRequest.setAcion(action);
        uEditorRequest.setInputStreams(inputStreams);
        UEditorService uEditorService = new UEditorService(uEditorRequest.build(), uEditorRequest);
        uEditorService.exc();
        return null;
    }
}
