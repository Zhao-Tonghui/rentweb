package com.zth.service.impl;

import com.zth.mapper.MessageInfoMapper;
import com.zth.mapper.MessageReplyMapper;
import com.zth.pojo.MessageInfo;
import com.zth.pojo.MessageReply;
import com.zth.service.MessageInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service("messageInfoService")
public class MessageInfoServiceImpl implements MessageInfoService {

    @Autowired
    private MessageInfoMapper messageMapper;

    @Autowired
    private MessageReplyMapper messageReplyMapper;

    @Override
    public List<MessageInfo> queryAllMessage() {
        return messageMapper.queryAllMessage();
    }

    @Override
    public boolean addMessage(MessageInfo messageInfo) {
        messageInfo.setCreateDate(new Date());
        return messageMapper.addMessage(messageInfo)==1 ? true : false;
    }

    @Override
    public List<MessageReply> queryReplyById(Integer id) {
        return messageReplyMapper.queryReplyById(id);
    }

    @Override
    public boolean addmessagereply(MessageReply messageReply) {
        messageReply.setCreateDate(new Date());
        return messageReplyMapper.addmessagereply(messageReply)==1?true:false;
    }
    @Override
    public boolean deleteReplyByMessageid(Integer id) {

        return messageReplyMapper.deleteReplyByMessageid(id)==1?true :false;
    }
    @Override
    public boolean deleteMessageById(Integer id) {
        return messageMapper.deleteMessageById(id)==1?true : false;
    }


    @Override
    public boolean deleteReplyById(Integer id) {
        return messageReplyMapper.deleteReplyById(id)==1?true:false;
    }




}
