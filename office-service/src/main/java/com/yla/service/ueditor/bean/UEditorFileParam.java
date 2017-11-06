package com.yla.service.ueditor.bean;

import java.io.File;
import java.io.InputStream;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/6
 * Time: 9:44
 */
public class UEditorFileParam {

    /**
     * 文件的名称
     */
    private String fileName;

    private String originalFilename;

    /**
     * 上传的文件二进制流
     */
    private InputStream inputStream;

    /**
     * 上传的base64 字符流
     */
    private String base64Str;


    /**
     * 文件的长度
     */
    private long fileLength;

    /**
     * 文件的路径
     */
    private String path;

    /**
     * 上传的文件
     */
    private File file;

    /**
     * 文件后缀
     */
    private String type;

    private String contentType;


    public String getOriginalFilename() {
        return originalFilename;
    }

    public UEditorFileParam setOriginalFilename(String originalFilename) {
        this.originalFilename = originalFilename;
        return this;
    }

    public String getContentType() {
        return contentType;
    }

    public UEditorFileParam setContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }

    public String getFileName() {
        return fileName;
    }

    public UEditorFileParam setFileName(String fileName) {
        this.fileName = fileName;
        return this;
    }

    public InputStream getInputStream() {
        return inputStream;
    }

    public UEditorFileParam setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
        return this;
    }

    public String getBase64Str() {
        return base64Str;
    }

    public UEditorFileParam setBase64Str(String base64Str) {
        this.base64Str = base64Str;
        return this;
    }

    public long getFileLength() {
        return fileLength;
    }

    public UEditorFileParam setFileLength(long fileLength) {
        this.fileLength = fileLength;
        return this;
    }

    public String getPath() {
        return path;
    }

    public UEditorFileParam setPath(String path) {
        this.path = path;
        return this;
    }

    public File getFile() {
        return file;
    }

    public UEditorFileParam setFile(File file) {
        this.file = file;
        return this;
    }

    public String getType() {
        return type;
    }

    public UEditorFileParam setType(String type) {
        this.type = type;
        return this;
    }
}

