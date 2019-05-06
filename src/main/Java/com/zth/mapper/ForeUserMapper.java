package com.zth.mapper;

import com.zth.pojo.ForeUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForeUserMapper {
    List<ForeUser> queryAlluser();

    int adduser(ForeUser foreUser);

    int deleteuser(@Param("id")Integer id);

    ForeUser queryByNamePw(ForeUser foreUser);


    ForeUser queryUserById(Integer id);

    boolean updateuser( @Param("realName")String realName, @Param("phonenumber")String phonenumber, @Param("idnumber")String idnumber, @Param("address")String address, @Param("id")Integer id);
}
