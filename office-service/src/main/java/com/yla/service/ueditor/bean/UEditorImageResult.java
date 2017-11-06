package com.yla.service.ueditor.bean;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/6
 * Time: 9:41
 */

/*{"original":"demo.jpg","name":"demo.jpg","url":"\/server\/ueditor\/upload\/image\/demo.jpg","size":"99697","type":".jpg","state":"SUCCESS"}*/
public class UEditorImageResult implements Serializable {

    private static final long serialVersionUID = -8339754305197211887L;

    private String original;

    private String name;

    private String url;

    private long size;

    private String type;

    private String state;

    public String getOriginal() {
        return original;
    }

    public UEditorImageResult setOriginal(String original) {
        this.original = original;
        return this;
    }

    public String getName() {
        return name;
    }

    public UEditorImageResult setName(String name) {
        this.name = name;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public UEditorImageResult setUrl(String url) {
        this.url = url;
        return this;
    }

    public long getSize() {
        return size;
    }

    public UEditorImageResult setSize(long size) {
        this.size = size;
        return this;
    }

    public String getType() {
        return type;
    }

    public UEditorImageResult setType(String type) {
        this.type = type;
        return this;
    }

    public String getState() {
        return state;
    }

    public UEditorImageResult setState(String state) {
        this.state = state;
        return this;
    }
}
