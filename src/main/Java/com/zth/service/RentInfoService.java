package com.zth.service;

import com.zth.pojo.Contract;
import com.zth.pojo.RentInfo;

import java.util.List;

public interface RentInfoService {
    boolean addhouse(RentInfo rentInfo);


    List<RentInfo> queryAllhouse();

    boolean deleteHouse(Integer id);

    boolean updateHousestate(Integer id);

    RentInfo queryHousedetailById(Integer id);


    boolean updateHouseTenant(Integer id, Integer tenantid);

    Contract selectAboutContract(Integer id);

    List<RentInfo> queryNotrenthouse();

    List<RentInfo> queryHouseByCategory(String category2);

    boolean addcommonhouse(RentInfo rentInfo, Integer masterid);

    List<RentInfo> queryHouseByTenanterid(Integer id);

    boolean deleteHouseTenanterid(Integer id);

    List<RentInfo> queryHouseByMasterid(Integer id);
}
