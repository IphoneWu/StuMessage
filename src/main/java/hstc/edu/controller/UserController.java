package hstc.edu.controller;

import hstc.edu.po.User;
import hstc.edu.po.UserMsg;
import hstc.edu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by win8 on 2016/12/2.
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;

    int pageSize = 12;
    @RequestMapping("/UserList.action")
    public String UserList(Model model, String page, HttpSession httpSession){
        List<User> userList = userService.findUserList();
        model.addAttribute("userNum",userList.size());
        //总页数
        int pageTimes;
        if (userList.size()%pageSize == 0){
            pageTimes = userList.size()/pageSize;
        }else {
            pageTimes = userList.size()/pageSize+1;
        }
        httpSession.setAttribute("pageTimes",pageTimes);
        if(page == null)
        {
            page = "1";
        }
        //每页开始的第几条记录
        int startRow = (Integer.parseInt(page)-1) * pageSize;
        userList = userService.getUserByPage(startRow);
        model.addAttribute("currentPage",Integer.parseInt(page));
        model.addAttribute("userList",userList);
        return "User";
    }

    @RequestMapping("/UserListByUsername.action")
    public  String UserListById(Model model, String idcard){
        List<User> userList = userService.findUserListByIdcard(idcard);
        model.addAttribute("userList",userList);
        return "User";
    }
    @RequestMapping("/gotoAdd.action")
    public String gotoAdd(){
        return "redirect:Useradd.jsp";
    }
    @RequestMapping("/UserAdd.action")
    public String UserAdd(Model model, User user){
        UserMsg userMsg = new UserMsg();
        if (!userService.addUser(user))
        {
            userMsg.setUsernameMsg("该用户名已经被创建！");
            model.addAttribute("userMsg",userMsg);
            return "Useradd";
        }
        return "redirect:UserList.action";
    }

    @RequestMapping("/UserById.action")
    public  String UserById(Model model, Integer id){
        User user = userService.findUserById(id);
        model.addAttribute("user",user);
        return "Useredit";
    }
    @RequestMapping("/UpdateUser.action")
    public String UpdateUser(Model model, User user){
        userService.updateUser(user);
        return "redirect:UserList.action";
    }

    @RequestMapping("deleteUser.action")
    public String deleteUser(Integer id)
    {
        userService.deleteUser(id);
        return "redirect:UserList.action";
    }
    @RequestMapping("regist.action")
    public String regist(User user,Model model){
        UserMsg userMsg = new UserMsg();
        if (!userService.addUser(user))
        {
            userMsg.setUsernameMsg("该用户名已经被创建！");
            model.addAttribute("userMsg",userMsg);
            return "regist";
        }
        return "success";
    }
}
