using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminLogin : System.Web.UI.Page
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["TenDN"] != null && Session["quyen"] == null) Response.Redirect("~/Default.aspx");
        }
            txtTenDN.Focus();
    }


    protected void btDongY_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("SELECT TENDNADMIN FROM ADMIN WHERE TENDNADMIN='" + txtTenDN.Text + "' AND MATKHAUADMIN='" + txtMatKhauCu.Text + "'");

            if (dt.Rows.Count > 0)
            {
                x.Excute("UPDATE ADMIN SET MATKHAUADMIN='" + txtMatKhauMoi.Text + "'WHERE TENDNADMIN='" + txtTenDN.Text + "'");
                lbThongBaoLoi.Text = "Đổi mật khẩu thành công";
            }
            else lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu cũ không hợp lệ!";
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }
    }
}