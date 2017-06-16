package hstc.edu.po;

/**
 * Created by win8 on 2016/11/30.
 */
public class StuQueryVo {
    private Stu stu;
    private StuCustom stuCustom;

    public StuCustom getStuCustom() {
        return stuCustom;
    }

    public void setStuCustom(StuCustom stuCustom) {
        this.stuCustom = stuCustom;
    }

    public Stu getStu() {
        return stu;
    }

    public void setStu(Stu stu) {
        this.stu = stu;
    }
}
