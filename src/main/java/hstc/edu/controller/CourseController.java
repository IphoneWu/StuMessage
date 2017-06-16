package hstc.edu.controller;

import hstc.edu.po.CouMsg;
import hstc.edu.po.Course;
import hstc.edu.po.CourseQueryVo;
import hstc.edu.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by win8 on 2016/11/30.
 */
@Controller
public class CourseController {
    @Autowired
    CourseService courseService;
    //每页显示的条数
    int pageSize = 12;

    @RequestMapping("/CourseList.action")
    public String CourseList(Model model, String page, HttpSession httpSession){
        List<Course> courseList = courseService.findCoureseList();
        model.addAttribute("courseNum",courseList.size());
        //总页数
        int pageTimes;
        if (courseList.size()%pageSize == 0){
            pageTimes = courseList.size()/pageSize;
        }else {
            pageTimes = courseList.size()/pageSize+1;
        }
        httpSession.setAttribute("pageTimes",pageTimes);
        if(page == null)
        {
            page = "1";
        }

        //每页开始的第几条记录
        int startRow = (Integer.parseInt(page)-1) * pageSize;
        courseList = courseService.getCourseByPage(startRow);
        model.addAttribute("currentPage",Integer.parseInt(page));

        model.addAttribute("courseList",courseList);
        return "Course";
    }

    @RequestMapping("/CourseListByCno.action")
    public String CourseListByCno(Model model, String cno){
        List<Course> courseList = courseService.findCourseByCno(cno);
        model.addAttribute("courseList",courseList);
        return "Course";
    }

    @RequestMapping("/CourseAdd.action")
    public String CourseAdd(Model model, Course course){
        CouMsg couMsg = new CouMsg();
        if(!courseService.addCourse(course)){
            couMsg.setCoucnomsg("该课程已被创建！");
            model.addAttribute("couMsg",couMsg);
            return "Courseadd";
        }
        return  "redirect:CourseList.action";
    }

    @RequestMapping("/CourseByCno.action")
    public String CourseBySno(Model model, String cno){
        Course course = courseService.CourseByCno(cno);
        model.addAttribute("course",course);
        return "Courseedit";
    }

    @RequestMapping("/UpdateCourse.action")
    public  String UpdateCourse(Model model, CourseQueryVo courseQueryVo){
        courseService.updateCourse(courseQueryVo);
        return "redirect:CourseList.action";
    }

    @RequestMapping("/deleteCourse.action")
    public String deleteCourse(Model model, String cno){
        courseService.deleteCourse(cno);
        return "redirect:CourseList.action";
    }
}
