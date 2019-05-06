package com.zth.controller;

import com.zth.common.ImageUtils;
import com.zth.pojo.*;
import com.zth.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/back")
public class BackUserController {

    @Autowired
    private BackUserService backUserService;

    @Autowired
    private ForeUserService foreUserService;

    @Autowired
    private RentInfoService rentInfoService;

    @Autowired
    private AddressCategoryService addressCategoryService;

    @Autowired
    private NoticeService noticeService;

    @Autowired
    private MessageInfoService messageInfoService;

    @Autowired
    private FaultService faultService;

    @RequestMapping("/tologin")
    public String tologin(){
        return "back/login";
    }

    @RequestMapping("/login")
    public String login(BackUser backUser, Model model, HttpSession session){
        backUser=backUserService.login(backUser);
        if(backUser!=null){
            session.setAttribute("backUser",backUser);

            return "back/index";
        }else{
            model.addAttribute("errmsg","登录失败(无此名或密码错误)");
            return "back/login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("backUser");
        session.invalidate();
        System.out.println("2222");
        return "redirect:/jsp/index.jsp";
    }

    @RequestMapping("/user/queryAlluser")
    public String queryAlluser(Model model){
        List<ForeUser> list1=foreUserService.queryAlluser();
        model.addAttribute("users",list1);
        return "back/user/queryAlluser";
    }

    @RequestMapping("/user/toadduser")
    public String toadduser(){
        return "back/user/adduser";
    }

    @RequestMapping("/user/adduser")
    public String adduser(ForeUser foreUser,Model model){
        boolean sucuser=foreUserService.adduser(foreUser);
        model.addAttribute("sucuser",sucuser);

        List<ForeUser> list2=foreUserService.queryAlluser();
        model.addAttribute("users",list2);
        return "back/user/queryAlluser";
    }

    @RequestMapping("/user/deleteUser/{id}")
    public String deleteUser(@PathVariable("id")Integer id, Model model){
        boolean sucdelete=foreUserService.deleteUser(id);
        model.addAttribute("sucdelete",sucdelete);
        List<ForeUser> list1=foreUserService.queryAlluser();
        model.addAttribute("users",list1);
        return "back/user/queryAlluser";
    }

    @RequestMapping("/house/toaddhouse")
    public String toaddhouse(Model model){

        List<AddressCategory> categories=addressCategoryService.queryAllLevel1();
        model.addAttribute("categories",categories);
        return "back/house/addhouse";
    }

    @RequestMapping("/house/addhouse")
    public String addhouse(MultipartFile pictureFile, HttpServletRequest request, RentInfo rentInfo, Model model) {
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

        boolean sucuser=rentInfoService.addhouse(rentInfo);
        model.addAttribute("sucuser",sucuser);
        List<RentInfo> list3=rentInfoService.queryAllhouse();
        model.addAttribute("houses",list3);
        return "back/house/queryAllhouse";
    }

    @RequestMapping("/house/queryAllhouse")
    public String queryAllhouse(Model model){
        List<RentInfo> list3=rentInfoService.queryAllhouse();
        model.addAttribute("houses",list3);
        return "back/house/queryAllhouse";
    }

    @RequestMapping("/house/deleteHouse/{id}")
    public String deleteHouse(@PathVariable("id")Integer id, Model model){
        boolean sucdelete=rentInfoService.deleteHouse(id);
        model.addAttribute("sucdelete",sucdelete);
        List<RentInfo> list3=rentInfoService.queryAllhouse();
        model.addAttribute("houses",list3);
        return "back/house/queryAllhouse";
    }

    @RequestMapping("/house/updateHousestate/{id}")
    public String updateHousestate(@PathVariable("id")Integer id,Model model){
        boolean sucupdate=rentInfoService.updateHousestate(id);
        model.addAttribute("sucupdate",sucupdate);
        List<RentInfo> list3=rentInfoService.queryAllhouse();
        model.addAttribute("houses",list3);
        return "back/house/queryAllhouse";
    }

    @RequestMapping("/notice/queryAllnotice")
    public String queryAllnotice(Model model){
        List<Notice> list4=noticeService.queryAllnotice();
        model.addAttribute("notices",list4);
        return "back/notice/queryAllnotice";
    }

    @RequestMapping("/notice/deleteNotice/{id}")
    public String deleteNotice(@PathVariable("id")Integer id, Model model){
        boolean sucdelete=noticeService.deleteNotice(id);
        model.addAttribute("sucdelete",sucdelete);
        List<Notice> list4=noticeService.queryAllnotice();
        model.addAttribute("notices",list4);
        return "back/notice/queryAllnotice";
    }

    @RequestMapping("/notice/toaddNotice")
    public String toaddNotice(Model model){
        return "back/notice/addNotice";
    }

    @RequestMapping("/notice/addNotice")
    public String addNotice(Notice notice,Model model){
        boolean sucnotice=noticeService.addnotice(notice);
        model.addAttribute("sucnotice",sucnotice);
        List<Notice> list4=noticeService.queryAllnotice();
        model.addAttribute("notices",list4);
        return "back/notice/queryAllnotice";
    }

    @RequestMapping("/message/queryAllmessage")
    public String queryAllmessage(Model model){
        List<MessageInfo> messageInfos=messageInfoService.queryAllMessage();
        model.addAttribute("messages",messageInfos);
        return "back/message/queryAllmessage";
    }

    @RequestMapping("/message/deleteMessageById/{id}")
    public String deleteMessageById(@PathVariable("id")Integer id,Model model){
        boolean sucreply=messageInfoService.deleteReplyByMessageid(id);
        boolean sucdel=messageInfoService.deleteMessageById(id);
        model.addAttribute("sucdelete",sucdel);
        List<MessageInfo> messageInfos=messageInfoService.queryAllMessage();
        model.addAttribute("messages",messageInfos);
        return "back/message/queryAllmessage";
    }

    @RequestMapping("/message/toaddreplyByMessageid/{id}")
    public String toaddreplyByMessageid(@PathVariable("id")Integer id,Model model){
        List<MessageReply> messageReplyList=messageInfoService.queryReplyById(id);
        model.addAttribute("replyies",messageReplyList);
        model.addAttribute("messageid",id);
        return "back/message/addreplyByMessageid";
    }

    @RequestMapping("/message/addreplyByMessageid")
    public String addreplyByMessageid(@RequestParam("messageid")Integer messageid,MessageReply messageReply,Model model){
        boolean sucmes=messageInfoService.addmessagereply(messageReply);
        model.addAttribute("sucmes",sucmes);
        List<MessageReply> messageReplyList=messageInfoService.queryReplyById(messageid);
        model.addAttribute("replyies",messageReplyList);
        return "back/message/addreplyByMessageid";
    }

    @RequestMapping("/message/deleteReplyById/{id}/{messageid}")
    public String deleteReplyById(@PathVariable("id")Integer id,@PathVariable("messageid")Integer messageid, Model model){
        boolean sucdel=messageInfoService.deleteReplyById(id);
        model.addAttribute("sucdelete",sucdel);
        List<MessageReply> messageReplyList=messageInfoService.queryReplyById(messageid);
        model.addAttribute("replyies",messageReplyList);
        return "back/message/addreplyByMessageid";
    }

    @RequestMapping("/fault/queryAllfault")
    public String queryAllfault(Model model){
        List<FaultInfo> faultInfos=faultService.queryAllfault();
        model.addAttribute("faults",faultInfos);
        return "back/fault/queryAllfault";
    }

    @RequestMapping("/fault/updateFaultstate/{id}")
    public String updateFaultstate(@PathVariable("id")Integer id,Model model){
        boolean sucupdate=faultService.updateFaultstate(id);
        model.addAttribute("sucupdate",sucupdate);
        List<FaultInfo> faultInfos=faultService.queryAllfault();
        model.addAttribute("faults",faultInfos);
        return "back/fault/queryAllfault";
    }
}
