package hstc.edu.service.impl;

import hstc.edu.mapper.AdminMapper;
import hstc.edu.mapper.AdminMapperCustom;
import hstc.edu.mapper.StuMapper;
import hstc.edu.po.*;
import hstc.edu.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by win8 on 2016/11/26.
 */
@Service
public class LoginServiceimpl implements LoginService {

    @Autowired
    private AdminMapperCustom adminMapperCustom;

    @Autowired
    private AdminMapper adminMapper;

    @Autowired
    private StuMapper stuMapper;


    public Admin findAdminById(Integer id) throws Exception {
        return adminMapper.selectByPrimaryKey(id);
    }

    public AdminCustom findAdminByUsername(Admin admin) throws Exception {
        return adminMapperCustom.findAdminByUsername(admin);
    }

    public List<Admin> findAdmin(String username) {
        AdminExample adminExample = new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Admin> admins = adminMapper.selectByExample(adminExample);
        return admins;
    }

}
