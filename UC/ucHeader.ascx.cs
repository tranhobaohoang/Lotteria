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
                hlDangNhap.Visible = false;
                hlDangKy.Visible = false;
                lbTenDN.Visible = true;
                lbBeforeTenDN.Visible = true;
                lbTenDN.Text = Session["TenDN"].ToString();
                lbtDangXuat.Visible = true;
                lbDK.Visible = false;
                lbDN.Visible = false;
                lbDX.Visible = true;
            }
            else
            {
                lbTenDN.Text = "";
                lbTenDN.Visible = false;
                lbBeforeTenDN.Visible = false;
                lbtDangXuat.Visible = false;
                hlDangNhap.Visible = true;
                hlDangKy.Visible = true;
                lbDK.Visible = true;
                lbDN.Visible = true;
                lbDX.Visible = false;
            }
        }
        if (Session["Giohang"]!=null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Giohang"];
            System.Int32 tongSL = 0;
            foreach (DataRow r in dt.Rows)
            {
                tongSL += Convert.ToInt32(r["SoLuong"]);
                lbTongSL.Text = "("+tongSL.ToString()+")";
            }
        }
    }
    
    protected void lbtDangXuat_Click(object sender, EventArgs e)
    {
        Session["TenDN"] = null;
        Response.Redirect("~/Default.aspx");
    }
}