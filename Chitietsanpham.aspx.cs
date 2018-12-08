using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    CLASS x = new CLASS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Session["quyen"]!=null)
            {
                if(Session["quyen"].ToString()=="1")
                Response.Redirect("~/AdminFood.aspx");
                else if (Session["quyen"].ToString() == "2")
                    Response.Redirect("~/AdminKH.aspx");
                else Response.Redirect("~/AdminAD.aspx");
            }
            if (Request.QueryString["msp"] != null)
            {
                int MaSP = int.Parse(Request.QueryString["msp"]);
                DataTable dt = new DataTable();
                dt = x.GetData("SELECT* FROM SANPHAM WHERE MASP=" + MaSP);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
    }
}