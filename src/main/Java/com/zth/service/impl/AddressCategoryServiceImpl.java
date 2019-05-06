package com.zth.service.impl;

import com.zth.mapper.AddressCategoryMapper;
import com.zth.pojo.AddressCategory;
import com.zth.service.AddressCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("addressCategoryService")
public class AddressCategoryServiceImpl implements AddressCategoryService {

    @Autowired
    private AddressCategoryMapper addressCategoryMapper;

    @Override
    public List<AddressCategory> queryAllLevel1() {
        return addressCategoryMapper.queryAllLevel1();
    }

    @Override
    public List<AddressCategory> queryLevel2ByLevel1(String name) {
        return addressCategoryMapper.queryLevel2ByLevel1(name);
    }
}
