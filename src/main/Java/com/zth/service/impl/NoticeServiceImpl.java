package com.zth.service.impl;

import com.zth.mapper.NoticeMapper;
import com.zth.pojo.Notice;
import com.zth.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeMapper noticeMapper;


    @Override
    public List<Notice> queryAllnotice() {
        return noticeMapper.queryAllnotice();
    }

    @Override
    public boolean deleteNotice(Integer id) {
        return noticeMapper.deleteNotice(id)==1 ? true : false;
    }

    @Override
    public boolean addnotice(Notice notice) {
        notice.setDate(new Date());
        return noticeMapper.addnotice(notice)==1 ? true : false;
    }
}
