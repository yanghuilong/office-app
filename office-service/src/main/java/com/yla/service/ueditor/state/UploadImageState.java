package com.yla.service.ueditor.state;

import com.aliyun.oss.OSSClient;
import com.yla.exception.BusinessException;
import com.yla.service.ueditor.UEditorRequest;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 17:23
 *
 * 上传图片动作
 */
public class UploadImageState extends AbstractBaseState {

    private UEditorRequest uEditorRequest;

    public UploadImageState() {
        super();
    }
    public UploadImageState(OSSClient ossClient) {
        super(ossClient);
    }

    @Override
    public <T> T UEditorStateHanlder(UEditorRequest uEditorRequest) {
        if (uEditorRequest == null) {
            throw new BusinessException("UE 编辑器请求数据为空");
        }
       return (T) uploadMoreImage(uEditorRequest);
    }
}
