package com.zth.service;

import com.zth.pojo.FaultInfo;

import java.util.List;

public interface FaultService {
    List<FaultInfo> queryAllfault();

    boolean updateFaultstate(Integer id);

    boolean addFault(FaultInfo faultInfo);
}
