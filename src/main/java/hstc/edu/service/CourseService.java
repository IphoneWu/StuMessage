package hstc.edu.service;

import hstc.edu.po.Course;
import hstc.edu.po.CourseQueryVo;

import java.util.List;

/**
 * Created by win8 on 2016/11/30.
 */
public interface CourseService {
    //课程列表
    List<Course> findCoureseList();

    //根据cno查询课程列表
    List<Course>findCourseByCno(String cno);

    //添加课程
    boolean addCourse(Course course);

    //根据Cno修改课程
    Course CourseByCno(String cno);
    void UpdateCourse(Course course, String cno);

    void  updateCourse(CourseQueryVo courseQueryVo);

    List<Course> getCourseByPage(int startRow);

    //删除记录
    void deleteCourse(String cno);
}
