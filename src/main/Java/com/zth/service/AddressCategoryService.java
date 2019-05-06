package com.zth.service;

import com.zth.pojo.AddressCategory;

import java.util.List;

public interface AddressCategoryService {
    List<AddressCategory> queryAllLevel1();

    List<AddressCategory> queryLevel2ByLevel1(String name);
}
