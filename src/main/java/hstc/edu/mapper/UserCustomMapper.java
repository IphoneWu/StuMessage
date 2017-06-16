package hstc.edu.mapper;

import hstc.edu.po.User;

import java.util.List;

/**
 * Created by win8 on 2016/12/9.
 */
public interface UserCustomMapper {
    List<User> getUserByPage(int startRow);
    int updateUser(User user);
    List<User> findUserList();
    List<User>findUserListByIdcard(String idcard);

    User findUserByIdcard(User user);
}
