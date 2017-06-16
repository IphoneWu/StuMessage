package hstc.edu.mapper;

import hstc.edu.po.Stu;

import java.util.List;

/**
 * Created by win8 on 2016/12/4.
 */
public interface StuCustomMapper {
    List<Stu> getStuByPage(int startRow);
    List<Stu> findStuList();
    List<Stu> findStuListBySno(String sno);

    Stu finStuBySno(String sno);
}
