package com.zth.mapper;

import com.zth.pojo.AddressCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressCategoryMapper {
    List<AddressCategory> queryAllLevel1();

    List<AddressCategory> queryLevel2ByLevel1(@Param("name")String name);
}
