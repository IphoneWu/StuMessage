package hstc.edu.service;

import hstc.edu.po.Admin;
import hstc.edu.po.AdminCustom;

import java.util.List;

/**
 * Created by win8 on 2016/11/26.
 */
public interface LoginService {
    public Admin findAdminById(Integer id) throws Exception;
    public AdminCustom findAdminByUsername(Admin admin) throws Exception;
    public List<Admin> findAdmin(String username) ;

}
