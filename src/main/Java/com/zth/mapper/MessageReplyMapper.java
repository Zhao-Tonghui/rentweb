package com.zth.mapper;

import com.zth.pojo.MessageReply;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MessageReplyMapper {
    List<MessageReply> queryReplyById(Integer id);

    int addmessagereply(MessageReply messageReply);

    int deleteReplyById(@Param("id") Integer id);

    int deleteReplyByMessageid(@Param("id") Integer id);
}
