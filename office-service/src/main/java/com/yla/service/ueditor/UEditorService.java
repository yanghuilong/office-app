package com.yla.service.ueditor;

import com.alibaba.fastjson.JSONObject;
import com.yla.service.ueditor.bean.UEditorFileParam;
import com.yla.service.ueditor.bean.UEditorImageResult;

import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 17:05
 */
public interface UEditorService {

    JSONObject getConfigAction();

    List<UEditorImageResult> uploadImage(List<UEditorFileParam> uEditorFileParams) throws IOException;
}
