package com.zth.service.impl;

import com.zth.mapper.BackUserMapper;
import com.zth.pojo.BackUser;
import com.zth.service.BackUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BackUserServiceImpl implements BackUserService {

@Autowired
private BackUserMapper backUserMapper;

    @Override
    public BackUser login(BackUser backUser) {
        BackUser user=backUserMapper.queryByNamePw(backUser);
        if(user!=null) {return user;}
        return null;
    }
}
