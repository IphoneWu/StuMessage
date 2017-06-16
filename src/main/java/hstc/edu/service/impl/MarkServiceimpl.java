package hstc.edu.service.impl;

import hstc.edu.mapper.*;
import hstc.edu.po.*;
import hstc.edu.service.MarkService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by win8 on 2016/12/2.
 */
public class MarkServiceimpl implements MarkService {
    @Autowired
    UserCouMapper userCouMapper;
    @Autowired
    MarkCustomMapper markCustomMapper;
    @Autowired
    StuMapper stuMapper;
    @Autowired
    CourseMapper courseMapper;
    public List<MarkCustom> findMarkList() {

        return markCustomMapper.findMarkList();
    }

    public List<MarkCustom> findMarkListBySno(String sno) {
        return markCustomMapper.findMarkListBySno(sno);
    }

    public int addMark(MarkCustom markCustom) {

        Stu stu = stuMapper.selectByPrimaryKey(markCustom.getSno());
        Course course = courseMapper.selectByPrimaryKey(markCustom.getCno());
        if (stu==null&&course==null)
        {
            return 1;
        }else if (stu==null){
            return 2;
        }else if (course == null){
            return 3;
        }else {
            markCustomMapper.addMark(markCustom);
            return 0;
        }




//        if ((stuCustomMapper.finStuBySno(markCustom.getSno()).equals(null)||courseCustomMapper.findCourseByCno(markCustom.getCno()).equals(null)))
//        {
//            if (stuCustomMapper.finStuBySno(markCustom.getSno()).equals(null)) {
//                stuMsg.setSnomsg("未创建该学生！");
//                sno_cnoMsgs.setStuMsg(stuMsg);
//
//            } else if (courseCustomMapper.findCourseByCno(markCustom.getCno()).equals(null)) {
//                couMsg.setCoucnomsg("未创建该课程！");
//                sno_cnoMsgs.setCouMsg(couMsg);
//            }
//            return sno_cnoMsgs;
//        }
//        else{
//            markCustomMapper.addMark(markCustom);
//            return sno_cnoMsgs;
//        }
//        markCustomMapper.addMark(markCustom);
    }

    public MarkCustom findMarkBySno_Cno(MarkCustom markCustom) {
        return markCustomMapper.findMarkBySno_Cno(markCustom);
    }

    public void updateMark(MarkCustom markCustom) {
        markCustomMapper.updateMark(markCustom);
    }

    public List<MarkCustom> getMarkByPage(int startRow) {
        return markCustomMapper.getMarkByPage(startRow);
    }

    public void deleteMark(MarkCustom markCustom) {
        markCustomMapper.deleteMark(markCustom);
    }
}
