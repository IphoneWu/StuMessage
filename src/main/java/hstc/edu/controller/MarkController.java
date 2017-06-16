package hstc.edu.controller;

import hstc.edu.po.MarkCustom;
import hstc.edu.service.MarkService;
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
public class MarkController {
    @Autowired
    MarkService markService;
    int pageSize = 12;
    @RequestMapping("/MarkList.action")
    public String MarkList(Model model, HttpSession httpSession, String page){
        List<MarkCustom> markCustoms = markService.findMarkList();
        //查到的记录总数发到stu.jsp
        model.addAttribute("markNum",markCustoms.size());
        //总页数
        int pageTimes;
        if (markCustoms.size()%pageSize == 0){
            pageTimes = markCustoms.size()/pageSize;
        }else {
            pageTimes = markCustoms.size()/pageSize+1;
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
        markCustoms = markService.getMarkByPage(startRow);
        model.addAttribute("currentPage",Integer.parseInt(page));

        model.addAttribute("markCustoms",markCustoms);
        return "Mark";
    }
    @RequestMapping("/MarkListBySno.action")
    public String MarkListBySno(Model model, String sno){
        List<MarkCustom> markCustoms = markService.findMarkListBySno(sno);
        model.addAttribute("markCustoms",markCustoms);
        return "Mark";
    }
    @RequestMapping("/gotoMarkaddjsp.action")
    public String gotoAdd(){
        return "redirect:Markadd.jsp";
    }
    @RequestMapping("/addMark.action")
    public String addMark(Model model, MarkCustom markCustom){
        int i = markService.addMark(markCustom);
        if (i==1){
            String stu_msg = "未创建该学生信息！";
            String cou_msg = "未创建该课程信息！";
            model.addAttribute("stu_msg",stu_msg);
            model.addAttribute("cou_msg",cou_msg);
            return "Markadd";
        }else if (i==2){
            String stu_msg = "未创建该学生信息！";
            model.addAttribute("stu_msg",stu_msg);
            return "Markadd";
        }else if (i==3){
            String cou_msg = "未创建该课程信息！";
            model.addAttribute("cou_msg",cou_msg);
            return "Markadd";
        }

        return "redirect:MarkList.action";
    }
    @RequestMapping("/findMarkBySno_Cno.action")
    public String findMarkBySno_Cno(Model model, MarkCustom markCustom){
        MarkCustom markCustom1 = markService.findMarkBySno_Cno(markCustom);
        model.addAttribute("markCustom1",markCustom1);
        return "Markedit";
    }
    @RequestMapping("/updateMark.action")
    public String updateMark(Model model, MarkCustom markCustom){
        markService.updateMark(markCustom);
        return "redirect:MarkList.action";
    }

    @RequestMapping("deleteMark.action")
    public String deleteMark(Model model, MarkCustom markCustom){
        markService.deleteMark(markCustom);
        return "redirect:MarkList.action";
    }
}
