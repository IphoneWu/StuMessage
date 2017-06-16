package hstc.edu.service;

import hstc.edu.po.User;

import java.util.List;

/**
 * Created by win8 on 2016/12/2.
 */
public interface UserService {
    //查询的到用户列表
    List<User> findUserList();
    //通过主键查询用户名
    List<User> findUserListByIdcard(String idcard);

    //添加用户信息
    boolean addUser(User user);

    //修改用户信息
    User findUserById(Integer id);

    void updateUser(User user);

    //分页
    List<User> getUserByPage(int startRow);

    //删除
    void deleteUser(Integer id);
}
