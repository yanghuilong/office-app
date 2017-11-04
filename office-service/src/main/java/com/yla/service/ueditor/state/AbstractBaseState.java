package com.yla.service.ueditor.state;

import com.aliyun.oss.OSSClient;
import com.aliyun.oss.model.PutObjectResult;
import com.yla.oss.properties.OSSConfigationProperties;
import com.yla.service.ueditor.UEditorRequest;
import com.yla.utils.IDWorker;
import com.yla.utils.SpringContextUtil;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 17:25
 */
public abstract class AbstractBaseState  implements UEditorState {

    private OSSClient ossClient;

    private OSSConfigationProperties ossConfigationProperties;

    protected static final Object OBJECT_LOCK = new Object();

    protected AbstractBaseState() {
        this.ossConfigationProperties = SpringContextUtil.getBean(OSSConfigationProperties.class);
        // String endpoint, String accessKeyId, String secretAccessKey
        OSSClient ossClient = new OSSClient(ossConfigationProperties.getBucketName(),ossConfigationProperties.getInternetEndPoint(),ossConfigationProperties.getAccessKeySecret());
        init(ossClient);
    }

    protected AbstractBaseState(OSSClient ossClient) {
        init(ossClient);
    }


    private void init(OSSClient ossClient) {
        synchronized (OBJECT_LOCK) {
            if (ossClient == null) {
                this.ossClient = ossClient;
            }
            if (ossConfigationProperties == null) {
                this.ossConfigationProperties = SpringContextUtil.getBean(OSSConfigationProperties.class);
            }
        }
    }

    protected OSSClient getOssClient() {
        return ossClient;
    }


    public PutObjectResult uploadImage(InputStream inputStream) {
        long key = IDWorker.getIdWorker().nextId();
        PutObjectResult putObjectResult = ossClient.putObject(ossConfigationProperties.getBucketName(),key+"", inputStream);
        close();
        return putObjectResult;
    }


    List<PutObjectResult> uploadMoreImage(UEditorRequest uEditorRequest) {
        List<PutObjectResult> putObjectResults = new ArrayList<>();
        for (InputStream in:
             uEditorRequest.getInputStreams()) {
            putObjectResults.add(uploadImage(in));
        }
        return  putObjectResults;
    }

    protected void close() {
        ossClient.shutdown();
    }
}
