package com.yla.service.ueditor.state;

import com.yla.service.ueditor.UEditorRequest;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 16:43
 *
 * UEDit state 接口
 */
public interface UEditorState {

    /**
     * UEditorStateHanlder 状态处理类
     */
    <T> T UEditorStateHanlder(UEditorRequest uEditorRequest);

}
