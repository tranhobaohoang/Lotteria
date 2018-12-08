using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UC_ucRight : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            lblLuotTruyCap.Text = Application["Luot_truy_cap"].ToString();
            lblOnline.Text = Application["So_nguoi_online"].ToString();
            if (Session["TenDN"] == null)
            {
                lbtDangNhap.NavigateUrl = "~/AdminLogin.aspx";
                lbtDangNhap.Visible = true;
                lbDN.Visible = true;
            }
            else
            {
                lbtDangNhap.NavigateUrl = "";
                lbtDangNhap.Visible = false;
                lbDN.Visible = false;
            }
        }
    }
}