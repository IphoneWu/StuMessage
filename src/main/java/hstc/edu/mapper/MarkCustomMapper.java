package hstc.edu.mapper;

import hstc.edu.po.MarkCustom;

import java.util.List;

/**
 * Created by win8 on 2016/12/2.
 */
public interface MarkCustomMapper {
    List<MarkCustom> findMarkList();

    List<MarkCustom> findMarkListBySno(String sno);

    void addMark(MarkCustom markCustom);

    MarkCustom findMarkBySno_Cno(MarkCustom markCustom);

    void  updateMark(MarkCustom markCustom);

    List<MarkCustom> getMarkByPage(int startRow);

    void deleteMark(MarkCustom markCustom);
}
