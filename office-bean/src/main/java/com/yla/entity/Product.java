package com.yla.entity;

import com.yla.entity.common.AbstractSampleEntity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * Created with IntelliJ IDEA
 * Created By YHL
 * Date: 2017/10/23
 * Time: 9:28
 */
public class Product extends AbstractSampleEntity<Integer> {


    private static final long serialVersionUID = 8160135657558024256L;
    private Integer productTagID;
    private Integer productClassificationID;
    private String productName;
    private String productNo;
    private String productTitle;
    private String productColor;
    private String productUnit;
    private BigDecimal productPrice;
    private String productDesHtml;
    private String productDesText;
    private Integer productStatus;
    private Boolean isDeleteFlag;
    private Date createdDate;
    private Integer productClickCount;
    private Boolean isSpecial;
    private BigDecimal productSpecialPrice;
    private Integer productOrderBy;

    public Integer getProductTagID() {
        return productTagID;
    }

    public Product setProductTagID(Integer productTagID) {
        this.productTagID = productTagID;
        return this;
    }

    public Integer getProductClassificationID() {
        return productClassificationID;
    }

    public Product setProductClassificationID(Integer productClassificationID) {
        this.productClassificationID = productClassificationID;
        return this;
    }

    public String getProductName() {
        return productName;
    }

    public Product setProductName(String productName) {
        this.productName = productName;
        return this;
    }

    public String getProductNo() {
        return productNo;
    }

    public Product setProductNo(String productNo) {
        this.productNo = productNo;
        return this;
    }

    public String getProductTitle() {
        return productTitle;
    }

    public Product setProductTitle(String productTitle) {
        this.productTitle = productTitle;
        return this;
    }

    public String getProductColor() {
        return productColor;
    }

    public Product setProductColor(String productColor) {
        this.productColor = productColor;
        return this;
    }

    public String getProductUnit() {
        return productUnit;
    }

    public Product setProductUnit(String productUnit) {
        this.productUnit = productUnit;
        return this;
    }

    public BigDecimal getProductPrice() {
        return productPrice;
    }

    public Product setProductPrice(BigDecimal productPrice) {
        this.productPrice = productPrice;
        return this;
    }

    public String getProductDesHtml() {
        return productDesHtml;
    }

    public Product setProductDesHtml(String productDesHtml) {
        this.productDesHtml = productDesHtml;
        return this;
    }

    public String getProductDesText() {
        return productDesText;
    }

    public Product setProductDesText(String productDesText) {
        this.productDesText = productDesText;
        return this;
    }

    public Integer getProductStatus() {
        return productStatus;
    }

    public Product setProductStatus(Integer productStatus) {
        this.productStatus = productStatus;
        return this;
    }

    public Boolean getDeleteFlag() {
        return isDeleteFlag;
    }

    public Product setDeleteFlag(Boolean deleteFlag) {
        isDeleteFlag = deleteFlag;
        return this;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public Product setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
        return this;
    }

    public Integer getProductClickCount() {
        return productClickCount;
    }

    public Product setProductClickCount(Integer productClickCount) {
        this.productClickCount = productClickCount;
        return this;
    }

    public Boolean getSpecial() {
        return isSpecial;
    }

    public Product setSpecial(Boolean special) {
        isSpecial = special;
        return this;
    }

    public BigDecimal getProductSpecialPrice() {
        return productSpecialPrice;
    }

    public Product setProductSpecialPrice(BigDecimal productSpecialPrice) {
        this.productSpecialPrice = productSpecialPrice;
        return this;
    }

    public Integer getProductOrderBy() {
        return productOrderBy;
    }

    public Product setProductOrderBy(Integer productOrderBy) {
        this.productOrderBy = productOrderBy;
        return this;
    }
}
