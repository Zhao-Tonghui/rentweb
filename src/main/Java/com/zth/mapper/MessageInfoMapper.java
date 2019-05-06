package com.zth.mapper;

import com.zth.pojo.MessageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MessageInfoMapper {
    List<MessageInfo> queryAllMessage();

    int addMessage(MessageInfo messageInfo);

    int deleteMessageById(@Param("id") Integer id);
}
