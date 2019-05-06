package com.zth.service;

import com.zth.pojo.ForeUser;

import java.util.List;

public interface ForeUserService {
    List<ForeUser> queryAlluser();

    boolean adduser(ForeUser foreUser);

    boolean deleteUser(Integer id);

    ForeUser login(ForeUser foreUser);

    ForeUser queryUserById(Integer id);

    boolean updateuser(ForeUser foreUser, Integer id);
}
