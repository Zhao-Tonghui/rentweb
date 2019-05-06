package com.zth.service;

import com.zth.pojo.Notice;

import java.util.List;

public interface NoticeService {
    List<Notice> queryAllnotice();

    boolean deleteNotice(Integer id);

    boolean addnotice(Notice notice);
}
