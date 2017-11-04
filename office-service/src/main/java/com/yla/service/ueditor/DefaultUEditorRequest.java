package com.yla.service.ueditor;

import com.yla.service.ueditor.state.UEditorState;
import com.yla.service.ueditor.state.UploadImageState;
import com.yla.service.ueditor.ueenum.UEditorActionEnum;

import java.io.InputStream;
import java.io.Serializable;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 18:24
 */
public class DefaultUEditorRequest implements Serializable, UEditorRequest{

    private String acion;
    private List<InputStream> inputStreams;
    private UEditorActionEnum uEditorActionEnum;

    public void setAcion(String acion) {
        this.acion = acion;
        this.uEditorActionEnum = UEditorActionEnum.getUEditorAction(acion);
    }

    public UEditorState build () {
        if (uEditorActionEnum.getValue() == 0) {
            return new UploadImageState();
        }else {
            return null;
        }
    }

    public void setInputStreams(List<InputStream> inputStreams) {
        this.inputStreams = inputStreams;
    }

    @Override
    public String getAction() {
        return acion;
    }

    @Override
    public List<InputStream> getInputStreams() {
        return inputStreams;
    }

    @Override
    public UEditorActionEnum getUEditorActionEnum() {
        return uEditorActionEnum;
    }
}
