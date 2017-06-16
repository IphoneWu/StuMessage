package hstc.edu.mapper;

import hstc.edu.po.Admin;
import hstc.edu.po.AdminCustom;

/**
 * Created by win8 on 2016/11/27.
 */
public interface AdminMapperCustom {
    public AdminCustom findAdminByUsername(Admin admin)throws Exception;
}
