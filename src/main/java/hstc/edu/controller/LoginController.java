package hstc.edu.controller;

import hstc.edu.po.Admin;
import hstc.edu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by win8 on 2016/11/26.
 */
@Controller
public class LoginController {
    //实现登录
    @Autowired
    LoginService loginService ;
    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    public String Login(Model model, @RequestParam("username") String username,
                        @RequestParam("password") String password)throws Exception {

//        if ("admin".equals(username)&& "123456".equals(password)) {
//            return new ModelAndView("login");//逻辑视图名       跳转页面默认为转发
//        }
//        return new ModelAndView("redirect:test.jsp");//以重定向的方式
//        System.out.println(username);
//        AdminCustom adminCustom = null;
//        adminCustom = loginService.findAdminList(username);
//        Admin admin = loginService.findAdminById(1);
//        if (admin != null){
//            return new ModelAndView("login");
//        }
//        return new ModelAndView("redirect:test.jsp");


        List<Admin> list = loginService.findAdmin(username.toString());
        Admin admin = null;
        for(int i =0;i<list.size();i++){
            admin =  list.get(i);
        }
        if (admin == null){
            String str = "用户名或者密码输入错误！";
            model.addAttribute("str",str);
            return "test";
        }

        String username_1 = admin.getUsername().toString();
        String password_1 = admin.getPassword().toString();

        if (username_1 != null){
             username_1 = admin.getUsername().toString();
             password_1 = admin.getPassword().toString();
            if (password_1.equals(password)){
                model.addAttribute("admin",admin);
                return "admin";
            }
            String str = "用户名或者密码输入错误！";
            model.addAttribute("str",str);
            return "test";
        }
        String str = "用户名或者密码输入错误！";
        model.addAttribute("str",str);
        return "test";
    }
    @RequestMapping("logout.action")
    public String logout(){
        return "redirect:index.jsp";
    }

}
