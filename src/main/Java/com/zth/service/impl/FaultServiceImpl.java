package com.zth.service.impl;

import com.zth.mapper.FaultMapper;
import com.zth.pojo.FaultInfo;
import com.zth.service.FaultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("faultService")
public class FaultServiceImpl implements FaultService {

    @Autowired
    private FaultMapper faultMapper;

    @Override
    public List<FaultInfo> queryAllfault() {
        return faultMapper.queryAllfault();
    }

    @Override
    public boolean updateFaultstate(Integer id) {
        return faultMapper.updateFaultstate(id);
    }

    @Override
    public boolean addFault(FaultInfo faultInfo) {
        faultInfo.setCreateDate(new Date());
        faultInfo.setState("待维修");
        return faultMapper.addFault(faultInfo);
    }
}
