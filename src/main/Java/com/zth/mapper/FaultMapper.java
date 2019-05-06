package com.zth.mapper;

import com.zth.pojo.FaultInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FaultMapper {
    List<FaultInfo> queryAllfault();

    boolean updateFaultstate(@Param("id") Integer id);

    boolean addFault(FaultInfo faultInfo);
}
