package com.yla.controller.ueditor;

import com.yla.message.ResponseMessage;
import com.yla.service.ueditor.UEditorService;
import com.yla.service.ueditor.bean.UEditorFileParam;
import com.yla.service.ueditor.bean.UEditorImageResult;
import com.yla.service.ueditor.ueenum.UEditorActionEnum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
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


    @Autowired
    private UEditorService uEditorService;


    @RequestMapping("/main")
    @ResponseBody
    public Object ueControllerMain(HttpServletRequest request) throws IOException {

        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        //检查form中是否有enctype="multipart/form-data"

        List<UEditorFileParam> uEditorFileParams = new ArrayList<>();

        if (multipartResolver.isMultipart(request)) {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取multiRequest 中所有的文件名
            Iterator iter = multiRequest.getFileNames();

            while (iter.hasNext()) {
                //一次遍历所有文件
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (file != null) {
                    String fileName = file.getOriginalFilename();
                    String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
                    UEditorFileParam uEditorFileParam = new UEditorFileParam();
                    uEditorFileParam.setFile(null)
                            .setInputStream(file.getInputStream())
                            .setFileName(file.getName())
                            .setOriginalFilename(file.getOriginalFilename())
                            .setFileLength(file.getSize())
                            .setContentType(file.getContentType())
                            .setType(suffix);

                    uEditorFileParams.add(uEditorFileParam);
                }

            }
        }

        String action = request.getParameter("action");
        if (StringUtils.isEmpty(action)){
            return ResponseMessage.error("param is null");
        }
        if (UEditorActionEnum.getUEditorAction(action).getValue() == 4) {
            return uEditorService.getConfigAction().toJSONString();
        } else if (UEditorActionEnum.getUEditorAction(action).getValue() == 0){
            List<UEditorImageResult> uEditorImageResults = uEditorService.uploadImage(uEditorFileParams);
            if (uEditorImageResults.size() == 1) {
                return uEditorImageResults.get(0);
            }
            return uEditorImageResults;
        }
        return null;
    }
}
