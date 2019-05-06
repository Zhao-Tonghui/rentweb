package com.zth.controller;

import com.zth.common.ImageUtils;
import com.zth.pojo.*;
import com.zth.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/fore")
public class ForeUserController {

    @Autowired
    private ForeUserService foreUserService;

    @Autowired
    private RentInfoService rentInfoService;

    @Autowired
    private AddressCategoryService addressCategoryService;

    @Autowired
    private MessageInfoService messageInfoService;

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private FaultService faultService;

    @RequestMapping("/tologin")
    public String tologin(){
        return "fore/login";
    }

    @RequestMapping("/login")
    public String login(ForeUser foreUser, Model model, HttpSession session){
        foreUser=foreUserService.login(foreUser);
        if(foreUser!=null){
            session.setAttribute("foreUser",foreUser);
            List<RentInfo> list3=rentInfoService.queryNotrenthouse();
            model.addAttribute("houses",list3);
            return "fore/index";
        }else{
            model.addAttribute("errmsg","登录失败(无此名或密码错误)");
            return "fore/login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("foreUser");
        session.invalidate();
        return "redirect:/jsp/index.jsp";
    }

    @RequestMapping("/user/toadduser")
    public String toadduser(){return "fore/user/adduser";}

    @RequestMapping("/user/adduser")
    public String adduser(ForeUser foreUser,Model model){
        boolean sucuser=foreUserService.adduser(foreUser);
        model.addAttribute("sucuser",sucuser);
        return "fore/login";
    }


    @RequestMapping("/index")
    public String index(Model model){
        List<RentInfo> list3=rentInfoService.queryNotrenthouse();
        model.addAttribute("houses",list3);
        return "fore/index";
    }

    @RequestMapping("/house/queryHousedetailById/{id}")
    public String queryHousedetailById(@PathVariable("id")Integer id, Model model){
        RentInfo rent=rentInfoService.queryHousedetailById(id);
        model.addAttribute("rent",rent);
        return "fore/house/housedetail";
    }

    @RequestMapping("/house/addcontract/{id}")
    public String addcontract(@PathVariable("id")Integer id,Model model,HttpSession session){
        ForeUser foreUser=(ForeUser)session.getAttribute("foreUser");
        Integer tenantid=foreUser.getId();
        boolean suctenant=rentInfoService.updateHouseTenant(id,tenantid);
        model.addAttribute("suctenant",suctenant);
        Contract contract=rentInfoService.selectAboutContract(id);
        model.addAttribute("contract",contract);
        return "fore/house/addcontract";
    }

    @RequestMapping("/house/queryAllHouse")
    public String queryAllHouse(Model model){

        List<AddressCategory> categories=addressCategoryService.queryAllLevel1();
        model.addAttribute("categories",categories);
        List<RentInfo> list3=rentInfoService.queryNotrenthouse();
        model.addAttribute("houses",list3);
        return "fore/house/queryAllHouse";
    }

    @RequestMapping("/house/queryHouseByCategory/{category2}")
    public String queryHouseByCategory(@RequestParam("category2")String category2, Model model){
        List<AddressCategory> categories=addressCategoryService.queryAllLevel1();
        model.addAttribute("categories",categories);
        List<RentInfo> list3=rentInfoService.queryHouseByCategory(category2);
        model.addAttribute("houses",list3);
        return "fore/house/queryAllHouse";
    }

    @RequestMapping("/house/toaddhouse")
    public String toaddhouse(Model model,HttpSession session){
        ForeUser foreUser=(ForeUser)session.getAttribute("foreUser");
        String role=foreUser.getRole();
        System.out.println("123"+role);
        if(role.equals("寻租者")){
            model.addAttribute("addstate","寻租者不可发布房源");
            List<RentInfo> list3=rentInfoService.queryNotrenthouse();
            model.addAttribute("houses",list3);
            return "fore/index";
        } else{
            List<AddressCategory> categories=addressCategoryService.queryAllLevel1();
            model.addAttribute("categories",categories);
            return "fore/house/addhouse";
        }
    }

    @RequestMapping("/house/addhouse")
    public String addhouse(MultipartFile pictureFile, HttpServletRequest request, RentInfo rentInfo,HttpSession session, Model model) {

        List<AddressCategory> categories=addressCategoryService.queryAllLevel1();
        model.addAttribute("categories",categories);

        // 得到上传图片的地址
        String imgPath;
        try {
            //ImageUtils为之前添加的工具类
            imgPath = ImageUtils.upload(request, pictureFile);
            if (imgPath != null) {
                // 将上传图片的地址封装到实体类
                rentInfo.setImg(imgPath);
                System.out.println("-----------------图片上传成功！");
            }else{
                System.out.println("-----------------图片上传失败！");
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("----------------图片上传失败！");
        }

        ForeUser foreUser=(ForeUser)session.getAttribute("foreUser");
        Integer masterid=foreUser.getId();
        boolean suchouse=rentInfoService.addcommonhouse(rentInfo,masterid);
        model.addAttribute("suchouse",suchouse);
       // boolean bug=rentInfoService.addhousemasterid(masterid,houseid);
        List<RentInfo> list3=rentInfoService.queryNotrenthouse();
        model.addAttribute("houses",list3);
        return "fore/index";
    }

    @RequestMapping("/notice/queryNotice")
    public String queryNotice(Model model){
        List<Notice> notices=noticeService.queryAllnotice();
        model.addAttribute("notices",notices);
        return "fore/notice/queryNotice";
    }

    @RequestMapping("/message/toaddmessage")
    public String toaddmessage(Model model){
        List<MessageInfo> messageInfos=messageInfoService.queryAllMessage();
        model.addAttribute("messages",messageInfos);
        return "fore/message/message";
    }

    @RequestMapping("/message/queryAndaddmessage")
    public String queryAndaddmessage(MessageInfo messageInfo,Model model){
        boolean sucmes=messageInfoService.addMessage(messageInfo);
        model.addAttribute("sucmes",sucmes);
        List<MessageInfo> messageInfos2=messageInfoService.queryAllMessage();
        model.addAttribute("messages",messageInfos2);
        return "fore/message/message";
    }

    @RequestMapping("/message/toaddreply/{id}")
    public String toaddreply(@PathVariable("id")Integer id,Model model){
        List<MessageReply> messageReplyList=messageInfoService.queryReplyById(id);
        model.addAttribute("replyies",messageReplyList);
        model.addAttribute("messageid",id);
        return "fore/message/reply";
    }

    @RequestMapping("/message/addmessagereply")
    public String addmessagereply(@RequestParam("messageid")Integer messageid,MessageReply messageReply,Model model){
        boolean sucmes=messageInfoService.addmessagereply(messageReply);
        model.addAttribute("sucmes",sucmes);
        List<MessageReply> messageReplyList=messageInfoService.queryReplyById(messageid);
        model.addAttribute("replyies",messageReplyList);
        return "fore/message/reply";
    }

    @RequestMapping("/user/show")
    public String show(HttpSession session,Model model){
        ForeUser foreUser0=(ForeUser)session.getAttribute("foreUser");
        Integer id=foreUser0.getId();
        ForeUser foreUser=foreUserService.queryUserById(id);
        model.addAttribute("user",foreUser);
        return "fore/user/show";
    }

    @RequestMapping("/user/toupdateuser")
    public String toupdateuser(){
        return "fore/user/updateuser";
    }

    @RequestMapping("/user/updateuser")
    public String updateuser(ForeUser foreUser,Model model,HttpSession session){
        ForeUser foreUser0=(ForeUser)session.getAttribute("foreUser");
        Integer id=foreUser0.getId();
        boolean upduser=foreUserService.updateuser(foreUser,id);
        model.addAttribute("upduser",upduser);
        ForeUser foreUser2=foreUserService.queryUserById(id);
        model.addAttribute("user",foreUser2);
        return "fore/user/show";
    }

    @RequestMapping("/fault/toaddfault")
    public String toaddfault(){return "fore/fault/addfault";}

    @RequestMapping("/fault/addfault")
    public String addfault(FaultInfo faultInfo,Model model){
        boolean sucfault=faultService.addFault(faultInfo);
        model.addAttribute("sucfault",sucfault);
        return "fore/fault/addfault";
    }

    @RequestMapping("/house/queryHouseByTenanterid/{id}")
    public String queryHouseByTenanterid(@PathVariable("id")Integer id,Model model){
        List<RentInfo> rentInfos=rentInfoService.queryHouseByTenanterid(id);
        model.addAttribute("houses",rentInfos);
        return "fore/house/queryHouseByTenanterid";
    }

    @RequestMapping("/house/queryContract/{id}")
    public String queryContract(@PathVariable("id")Integer id,Model model){
        Contract contract=rentInfoService.selectAboutContract(id);
        model.addAttribute("contract",contract);
        return "fore/house/queryContract";
    }

    @RequestMapping("/house/deleteHouseTenanterid/{id}")
    public String deleteHouseTenanterid(@PathVariable("id")Integer id,Model model,HttpSession session){
        boolean sucdel=rentInfoService.deleteHouseTenanterid(id);
        model.addAttribute("sucdel",sucdel);
        ForeUser foreUser0=(ForeUser)session.getAttribute("foreUser");
        Integer tid=foreUser0.getId();
        List<RentInfo> rentInfos=rentInfoService.queryHouseByTenanterid(tid);
        model.addAttribute("houses",rentInfos);
        return "fore/house/queryHouseByTenanterid";
    }

    @RequestMapping("/house/queryHouseByMasterid/{id}")
    public String queryHouseByMasterid(@PathVariable("id")Integer id,Model model){
        List<RentInfo> rentInfos=rentInfoService.queryHouseByMasterid(id);
        model.addAttribute("houses",rentInfos);
        return "fore/house/queryHouseByMasterid";
    }

    @RequestMapping("/house/deleteHouse/{id}")
    public String deleteHouse(@PathVariable("id")Integer id, Model model,HttpSession session){
        boolean sucdelete=rentInfoService.deleteHouse(id);
        model.addAttribute("sucdel",sucdelete);
        ForeUser foreUser0=(ForeUser)session.getAttribute("foreUser");
        Integer tid=foreUser0.getId();
        List<RentInfo> rentInfos=rentInfoService.queryHouseByMasterid(tid);
        model.addAttribute("houses",rentInfos);
        return "fore/house/queryHouseByMasterid";
    }
}
