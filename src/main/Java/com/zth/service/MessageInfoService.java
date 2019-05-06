package com.zth.service;

import com.zth.pojo.MessageInfo;
import com.zth.pojo.MessageReply;

import java.util.List;

public interface MessageInfoService {
    List<MessageInfo> queryAllMessage();


    boolean addMessage(MessageInfo messageInfo);

    List<MessageReply> queryReplyById(Integer id);

    boolean addmessagereply(MessageReply messageReply);

    boolean deleteMessageById(Integer id);

    boolean deleteReplyById(Integer id);

    boolean deleteReplyByMessageid(Integer id);
}
