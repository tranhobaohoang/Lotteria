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

    protected void btDangNhap_Click(object sender, EventArgs e)
    {
        try
        {
            DataTable dt = x.GetData("SELECT* FROM ADMIN WHERE TENDNADMIN='" + txtTenDN.Text + "' AND MATKHAUADMIN='" + txtMatKhau.Text + "'");
            if (dt.Rows.Count > 0)
            {
                Session["TenDN"] = txtTenDN.Text;
                Session["quyen"] = dt.Rows[0][9].ToString();
                if (Session["quyen"].ToString()=="1")
                Response.Redirect("~/AdminFood.aspx");
                else if (Session["quyen"].ToString() == "2")
                    Response.Redirect("~/AdminKH.aspx");
                else Response.Redirect("~/AdminAD.aspx");
            }
            else lbThongBaoLoi.Text = "Tên đăng nhập hoặc mật khẩu không hợp lệ!";
        }
        catch
        {
            lbThongBaoLoi.Text = "Thất bại!";
        }


    }
}