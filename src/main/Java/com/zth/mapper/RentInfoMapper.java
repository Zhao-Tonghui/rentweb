package com.zth.mapper;

import com.zth.pojo.Contract;
import com.zth.pojo.RentInfo;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface RentInfoMapper {
    int addhouse(RentInfo rentInfo);

    List<RentInfo> queryAllhouse();


    int deleteHouse(@Param("id") Integer id);

    int updateHousestate(@Param("id")Integer id);

    RentInfo queryHousedetailById(@Param("id") Integer id);


    int updateHouseTenant(@Param("id")Integer id, @Param("tenantid")Integer tenantid);

    Contract selectAboutContract(@Param("id")Integer id);

    List<RentInfo> queryNotrenthouse();

    List<RentInfo> queryHouseByCategory(String category2);

    int addcommonhouse(@Param("title") String title, @Param("type") String type, @Param("area") Double area, @Param("category1")String category1, @Param("category2") String category2, @Param("detailAddress") String detailAddress, @Param("rentMoney") Double rentMoney, @Param("phonenumber") String phonenumber, @Param("createDate")Date createDate, @Param("img") String img, @Param("more") String more, @Param("masterid")Integer masterid);

    List<RentInfo> queryHouseByTenanterid(@Param("id")Integer id);

    int deleteHouseTenanterid(@Param("id")Integer id);

    List<RentInfo> queryHouseByMasterid(Integer id);
}
