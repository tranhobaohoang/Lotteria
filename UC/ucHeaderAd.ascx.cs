using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UC_ucHeader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Session["TenDN"]!=null)
            {
                lbTenDN.Visible = true;
                lbBeforeTenDN.Visible = true;
                lbTenDN.Text = Session["TenDN"].ToString();
                lbtDangXuat.Visible = true;
                lbDX.Visible = true;
            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbBeforeTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                lbDX.Visible = false;
            }
        }
    }
    
    protected void lbtDangXuat_Click(object sender, EventArgs e)
    {
        Session["TenDN"] = null;
        Session["quyen"] = null;
        Response.Redirect("~/AdminLogin.aspx");
        
    }
}