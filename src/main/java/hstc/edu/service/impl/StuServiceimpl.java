package hstc.edu.service.impl;

import hstc.edu.mapper.StuCustomMapper;
import hstc.edu.mapper.StuMapper;
import hstc.edu.po.*;
import hstc.edu.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by win8 on 2016/11/30.
 */
public class StuServiceimpl implements StuService {
    @Autowired
    private StuMapper stuMapper;

    StuExample stuExample = new StuExample();
    StuExample.Criteria criteria = stuExample.createCriteria();
    @Autowired
    private StuCustomMapper stuCustomMapper;
    //查询学生信息列表
    public List<Stu> findStuList() {
//        criteria.andSnoIsNotNull();
//        List<Stu> stuList =  stuMapper.selectByExample(stuExample);
         List<Stu> stuList = stuCustomMapper.findStuList();
        return stuList;
    }

    public List<Stu> findStuListBySno(String sno) {
        List<Stu> stuList =  stuCustomMapper.findStuListBySno(sno);
        return stuList;

}
    public boolean addStu(Stu stu) {
        Stu stu1 = stuMapper.selectByPrimaryKey(stu.getSno());
        if (stu1 != null){
            return false;
        }else {
            stuMapper.insert(stu);
            return true;
        }

    }

    public Stu updateBySno(String sno) {
        Stu stu = stuMapper.selectByPrimaryKey(sno);
        return stu;
    }

    public void updateStu(StuQueryVo stuQueryVo) {
        StuCustom stuCustom = stuQueryVo.getStuCustom();
        String sno = stuQueryVo.getStu().getSno();
        criteria.andSnoEqualTo(sno);
        int i = stuMapper.updateByExample(stuCustom,stuExample);
    }

    public List<Stu> getStuByPage(int startRow) {

         return  stuCustomMapper.getStuByPage(startRow);
    }

    public void deleteStuBySno(String sno) {
        stuMapper.deleteByPrimaryKey(sno);
    }
}
