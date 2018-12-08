using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Doimatkhau : System.Web.UI.Page
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["quyen"] != null)
            {
                if (Session["quyen"].ToString() == "1")
                    Response.Redirect("~/AdminFood.aspx");
                else if (Session["quyen"].ToString() == "2")
                    Response.Redirect("~/AdminKH.aspx");
                else Response.Redirect("~/AdminAD.aspx");
            }
        }
    }

    protected void btDongY_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("SELECT TENDN FROM KHACHHANG WHERE TENDN='" + txtTenDN.Text + "' AND MATKHAU='"+txtMatKhauCu.Text+"'");
           
                if (dt.Rows.Count > 0)
                {
                    x.Excute("UPDATE KHACHHANG SET MATKHAU='" + txtMatKhauMoi.Text + "'WHERE TENDN='" + txtTenDN.Text + "'");
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