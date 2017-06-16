package hstc.edu.service.impl;

import hstc.edu.mapper.UserCustomMapper;
import hstc.edu.mapper.UserMapper;
import hstc.edu.po.User;
import hstc.edu.po.UserExample;
import hstc.edu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by win8 on 2016/12/2.
 */
public class UserServiceimpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserCustomMapper userCustomMapper;

    UserExample userExample = new UserExample();
    UserExample.Criteria criteria = userExample.createCriteria();

    public List<User> findUserList() {
//        criteria.andIdIsNotNull();
//        userMapper.selectByExample(userExample);
        return userCustomMapper.findUserList();
    }

    public List<User> findUserListByIdcard(String idcard) {
        return userCustomMapper.findUserListByIdcard(idcard);
    }

    public boolean addUser(User user) {
        if (userCustomMapper.findUserByIdcard(user)!=null){
            return false;
        }
        else{
            userMapper.insert(user);
            return true;
        }
    }

    public User findUserById(Integer id) {

        return userMapper.selectByPrimaryKey(id);
    }

    public void updateUser(User user) {
        int i = userCustomMapper.updateUser(user);
    }

    public List<User> getUserByPage(int startRow) {
        return userCustomMapper.getUserByPage(startRow);
    }

    public void deleteUser(Integer id) {

        userMapper.deleteByPrimaryKey(id);
    }
}
