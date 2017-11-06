package com.yla.service.ueditor;

import com.alibaba.fastjson.JSONObject;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.GeneratePresignedUrlRequest;
import com.aliyun.oss.model.GenericRequest;
import com.aliyun.oss.model.ObjectMetadata;
import com.aliyun.oss.model.PutObjectResult;
import com.baomidou.mybatisplus.toolkit.IdWorker;
import com.yla.exception.BusinessException;
import com.yla.oss.properties.OSSConfigationProperties;
import com.yla.service.ueditor.bean.UEditorFileParam;
import com.yla.service.ueditor.bean.UEditorImageResult;
import com.yla.service.ueditor.config.ConfigManager;
import com.yla.utils.LogUtils;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import javax.annotation.PostConstruct;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/6
 * Time: 8:13
 */
@Service
public class UeditServiceImpl implements UEditorService{

    public static final Logger LOGGER = LogUtils.getLog(UeditServiceImpl.class);

    private ConfigManager configManager;

    @Autowired
    private OSSConfigationProperties ossConfigationProperties;

    private OSSClient ossClient;

    @PostConstruct
    private void init() {
        String path = null;
        try {
            URL url = ResourceUtils.getURL(ResourceUtils.CLASSPATH_URL_PREFIX+"/config/"+ConfigManager.configFileName);
            path = url.getPath();
        } catch (FileNotFoundException e) {
            LOGGER.error(e.getMessage());
        }
        if (path == null) {
            throw new BusinessException(ConfigManager.configFileName+ ": 文件没有发现");
        }
        //String endpoint, String accessKeyId, String secretAccessKey
        this.ossClient = new OSSClient(ossConfigationProperties.getInternetEndPoint(), ossConfigationProperties.getAccessKeyID(),ossConfigationProperties.getAccessKeySecret());

        this.configManager = ConfigManager.getInstance(path);

    }


    @Override
    public List<UEditorImageResult> uploadImage(List<UEditorFileParam> uEditorFileParams) throws IOException {

        List<UEditorImageResult> uEditorImageResults = new ArrayList<>();
        for (UEditorFileParam uEditorFileParam: uEditorFileParams) {
            String key = IdWorker.getId()+"."+uEditorFileParam.getType();
            ObjectMetadata objectMetadata = new ObjectMetadata();
            objectMetadata.setContentLength(uEditorFileParam.getFileLength());
            objectMetadata.setCacheControl("no-cache");
            objectMetadata.setHeader("Pragma", "no-cache");
            objectMetadata.setContentType(uEditorFileParam.getContentType());
            objectMetadata.setContentDisposition("inline;filename=" + uEditorFileParam.getFileName());

            ossClient.putObject(ossConfigationProperties.getBucketName(), key, uEditorFileParam.getInputStream());

            UEditorImageResult uEditorImageResult = new UEditorImageResult();

            Date expiration = new Date(new Date().getTime() + 3600L * 1000 * 24 * 365 * 10);
            uEditorImageResult.setName(uEditorFileParam.getFileName())
                    .setOriginal(uEditorFileParam.getOriginalFilename())
                    .setState("SUCCESS")
                    .setType(uEditorFileParam.getType())
                    .setUrl(ossClient.generatePresignedUrl(ossConfigationProperties.getBucketName(),key,expiration).toString())
                    .setSize(uEditorFileParam.getFileLength());
            uEditorImageResults.add(uEditorImageResult);
        }
        LOGGER.info("上传成功");

        return uEditorImageResults;
    }

    @Override
    public JSONObject getConfigAction() {
        return configManager.getAllConfig();
    }


    public ConfigManager getConfigManager() {
        return configManager;
    }
}
