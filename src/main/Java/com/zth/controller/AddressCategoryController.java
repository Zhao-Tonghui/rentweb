package com.zth.controller;

import com.zth.pojo.AddressCategory;
import com.zth.service.AddressCategoryService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/category")
public class AddressCategoryController {

    @Autowired
    private AddressCategoryService addressCategoryService;

    @RequestMapping("/queryLevel2ByLevel1/{levelOneId}")
    @ResponseBody
    public List<AddressCategory> queryLevel2ByLevel1(@PathVariable("levelOneId")String name){

        List<AddressCategory> categories=addressCategoryService.queryLevel2ByLevel1(name);
        return categories;
    }
}
