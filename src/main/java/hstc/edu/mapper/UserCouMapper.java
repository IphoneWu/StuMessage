package hstc.edu.mapper;

import hstc.edu.po.UserCou;
import hstc.edu.po.UserCouExample;
import hstc.edu.po.UserCouKey;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserCouMapper {
    int countByExample(UserCouExample example);

    int deleteByExample(UserCouExample example);

    int deleteByPrimaryKey(UserCouKey key);

    int insert(UserCou record);

    int insertSelective(UserCou record);

    List<UserCou> selectByExample(UserCouExample example);

    UserCou selectByPrimaryKey(UserCouKey key);

    int updateByExampleSelective(@Param("record") UserCou record, @Param("example") UserCouExample example);

    int updateByExample(@Param("record") UserCou record, @Param("example") UserCouExample example);

    int updateByPrimaryKeySelective(UserCou record);

    int updateByPrimaryKey(UserCou record);
}