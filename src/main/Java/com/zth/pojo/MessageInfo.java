package com.zth.pojo;

import java.util.Date;
import java.util.List;

public class MessageInfo {
    private Integer id;
    private String username;
    private String detail;
    private Date createDate;
    private List<MessageReply> messageReplyList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public List<MessageReply> getMessageReplyList() {
        return messageReplyList;
    }

    public void setMessageReplyList(List<MessageReply> messageReplyList) {
        this.messageReplyList = messageReplyList;
    }
}
