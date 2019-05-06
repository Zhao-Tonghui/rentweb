package com.zth.service.impl;

import com.zth.mapper.ForeUserMapper;
import com.zth.pojo.ForeUser;
import com.zth.service.ForeUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("foreUserService")
public class ForeUserServiceImpl implements ForeUserService {
    @Autowired
    private ForeUserMapper foreUserMapper;

    @Override
    public List<ForeUser> queryAlluser() {
        return foreUserMapper.queryAlluser();
    }

    @Override
    public boolean adduser(ForeUser foreUser) {
        int row=foreUserMapper.adduser(foreUser);
        return row==1 ? true : false;
    }

    @Override
    public boolean deleteUser(Integer id) {
        int row=foreUserMapper.deleteuser(id);
        return row==1 ? true : false;
    }

    @Override
    public ForeUser login(ForeUser foreUser) {
        ForeUser user=foreUserMapper.queryByNamePw(foreUser);
        if(user!=null) {return user;}
        return null;
    }

    @Override
    public ForeUser queryUserById(Integer id) {
        return foreUserMapper.queryUserById(id);
    }

    @Override
    public boolean updateuser(ForeUser foreUser, Integer id) {
        String realName=foreUser.getRealName();
        String phonenumber=foreUser.getPhonenumber();
        String idnumber=foreUser.getIdnumber();
        String address=foreUser.getAddress();
        return foreUserMapper.updateuser(realName,phonenumber,idnumber,address,id);
    }


}
