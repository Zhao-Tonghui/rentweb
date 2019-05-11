package com.zth.service.impl;

import com.zth.mapper.RentInfoMapper;
import com.zth.pojo.Contract;
import com.zth.pojo.RentInfo;
import com.zth.service.RentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("rentInfoService")
public class RentInfoServiceImpl implements RentInfoService {

    @Autowired
    private RentInfoMapper rentInfoMapper;

    @Override
    public boolean addhouse(RentInfo rentInfo) {
        rentInfo.setCreateDate(new Date());
        return rentInfoMapper.addhouse(rentInfo)==1 ? true : false;
    }

    @Override
    public List<RentInfo> queryAllhouse() {
        return rentInfoMapper.queryAllhouse();
    }

    @Override
    public boolean deleteHouse(Integer id) {

        RentInfo rentInfo=rentInfoMapper.queryHouseByTenanteridBollean(id);
        if(rentInfo!=null)
        {
            return rentInfoMapper.deleteHouse(id)==1 ? true: false;
        }
        return false;
    }

    @Override
    public boolean updateHousestate(Integer id) {
        return rentInfoMapper.updateHousestate(id)==1 ? true : false;
    }

    @Override
    public RentInfo queryHousedetailById(Integer id) {
        return rentInfoMapper.queryHousedetailById(id);
    }

    @Override
    public boolean updateHouseTenant(Integer id, Integer tenantid) {
        return rentInfoMapper.updateHouseTenant(id,tenantid)==1 ? true : false;
    }

    @Override
    public Contract selectAboutContract(Integer id) {
        return rentInfoMapper.selectAboutContract(id);
    }

    @Override
    public List<RentInfo> queryNotrenthouse() {
        return rentInfoMapper.queryNotrenthouse();
    }

    @Override
    public List<RentInfo> queryHouseByCategory(String category2) {
        return rentInfoMapper.queryHouseByCategory(category2);
    }

    @Override
    public boolean addcommonhouse( RentInfo rentInfo, Integer masterid) {
        rentInfo.setCreateDate(new Date());
        String title=rentInfo.getTitle();
        String type=rentInfo.getType();
        Double area=rentInfo.getArea();
        String category1=rentInfo.getCategory1();
        String category2=rentInfo.getCategory2();
        String detailAddress=rentInfo.getDetailAddress();
        Double rentMoney=rentInfo.getRentMoney();
        String phonenumber=rentInfo.getPhonenumber();
        Date createDate=rentInfo.getCreateDate();
        String img=rentInfo.getImg();
        String more=rentInfo.getMore();
        return rentInfoMapper.addcommonhouse(title,type,area,category1,category2,detailAddress,rentMoney,phonenumber,createDate,img,more,masterid)==1 ? true : false;
    }

    @Override
    public List<RentInfo> queryHouseByTenanterid(Integer id) {
        return rentInfoMapper.queryHouseByTenanterid(id);
    }

    @Override
    public boolean deleteHouseTenanterid(Integer id) {
        return rentInfoMapper.deleteHouseTenanterid(id)==1?true:false;
    }

    @Override
    public List<RentInfo> queryHouseByMasterid(Integer id) {
        return rentInfoMapper.queryHouseByMasterid(id);
    }


}
