package hstc.edu.po;

/**
 * Created by win8 on 2016/11/27.
 */
public class AdminQueryVo {
    private Admin admin;
    private AdminCustom adminCustom;

    public AdminCustom getAdminCustom() {
        return adminCustom;
    }

    public void setAdminCustom(AdminCustom adminCustom) {
        this.adminCustom = adminCustom;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }
}
