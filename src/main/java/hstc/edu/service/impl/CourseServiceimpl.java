package hstc.edu.service.impl;

import hstc.edu.mapper.CourseCustomMapper;
import hstc.edu.mapper.CourseMapper;
import hstc.edu.po.Course;
import hstc.edu.po.CourseCustom;
import hstc.edu.po.CourseExample;
import hstc.edu.po.CourseQueryVo;
import hstc.edu.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by win8 on 2016/11/30.
 */
public class CourseServiceimpl implements CourseService {
    @Autowired
    CourseMapper courseMapper;
    @Autowired
    CourseCustomMapper courseCustomMapper;
    //查询
    public List<Course> findCoureseList() {
        CourseExample courseExample = new CourseExample();
        CourseExample.Criteria criteria = courseExample.createCriteria();
        criteria.andCnoIsNotNull();
        List<Course> courseList = courseMapper.selectByExample(courseExample);
        return courseList;
    }

    public List<Course> findCourseByCno(String cno) {
        CourseExample courseExample = new CourseExample();
        CourseExample.Criteria criteria = courseExample.createCriteria();
        criteria.andCnoEqualTo(cno);
        List<Course> courseList = courseMapper.selectByExample(courseExample);
        return courseList;
    }

    public boolean addCourse(Course course) {
        if(courseMapper.selectByPrimaryKey(course.getCno())!=null)
        {
            return false;
        }
       else {
            courseMapper.insert(course);
            return true;
        }
    }

    public Course CourseByCno(String cno) {
        Course course = courseMapper.selectByPrimaryKey(cno);
        return course;
    }

    public void UpdateCourse(Course course, String cno) {
        course.setCno(cno);
//        CourseExample courseExample = new CourseExample();
//        CourseExample.Criteria criteria = courseExample.createCriteria();
//        criteria.andCnoEqualTo(cno);
        int i = courseMapper.updateByPrimaryKeySelective(course);

    }

    public void updateCourse(CourseQueryVo courseQueryVo) {
        CourseCustom courseCustom = courseQueryVo.getCourseCustom();
        String cno = courseQueryVo.getCourse().getCno();
        CourseExample courseExample = new CourseExample();
        CourseExample.Criteria criteria = courseExample.createCriteria();
        criteria.andCnoEqualTo(cno);
        int i = courseMapper.updateByExample(courseCustom,courseExample);
    }

    public List<Course> getCourseByPage(int startRow) {
        return courseCustomMapper.getCourseByPage(startRow);
    }

    public void deleteCourse(String cno) {
        courseMapper.deleteByPrimaryKey(cno);
    }


}
