package com.yla.service.ueditor.ueenum;

import com.yla.exception.BusinessException;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/11/4
 * Time: 16:55
 *
 * <br/>Uedit 动作枚举类型
 */
public enum UEditorActionEnum {

    /**
     * 上传单张图片
     */
    UPLOAD_IMAGE("uploadimage", 0, "上传单张图片动作"),
    LIST_IMAGE("listimage",1,"图片管理中的图片列表动作"),
    UPLOAD_SCRAWL("uploadscrawl",2,"上传涂鸦图片动作"),
    CONFIG("config",4,"获取配置信息"),;

    private final String action;

    private final int value;

    private final String desc;

    UEditorActionEnum(final String action, final int value, final String desc) {
        this.action = action;
        this.value = value;
        this.desc = desc;
    }

    /**
     * <p>
     * 获取UE 上传动作类型
     * </p>
     *
     * @param action 上传类型Action 动作
     * @return
     */
    public static UEditorActionEnum getUEditorAction(String action) {
        UEditorActionEnum[] editorActionEnums = UEditorActionEnum.values();
        for (UEditorActionEnum editorActionEnum : editorActionEnums) {
            if (editorActionEnum.getAction().equalsIgnoreCase(action)) {
                return editorActionEnum;
            }
        }
        throw new BusinessException("Error: 未知 上传动作!\n");
    }

    public String getAction() {
        return this.action;
    }

    public int getValue() {
        return this.value;
    }

    public String getDesc() {
        return this.desc;
    }
}
