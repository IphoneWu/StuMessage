package hstc.edu.mapper;

import hstc.edu.po.Course;

import java.util.List;

/**
 * Created by win8 on 2016/12/1.
 */
public interface CourseCustomMapper {
    public int updateCourse(Course course);

    List<Course> getCourseByPage(int startRow);

    Course findCourseByCno(String cno);
}
