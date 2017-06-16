package hstc.edu.service;

import hstc.edu.po.Stu;
import hstc.edu.po.StuQueryVo;

import java.util.List;

/**
 * Created by win8 on 2016/11/30.
 */
public interface StuService {
    //查询所有学生信息
    public List<Stu> findStuList();

    //查询学生信息根据学号
    public  List<Stu> findStuListBySno(String sno);

    //添加学生信息
    public boolean addStu(Stu stu);

    //更新学生信息
    public Stu updateBySno(String sno);
    public void updateStu(StuQueryVo stuQueryVo);

    //分页
    public List<Stu> getStuByPage(int startRow);

    //删除
    public void deleteStuBySno(String sno);
}
