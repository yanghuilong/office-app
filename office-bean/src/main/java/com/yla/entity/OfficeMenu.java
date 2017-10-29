package com.yla.entity;

import com.yla.entity.common.AbstractSampleEntity;

import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/28
 * Time: 10:39
 */
public class OfficeMenu extends AbstractSampleEntity<Integer> {

    private static final long serialVersionUID = -3801097900615534552L;
    private String menuName;
    private String menuURL;
    private String menuIcon;
    private String menuCode;
    private Integer menuIndex;
    private Integer parentID;
    private Date createdDate;

    /**
     * 子 菜单集合
     */
    private List<OfficeMenu> officeMenus;


    public String getMenuName() {
        return menuName;
    }

    public OfficeMenu setMenuName(String menuName) {
        this.menuName = menuName;
        return this;
    }

    public String getMenuURL() {
        return menuURL;
    }

    public OfficeMenu setMenuURL(String menuURL) {
        this.menuURL = menuURL;
        return this;
    }

    public String getMenuIcon() {
        return menuIcon;
    }

    public OfficeMenu setMenuIcon(String menuIcon) {
        this.menuIcon = menuIcon;
        return this;
    }

    public String getMenuCode() {
        return menuCode;
    }

    public OfficeMenu setMenuCode(String menuCode) {
        this.menuCode = menuCode;
        return this;
    }

    public Integer getMenuIndex() {
        return menuIndex;
    }

    public OfficeMenu setMenuIndex(Integer menuIndex) {
        this.menuIndex = menuIndex;
        return this;
    }

    public Integer getParentID() {
        return parentID;
    }

    public OfficeMenu setParentID(Integer parentID) {
        this.parentID = parentID;
        return this;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public OfficeMenu setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
        return this;
    }

    public List<OfficeMenu> getOfficeMenus() {
        return officeMenus;
    }

    public void setOfficeMenus(List<OfficeMenu> officeMenus) {
        this.officeMenus = officeMenus;
    }
}
