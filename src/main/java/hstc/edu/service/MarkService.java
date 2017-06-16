package hstc.edu.service;

import hstc.edu.po.MarkCustom;

import java.util.List;

/**
 * Created by win8 on 2016/12/2.
 */
public interface MarkService {
    //查询所有成绩
    List<MarkCustom> findMarkList();
    //根据学号查询成绩
    List<MarkCustom> findMarkListBySno(String sno);
    //插入成绩
    int addMark(MarkCustom markCustom);
    //根据sno,cno更新成绩
    MarkCustom findMarkBySno_Cno(MarkCustom markCustom);
    void updateMark(MarkCustom markCustom);

    List<MarkCustom> getMarkByPage(int startRow);

    void deleteMark(MarkCustom markCustom);
}
