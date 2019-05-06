package com.zth.mapper;

import com.zth.pojo.Notice;

import java.util.List;

public interface NoticeMapper {
    List<Notice> queryAllnotice();

    int deleteNotice(Integer id);

    int addnotice(Notice notice);
}
