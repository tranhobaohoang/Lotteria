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
            DataTable dt;
            if (Session["TenDN"] != null)
            {
                if (Session["quyen"] == null) Response.Redirect("~/Default.aspx");
                string tendn = Session["TenDN"].ToString();
                dt = x.GetData("SELECT QUYENADMIN FROM ADMIN WHERE TENDNADMIN='" + tendn + "'");
                string quyen = dt.Rows[0][0].ToString();
                if (quyen == "1")
                {
                    Response.Redirect("~/AdminFood.aspx");
                }
            }
            else Response.Redirect("~/AdminLogin.aspx");

            dt = x.GetData("SELECT* FROM KHACHHANG");
            gvGioHang.DataSource = dt;
            gvGioHang.DataBind();

            dt = x.GetData("SELECT* FROM DONDATHANG");
            GridView1.DataSource = dt;
            GridView1.DataBind();

            dt = x.GetData("SELECT* FROM CTDATHANG");
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
}