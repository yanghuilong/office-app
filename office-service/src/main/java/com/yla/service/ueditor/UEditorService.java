package com.yla.service.ueditor;

import com.yla.exception.BusinessException;
import com.yla.service.ueditor.state.UEditorState;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 17:05
 */
public class UEditorService {

    private UEditorState uEditorState;
    private UEditorRequest uEditorRequest;

    public UEditorService(UEditorState uEditorState, UEditorRequest uEditorRequest) {
        this.uEditorState = uEditorState;
        this.uEditorRequest = uEditorRequest;
    }


    public void exc() {
        if (uEditorState == null)
            throw new BusinessException("UEditorService UEditorState is null");
        Object o = uEditorState.UEditorStateHanlder(uEditorRequest);
    }



    public UEditorState getuEditorState() {
        return uEditorState;
    }

    public UEditorService setuEditorState(UEditorState uEditorState) {
        this.uEditorState = uEditorState;
        return this;
    }
}
