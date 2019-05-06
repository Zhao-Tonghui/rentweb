package com.zth.pojo;

import java.util.List;

public class ForeUser {
    private Integer id;
    private String commonUsername;
    private String realName;
    private String password;
    private String phonenumber;
    private String idnumber;
    private String address;
    private String role;


    private List<FaultInfo> faultInfoList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommonUsername() {
        return commonUsername;
    }

    public void setCommonUsername(String commonUsername) {
        this.commonUsername = commonUsername;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<FaultInfo> getFaultInfoList() {
        return faultInfoList;
    }

    public void setFaultInfoList(List<FaultInfo> faultInfoList) {
        this.faultInfoList = faultInfoList;
    }
}
