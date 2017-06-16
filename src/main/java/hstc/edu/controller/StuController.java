package hstc.edu.controller;

import hstc.edu.msg.StuMsg;
import hstc.edu.po.Stu;
import hstc.edu.po.StuQueryVo;
import hstc.edu.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by win8 on 2016/11/30.
 */
@Controller
public class StuController {
    @Autowired
    StuService stuService;
    //每页显示的条数
    int pageSize = 12;

    //查询学生所有信息
    @RequestMapping("/stuList.action")
    public ModelAndView StuList(Model model, String page, HttpSession httpSession) throws  Exception{
        List<Stu> stuList = stuService.findStuList();
        //查到的记录总数发到stu.jsp
        model.addAttribute("stuNum",stuList.size());
        //总页数
        int pageTimes;
        if (stuList.size()%pageSize == 0){
            pageTimes = stuList.size()/pageSize;
        }else {
            pageTimes = stuList.size()/pageSize+1;
        }
        httpSession.setAttribute("pageTimes",pageTimes);
//        model.addAttribute("pageTimes",pageTimes);
        //页面初始的时候page没有值
        if(page == null)
        {
            page = "1";
        }

        //每页开始的第几条记录
        int startRow = (Integer.parseInt(page)-1) * pageSize;
        stuList = stuService.getStuByPage(startRow);
        model.addAttribute("currentPage",Integer.parseInt(page));

        //传stulist
        model.addAttribute("stuList",stuList);
        return new ModelAndView("Stu");
    }
    //按学号查询
    @RequestMapping("/stuBySno.action")
    public ModelAndView StuListBySno(Model model, String sno){
        List<Stu> stuList = stuService.findStuListBySno(sno);
        model.addAttribute("stuList",stuList);
        return new ModelAndView("Stu");
    }
    //插入学生信息
    @RequestMapping("/stuAdd.action")
    public String StuAdd(Stu stu,Model model){
        StuMsg stuMsg = new StuMsg();
         if(!stuService.addStu(stu)){
             stuMsg.setSnomsg("该学号已被注册！");
             model.addAttribute("stuMsg",stuMsg);
             return "Stuadd";
         }
        return "redirect:stuList.action";
    }

    //修改根据学号学生信息
    @RequestMapping("/stuEditSno.action")
    public String stuEditSno(Model model, String sno)
    {
        Stu stu = stuService.updateBySno(sno);
        model.addAttribute("stu",stu);
        return "Stuedit";
    }
    @RequestMapping("/stuEdit.action")
    public String StuEdit(Model model, StuQueryVo stuQueryVo){
        stuService.updateStu(stuQueryVo);
        return "redirect:stuList.action";
    }

    @RequestMapping("/deleStuBySno.action")
    public String deleStuBySno(Model model, String sno){
        stuService.deleteStuBySno(sno);
        return "redirect:stuList.action";
    }
}
