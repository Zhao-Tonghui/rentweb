package com.zth.pojo;

import java.util.Date;

public class FaultInfo {
    private Integer id;
    private String address;
    private String detail;
    private Date createDate;
    private String state;

    private Integer userid;
    private ForeUser foreUser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public ForeUser getForeUser() {
        return foreUser;
    }

    public void setForeUser(ForeUser foreUser) {
        this.foreUser = foreUser;
    }
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
