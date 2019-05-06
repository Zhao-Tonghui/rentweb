package com.zth.pojo;

import java.util.Date;

public class RentInfo {
    private Integer id;
    private String title;
    private String type;
    private Double area;
    private String category1;
    private String category2;
    private String detailAddress;
    private Double rentMoney;
    private String phonenumber;
    private Date createDate;
    private String more;
    private String systemboolean;
    private String state;
    private String img;

    private Integer masterid;
    private Integer tenanterid;
    private ForeUser masterForeUser;
    private ForeUser tenanterForeUser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public String getCategory1() {
        return category1;
    }

    public void setCategory1(String category1) {
        this.category1 = category1;
    }

    public String getCategory2() {
        return category2;
    }

    public void setCategory2(String category2) {
        this.category2 = category2;
    }

    public String getDetailAddress() {
        return detailAddress;
    }

    public void setDetailAddress(String detailAddress) {
        this.detailAddress = detailAddress;
    }

    public Double getRentMoney() {
        return rentMoney;
    }

    public void setRentMoney(Double rentMoney) {
        this.rentMoney = rentMoney;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getMore() {
        return more;
    }

    public void setMore(String more) {
        this.more = more;
    }

    public String getSystemboolean() {
        return systemboolean;
    }

    public void setSystemboolean(String systemboolean) {
        this.systemboolean = systemboolean;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Integer getMasterid() {
        return masterid;
    }

    public void setMasterid(Integer masterid) {
        this.masterid = masterid;
    }

    public Integer getTenanterid() {
        return tenanterid;
    }

    public void setTenanterid(Integer tenanterid) {
        this.tenanterid = tenanterid;
    }

    public ForeUser getMasterForeUser() {
        return masterForeUser;
    }

    public void setMasterForeUser(ForeUser masterForeUser) {
        this.masterForeUser = masterForeUser;
    }

    public ForeUser getTenanterForeUser() {
        return tenanterForeUser;
    }

    public void setTenanterForeUser(ForeUser tenanterForeUser) {
        this.tenanterForeUser = tenanterForeUser;
    }
}
